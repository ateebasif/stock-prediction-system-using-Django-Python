�	:� U\Z@:� U\Z@!:� U\Z@	i����?i����?!i����?"g
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails&:� U\Z@�8�Z6X@A�'eR� @Y#��]��?*	1�Z�k@2F
Iterator::Model��X�v�?!�c@�S J@)RH2�w��?1�a6�BC@:Preprocessing2j
3Iterator::Model::ParallelMap::Zip[1]::ForeverRepeat�j��� �?!�����8@)�5Y���?1� �׺6@:Preprocessing2S
Iterator::Model::ParallelMap�V����?!e(d�v+@)�V����?1e(d�v+@:Preprocessing2t
=Iterator::Model::ParallelMap::Zip[0]::FlatMap[0]::Concatenate"9��U�?!
�۱��0@)�H�]ۛ?1/�Q��(@:Preprocessing2X
!Iterator::Model::ParallelMap::Zip���[�?!f��G��G@)l��F���?1�VrS�@:Preprocessing2�
MIterator::Model::ParallelMap::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice
��ϛ��?!�)�#�6@)
��ϛ��?1�)�#�6@:Preprocessing2v
?Iterator::Model::ParallelMap::Zip[1]::ForeverRepeat::FromTensore�I)��r?!��u � @)e�I)��r?1��u � @:Preprocessing2d
-Iterator::Model::ParallelMap::Zip[0]::FlatMap��唀��?!C!k
LC2@)��ĭ�h?1�������?:Preprocessing:�
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
�Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
�Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
�Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
�Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)�
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis�
device�Your program is NOT input-bound because only 0.2% of the total step time sampled is waiting for input. Therefore, you should focus on reducing other time.no*high2B91.9 % of the total step time sampled is spent on All Others time.#You may skip the rest of this page.B�
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown�
	�8�Z6X@�8�Z6X@!�8�Z6X@      ��!       "      ��!       *      ��!       2	�'eR� @�'eR� @!�'eR� @:      ��!       B      ��!       J	#��]��?#��]��?!#��]��?R      ��!       Z	#��]��?#��]��?!#��]��?JCPU_ONLY2black"�
device�Your program is NOT input-bound because only 0.2% of the total step time sampled is waiting for input. Therefore, you should focus on reducing other time.b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"T
Rtensorflow_stats (identify the time-consuming operations executed on the CPU_ONLY)"Z
Xtrace_viewer (look at the activities on the timeline of each CPU_ONLY in the trace view)*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2�
=type.googleapis.com/tensorflow.profiler.GenericRecommendationN
nohigh"B91.9 % of the total step time sampled is spent on All Others time.:
Refer to the TF2 Profiler FAQ2"CPU: 