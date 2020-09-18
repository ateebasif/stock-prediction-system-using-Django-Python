import numpy as np
import pandas as pd
import matplotlib.pyplot as plt# Load the dataset using pandas
from fbprophet import Prophet
import matplotlib
matplotlib.use('Agg')

def prophet(path):
    data = pd.read_csv(path)

    # Select only the important features i.e. the date and price
    data = data[["Date","Close"]] # select Date and Price# Rename the features: These names are NEEDED for the model fitting
    data = data.rename(columns = {"Date":"ds","Close":"y"}) #renaming the columns of the datasetdata.head(5)



    m = Prophet(daily_seasonality = True) # the Prophet class (model)
    m.fit(data) # fit the model using all data

    future = m.make_future_dataframe(periods=365) #we need to specify the number of days in future
    prediction = m.predict(future)  # prediction contains the values
    m.plot(prediction)

    # exporting into csv
    # df = pd.DataFrame(prediction, columns = ['ds','yhat'])
    # df.to_csv('~/Desktop/stock_prediction/prediction_dj1.csv')

    print(prediction.tail())

    plt.title("Prediction of Price using the Prophet")
    plt.xlabel("Date")
    plt.ylabel("Close Stock Price")

    graph_path = 'prophet.png'
    plt.savefig(graph_path)
    plt.close()
    return graph_path

