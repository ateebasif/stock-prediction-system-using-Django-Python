�	�t�6T@�t�6T@!�t�6T@	���]�?���]�?!���]�?"g
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails&�t�6T@���zO�Q@AT��~�"@Y9�j�3�?*	�$���c@2F
Iterator::Model%��C��?!0��oD@)��mRѨ?1�u�� �>@:Preprocessing2j
3Iterator::Model::ParallelMap::Zip[1]::ForeverRepeat+�ƈD�?!i�̀r6?@)%���}��?1v��W=@:Preprocessing2t
=Iterator::Model::ParallelMap::Zip[0]::FlatMap[0]::Concatenate%xC8�?!aH7�6E5@)C9ѮB�?1��E'280@:Preprocessing2S
Iterator::Model::ParallelMap���zi��?!�q���n$@)���zi��?1�q���n$@:Preprocessing2�
MIterator::Model::ParallelMap::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlicedZ���Z�?!���4@)dZ���Z�?1���4@:Preprocessing2X
!Iterator::Model::ParallelMap::Zip噗��?!�h��C�M@)؛���{?1��).@:Preprocessing2d
-Iterator::Model::ParallelMap::Zip[0]::FlatMap�����'�?!Q��'��7@)o��m�n?1��[��"@:Preprocessing2v
?Iterator::Model::ParallelMap::Zip[1]::ForeverRepeat::FromTensore����`k?!�o��� @)e����`k?1�o��� @:Preprocessing:�
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
�Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
�Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
�Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
�Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)�
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis�
device�Your program is NOT input-bound because only 0.1% of the total step time sampled is waiting for input. Therefore, you should focus on reducing other time.no*high2B88.3 % of the total step time sampled is spent on All Others time.#You may skip the rest of this page.B�
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown�
	���zO�Q@���zO�Q@!���zO�Q@      ��!       "      ��!       *      ��!       2	T��~�"@T��~�"@!T��~�"@:      ��!       B      ��!       J	9�j�3�?9�j�3�?!9�j�3�?R      ��!       Z	9�j�3�?9�j�3�?!9�j�3�?JCPU_ONLY2black"�
device�Your program is NOT input-bound because only 0.1% of the total step time sampled is waiting for input. Therefore, you should focus on reducing other time.b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"T
Rtensorflow_stats (identify the time-consuming operations executed on the CPU_ONLY)"Z
Xtrace_viewer (look at the activities on the timeline of each CPU_ONLY in the trace view)*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2�
=type.googleapis.com/tensorflow.profiler.GenericRecommendationN
nohigh"B88.3 % of the total step time sampled is spent on All Others time.:
Refer to the TF2 Profiler FAQ2"CPU: 