�	�$�Ss@�$�Ss@!�$�Ss@	m���ե?m���ե?!m���ե?"g
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails&e�$�Ss@ȗP��q@A��ZӼ�1@Y-����?*	C�l����@2j
3Iterator::Model::ParallelMap::Zip[1]::ForeverRepeat��Ӻ�?!�f��<@)��%P�?1B柙;�:@:Preprocessing2S
Iterator::Model::ParallelMap��a�1�?!�3�b�2@)��a�1�?1�3�b�2@:Preprocessing2F
Iterator::Modelf�c]�F�?!��+@�dA@)�e3���?15QH�C�/@:Preprocessing2t
=Iterator::Model::ParallelMap::Zip[0]::FlatMap[0]::Concatenate�P��C��?!C� ��*@)(�쿲?1�!m�XG&@:Preprocessing2�
JIterator::Model::ParallelMap::Zip[0]::FlatMap::Prefetch::Map::FiniteRepeat��}�<�?!@ ���&@)o)狽�?1J����x"@:Preprocessing2X
!Iterator::Model::ParallelMap::Zip%�z�ۡ�?!\e|[�J@)b.��?1��n��@:Preprocessing2�
MIterator::Model::ParallelMap::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice��rf�B�?!z�0B}�@)��rf�B�?1z�0B}�@:Preprocessing2�
QIterator::Model::ParallelMap::Zip[0]::FlatMap::Prefetch::Map::FiniteRepeat::Range�&P�"��?!����Y�@)�&P�"��?1����Y�@:Preprocessing2d
-Iterator::Model::ParallelMap::Zip[0]::FlatMap���/�1�?!�(!7�=3@)��N�?1���I�?@:Preprocessing2v
?Iterator::Model::ParallelMap::Zip[1]::ForeverRepeat::FromTensor���ً?!*~Ecދ @)���ً?1*~Ecދ @:Preprocessing2�
MIterator::Model::ParallelMap::Zip[0]::FlatMap[7]::Concatenate[0]::TensorSlice��#��?!��뚻�?)��#��?1��뚻�?:Preprocessing2�
MIterator::Model::ParallelMap::Zip[0]::FlatMap[8]::Concatenate[0]::TensorSlice���	�}?!���ϼ�?)���	�}?1���ϼ�?:Preprocessing2t
=Iterator::Model::ParallelMap::Zip[0]::FlatMap[7]::ConcatenateR~R���?!Ѵ����?)����[r?1�]u@H��?:Preprocessing2t
=Iterator::Model::ParallelMap::Zip[0]::FlatMap[8]::Concatenate$����ۇ?!�9�ʒY�?)����q?1^��(�9�?:Preprocessing:�
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
�Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
�Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
�Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
�Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)�
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis�
device�Your program is NOT input-bound because only 0.0% of the total step time sampled is waiting for input. Therefore, you should focus on reducing other time.no*high2B94.1 % of the total step time sampled is spent on All Others time.#You may skip the rest of this page.B�
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown�
	ȗP��q@ȗP��q@!ȗP��q@      ��!       "      ��!       *      ��!       2	��ZӼ�1@��ZӼ�1@!��ZӼ�1@:      ��!       B      ��!       J	-����?-����?!-����?R      ��!       Z	-����?-����?!-����?JCPU_ONLY2black"�
device�Your program is NOT input-bound because only 0.0% of the total step time sampled is waiting for input. Therefore, you should focus on reducing other time.b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"T
Rtensorflow_stats (identify the time-consuming operations executed on the CPU_ONLY)"Z
Xtrace_viewer (look at the activities on the timeline of each CPU_ONLY in the trace view)*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2�
=type.googleapis.com/tensorflow.profiler.GenericRecommendationN
nohigh"B94.1 % of the total step time sampled is spent on All Others time.:
Refer to the TF2 Profiler FAQ2"CPU: 