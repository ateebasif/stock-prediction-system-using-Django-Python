�	,Ԛ��X@,Ԛ��X@!,Ԛ��X@	�HSK#��?�HSK#��?!�HSK#��?"g
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails&,Ԛ��X@#��2RnV@A|{נ/u"@YZe�����?*	��|?5�V@2F
Iterator::ModelM�:�/K�?!��w�r|D@)��Z�{c�?1�7�T[�9@:Preprocessing2j
3Iterator::Model::ParallelMap::Zip[1]::ForeverRepeatOqN`�?!��E#�<@)�^�����?1�����9@:Preprocessing2t
=Iterator::Model::ParallelMap::Zip[0]::FlatMap[0]::Concatenate[&��|�?![�ʃSC5@)��j+���?1X0��/l/@:Preprocessing2S
Iterator::Model::ParallelMap��5�e�?!�:�h'.@)��5�e�?1�:�h'.@:Preprocessing2X
!Iterator::Model::ParallelMap::Zip����˫?!kU�;��M@)U�q7�v?1D�Z��@:Preprocessing2�
MIterator::Model::ParallelMap::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice��6p�t?!��U!�4@)��6p�t?1��U!�4@:Preprocessing2d
-Iterator::Model::ParallelMap::Zip[0]::FlatMap��N#-��?!�G}L
9@)5�\��ul?1�����7@:Preprocessing2v
?Iterator::Model::ParallelMap::Zip[1]::ForeverRepeat::FromTensor�-���=f?!������@)�-���=f?1������@:Preprocessing:�
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
�Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
�Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
�Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
�Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)�
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis�
device�Your program is NOT input-bound because only 0.1% of the total step time sampled is waiting for input. Therefore, you should focus on reducing other time.no*high2B90.6 % of the total step time sampled is spent on All Others time.#You may skip the rest of this page.B�
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown�
	#��2RnV@#��2RnV@!#��2RnV@      ��!       "      ��!       *      ��!       2	|{נ/u"@|{נ/u"@!|{נ/u"@:      ��!       B      ��!       J	Ze�����?Ze�����?!Ze�����?R      ��!       Z	Ze�����?Ze�����?!Ze�����?JCPU_ONLY2black"�
device�Your program is NOT input-bound because only 0.1% of the total step time sampled is waiting for input. Therefore, you should focus on reducing other time.b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"T
Rtensorflow_stats (identify the time-consuming operations executed on the CPU_ONLY)"Z
Xtrace_viewer (look at the activities on the timeline of each CPU_ONLY in the trace view)*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2�
=type.googleapis.com/tensorflow.profiler.GenericRecommendationN
nohigh"B90.6 % of the total step time sampled is spent on All Others time.:
Refer to the TF2 Profiler FAQ2"CPU: 