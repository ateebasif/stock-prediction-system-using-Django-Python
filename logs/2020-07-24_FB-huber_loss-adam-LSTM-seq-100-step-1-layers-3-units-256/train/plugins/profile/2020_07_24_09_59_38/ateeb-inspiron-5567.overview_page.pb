�	�t�_��J@�t�_��J@!�t�_��J@	�J���P�?�J���P�?!�J���P�?"g
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails&�t�_��J@z�΅H@A�J�T@Ylv���/�?*	     HQ@2F
Iterator::Model��M+�@�?!W���^E@)zPP�V�?1Ţ���>@:Preprocessing2j
3Iterator::Model::ParallelMap::Zip[1]::ForeverRepeat�����*�?!����}<@)����o{�?1ӥ�T:@:Preprocessing2t
=Iterator::Model::ParallelMap::Zip[0]::FlatMap[0]::Concatenate�Y��ڊ�?!�A"�4�4@)ĕ�wF[�?1��+��+.@:Preprocessing2S
Iterator::Model::ParallelMapSv�A]��?!қ!�҂'@)Sv�A]��?1қ!�҂'@:Preprocessing2X
!Iterator::Model::ParallelMap::Zip_B�D�?!�G�Dx�L@)<��~Kq?1�d�\n@:Preprocessing2�
MIterator::Model::ParallelMap::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice߇��(_p?!uA1�!@)߇��(_p?1uA1�!@:Preprocessing2v
?Iterator::Model::ParallelMap::Zip[1]::ForeverRepeat::FromTensor�A�L��Z?!�w��	@)�A�L��Z?1�w��	@:Preprocessing2d
-Iterator::Model::ParallelMap::Zip[0]::FlatMap���v�
�?!�örͩ6@)${��!UT?1�HɊ��?:Preprocessing:�
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
�Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
�Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
�Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
�Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)�
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis�
device�Your program is NOT input-bound because only 0.1% of the total step time sampled is waiting for input. Therefore, you should focus on reducing other time.no*high2B89.5 % of the total step time sampled is spent on All Others time.#You may skip the rest of this page.B�
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown�
	z�΅H@z�΅H@!z�΅H@      ��!       "      ��!       *      ��!       2	�J�T@�J�T@!�J�T@:      ��!       B      ��!       J	lv���/�?lv���/�?!lv���/�?R      ��!       Z	lv���/�?lv���/�?!lv���/�?JCPU_ONLY2black"�
device�Your program is NOT input-bound because only 0.1% of the total step time sampled is waiting for input. Therefore, you should focus on reducing other time.b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"T
Rtensorflow_stats (identify the time-consuming operations executed on the CPU_ONLY)"Z
Xtrace_viewer (look at the activities on the timeline of each CPU_ONLY in the trace view)*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2�
=type.googleapis.com/tensorflow.profiler.GenericRecommendationN
nohigh"B89.5 % of the total step time sampled is spent on All Others time.:
Refer to the TF2 Profiler FAQ2"CPU: 