�	���v�e@���v�e@!���v�e@	$�J�?$�J�?!$�J�?"g
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails&0���v�e@�B��Uc@AЙ����4@Y�Q���?*	����'o@2j
3Iterator::Model::ParallelMap::Zip[1]::ForeverRepeat�rK�!q�?!�蕠�^B@)B?S�[�?1^C�_�@A@:Preprocessing2F
Iterator::Model�&�%��?!��,�B@)RcB�%U�?1�K�k5@:Preprocessing2S
Iterator::Model::ParallelMap���~���?!(jy�90@)���~���?1(jy�90@:Preprocessing2t
=Iterator::Model::ParallelMap::Zip[0]::FlatMap[0]::Concatenate����!9�?!��[�0�*@)� �X4��?1����4'@:Preprocessing2X
!Iterator::Model::ParallelMap::Zip�O@���?!�LC�>O@)���{�?1��	��(@:Preprocessing2�
NIterator::Model::ParallelMap::Zip[0]::FlatMap[15]::Concatenate[0]::TensorSlice;5�ux?!��a�L*@);5�ux?1��a�L*@:Preprocessing2d
-Iterator::Model::ParallelMap::Zip[0]::FlatMap� l@��?!NV��663@)s�,&6w?1�ۨ�m@:Preprocessing2v
?Iterator::Model::ParallelMap::Zip[1]::ForeverRepeat::FromTensor.8��_�v?!hT���@).8��_�v?1hT���@:Preprocessing2�
MIterator::Model::ParallelMap::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice_���:Ts?!�x��K�?)_���:Ts?1�x��K�?:Preprocessing2u
>Iterator::Model::ParallelMap::Zip[0]::FlatMap[15]::Concatenate"��u���?!��Ju��@)���i�e?1�Kҕo��?:Preprocessing:�
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
�Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
�Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
�Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
�Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)�
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis�
device�Your program is NOT input-bound because only 0.1% of the total step time sampled is waiting for input. Therefore, you should focus on reducing other time.no*high2B88.1 % of the total step time sampled is spent on All Others time.#You may skip the rest of this page.B�
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown�
	�B��Uc@�B��Uc@!�B��Uc@      ��!       "      ��!       *      ��!       2	Й����4@Й����4@!Й����4@:      ��!       B      ��!       J	�Q���?�Q���?!�Q���?R      ��!       Z	�Q���?�Q���?!�Q���?JCPU_ONLY2black"�
device�Your program is NOT input-bound because only 0.1% of the total step time sampled is waiting for input. Therefore, you should focus on reducing other time.b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"T
Rtensorflow_stats (identify the time-consuming operations executed on the CPU_ONLY)"Z
Xtrace_viewer (look at the activities on the timeline of each CPU_ONLY in the trace view)*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2�
=type.googleapis.com/tensorflow.profiler.GenericRecommendationN
nohigh"B88.1 % of the total step time sampled is spent on All Others time.:
Refer to the TF2 Profiler FAQ2"CPU: 