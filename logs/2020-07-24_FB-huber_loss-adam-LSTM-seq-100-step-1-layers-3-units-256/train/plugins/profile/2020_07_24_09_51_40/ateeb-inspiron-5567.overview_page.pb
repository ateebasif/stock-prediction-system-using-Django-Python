�	4GV~P@4GV~P@!4GV~P@	S{/��F�?S{/��F�?!S{/��F�?"g
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails&4GV~P@������L@A�
�O&@Y+�]gC��?*	2�Z4P@2j
3Iterator::Model::ParallelMap::Zip[1]::ForeverRepeat��ފ��?!�D��Ȫ?@)(��я��?1�a���j=@:Preprocessing2F
Iterator::Model��Tގp�?!��Y���C@)v�ݑ�ڌ?1j��z�5@:Preprocessing2S
Iterator::Model::ParallelMap���*l�?!��Ơ.2@)���*l�?1��Ơ.2@:Preprocessing2t
=Iterator::Model::ParallelMap::Zip[0]::FlatMap[0]::Concatenate�YO���?!*���%4@)�xy:W�?1����S�.@:Preprocessing2X
!Iterator::Model::ParallelMap::ZipS8����?!TD�_+N@)Yk(�q?1���@:Preprocessing2�
MIterator::Model::ParallelMap::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSliceǁW˝i?!9��RL@)ǁW˝i?19��RL@:Preprocessing2v
?Iterator::Model::ParallelMap::Zip[1]::ForeverRepeat::FromTensor�S�K�W?!�7i��@)�S�K�W?1�7i��@:Preprocessing2d
-Iterator::Model::ParallelMap::Zip[0]::FlatMap\��J�H�?!��>k6@)�M���PT?1�z�ٛ�?:Preprocessing:�
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
�Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
�Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
�Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
�Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)�
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis�
device�Your program is NOT input-bound because only 0.1% of the total step time sampled is waiting for input. Therefore, you should focus on reducing other time.no*high2B89.7 % of the total step time sampled is spent on All Others time.#You may skip the rest of this page.B�
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown�
	������L@������L@!������L@      ��!       "      ��!       *      ��!       2	�
�O&@�
�O&@!�
�O&@:      ��!       B      ��!       J	+�]gC��?+�]gC��?!+�]gC��?R      ��!       Z	+�]gC��?+�]gC��?!+�]gC��?JCPU_ONLY2black"�
device�Your program is NOT input-bound because only 0.1% of the total step time sampled is waiting for input. Therefore, you should focus on reducing other time.b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"T
Rtensorflow_stats (identify the time-consuming operations executed on the CPU_ONLY)"Z
Xtrace_viewer (look at the activities on the timeline of each CPU_ONLY in the trace view)*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2�
=type.googleapis.com/tensorflow.profiler.GenericRecommendationN
nohigh"B89.7 % of the total step time sampled is spent on All Others time.:
Refer to the TF2 Profiler FAQ2"CPU: 