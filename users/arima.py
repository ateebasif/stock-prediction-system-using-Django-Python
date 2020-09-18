import warnings
import itertools
import numpy as np
import matplotlib.pyplot as plt
warnings.filterwarnings("ignore")
plt.style.use('fivethirtyeight')
import pandas as pd
import statsmodels.api as sm
import matplotlib
matplotlib.use('Agg')


def arima(path):
    
    stock = pd.read_csv(path)
    stock.Date = pd.to_datetime(stock.Date, format='%Y%m%d', errors='ignore')
    cols = ['High', 'Low', 'Open', 'Volume', 'Adj Close']
    stock.drop(cols, axis=1, inplace=True)
    stock = stock.sort_values('Date')
    stock = stock.groupby('Date')['Close'].sum().reset_index()
    stock = stock.set_index('Date')
    
    stock.index = pd.to_datetime(stock.index)

    monthly_mean = stock.Close.resample('M').mean()

    from pylab import rcParams
    rcParams['figure.figsize'] = 18, 8

    decomposition = sm.tsa.seasonal_decompose(monthly_mean, model='additive')

    p = d = q = range(0, 2)
    pdq = list(itertools.product(p, d, q))
    seasonal_pdq = [(x[0], x[1], x[2], 12) for x in list(itertools.product(p, d, q))]

    l_param = []
    l_param_seasonal = []
    l_results_aic = []
    for param in pdq:
        for param_seasonal in seasonal_pdq:
            try:
                mod = sm.tsa.statespace.SARIMAX(monthly_mean,
                                                order=param,
                                                seasonal_order=param_seasonal,
                                                enforce_stationarity=False,
                                                enforce_invertibility=False)

                results = mod.fit()

                print('ARIMA{}x{}12 - AIC:{}'.format(param, param_seasonal, results.aic))

                l_param.append(param)
                l_param_seasonal.append(param_seasonal)
                l_results_aic.append(results.aic)
            except:
                continue

    minimum=l_results_aic[0]
    for i in l_results_aic[1:]:
        if i < minimum:
            minimum = i
    i=l_results_aic.index(minimum)

    mod = sm.tsa.statespace.SARIMAX(monthly_mean,
                                    order=l_param[i],
                                    seasonal_order=l_param_seasonal[i],
                                    enforce_stationarity=False,
                                    enforce_invertibility=False)

    results = mod.fit()

    pred = results.get_prediction(start=pd.to_datetime('2017-12-31'), dynamic=False)
    pred_ci = pred.conf_int()

    y_forecasted = pred.predicted_mean
    y_truth = monthly_mean['2017-12-31':]

    # Compute the mean square error
    mse = ((y_forecasted - y_truth) ** 2).mean()
    print('The Mean Squared Error of our forecasts is {}'.format(round(mse, 2)))

    print('The Root Mean Squared Error of our forecasts is {}'.format(round(np.sqrt(mse), 2)))

# Change Number of Steps to Change Months
    pred_uc = results.get_forecast(steps=10)
    pred_ci = pred_uc.conf_int()   # pred_ci contains the prediction values in form of dataframe

    print("printing results\n",pred_ci)
    # to export into csv file
    # pred_ci.to_csv('~/Desktop/stock_prediction/Arima_prediction_dj1.csv')

    ax = monthly_mean.plot(label='observed', figsize=(14, 7))
    pred_uc.predicted_mean.plot(ax=ax, label='Forecast')
    ax.fill_between(pred_ci.index,
                    pred_ci.iloc[:, 0],
                    pred_ci.iloc[:, 1], color='k', alpha=.25)
    ax.set_xlabel('Date')
    ax.set_ylabel('close price')

    plt.legend()
    graph_path='arima.png'
    plt.savefig(graph_path)
    plt.close()
    # plt.show()
    return graph_path
