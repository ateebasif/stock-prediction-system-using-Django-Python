�	���jJ@���jJ@!���jJ@	�&�0��?�&�0��?!�&�0��?"g
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails&���jJ@H�9��dG@AK�b�@Y,��E|'�?*	H�z�K`@2S
Iterator::Model::ParallelMap�H.�!��?!����rL@)�H.�!��?1����rL@:Preprocessing2F
Iterator::ModelD� ���?!4?�}١Q@)nQf�L2�?1���C+@:Preprocessing2j
3Iterator::Model::ParallelMap::Zip[1]::ForeverRepeat��b�D�?!���[��,@)��k��?1�[R���*@:Preprocessing2t
=Iterator::Model::ParallelMap::Zip[0]::FlatMap[0]::Concatenate�����?!E�d�J&$@)C�(^em�?1 �� @:Preprocessing2X
!Iterator::Model::ParallelMap::Zip�NGɫ�?!1��x=@)+����s?1�M�N�@:Preprocessing2�
MIterator::Model::ParallelMap::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice$Di�m?!� ���b@)$Di�m?1� ���b@:Preprocessing2d
-Iterator::Model::ParallelMap::Zip[0]::FlatMapl�<*�?!Au�ᷘ&@)�_�5�!Z?1��,h��?:Preprocessing2v
?Iterator::Model::ParallelMap::Zip[1]::ForeverRepeat::FromTensor�T�:�U?!����O�?)�T�:�U?1����O�?:Preprocessing:�
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
�Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
�Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
�Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
�Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)�
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis�
device�Your program is NOT input-bound because only 0.2% of the total step time sampled is waiting for input. Therefore, you should focus on reducing other time.no*high2B88.6 % of the total step time sampled is spent on All Others time.#You may skip the rest of this page.B�
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown�
	H�9��dG@H�9��dG@!H�9��dG@      ��!       "      ��!       *      ��!       2	K�b�@K�b�@!K�b�@:      ��!       B      ��!       J	,��E|'�?,��E|'�?!,��E|'�?R      ��!       Z	,��E|'�?,��E|'�?!,��E|'�?JCPU_ONLY2black"�
device�Your program is NOT input-bound because only 0.2% of the total step time sampled is waiting for input. Therefore, you should focus on reducing other time.b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"T
Rtensorflow_stats (identify the time-consuming operations executed on the CPU_ONLY)"Z
Xtrace_viewer (look at the activities on the timeline of each CPU_ONLY in the trace view)*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2�
=type.googleapis.com/tensorflow.profiler.GenericRecommendationN
nohigh"B88.6 % of the total step time sampled is spent on All Others time.:
Refer to the TF2 Profiler FAQ2"CPU: 