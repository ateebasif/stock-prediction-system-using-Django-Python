�	|*�=%�P@|*�=%�P@!|*�=%�P@	�:��?�:��?!�:��?"g
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails&|*�=%�P@+N��N@A�PS)@Y5�BX�%�?*	�$��#R@2j
3Iterator::Model::ParallelMap::Zip[1]::ForeverRepeatM֨�ht�?!�D���?@)@�z��{�?1�h��d�<@:Preprocessing2F
Iterator::Model�~�T� ?!lQ����F@)l��F���?1�AZ�?<@:Preprocessing2S
Iterator::Model::ParallelMap������?!���.L�0@)������?1���.L�0@:Preprocessing2t
=Iterator::Model::ParallelMap::Zip[0]::FlatMap[0]::Concatenate����?!q�s�/@)@�5_%?1W�B��$@:Preprocessing2X
!Iterator::Model::ParallelMap::ZipVc	kc�?!��j;
qK@)���u6�o?1tZuHv@:Preprocessing2�
MIterator::Model::ParallelMap::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice�%8���m?!ע*��@)�%8���m?1ע*��@:Preprocessing2v
?Iterator::Model::ParallelMap::Zip[1]::ForeverRepeat::FromTensor� �	�_?!��>��9@)� �	�_?1��>��9@:Preprocessing2d
-Iterator::Model::ParallelMap::Zip[0]::FlatMap�6�xͫ�?!��s���1@)wJ��\?1l���@:Preprocessing:�
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
�Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
�Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
�Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
�Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)�
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis�
device�Your program is NOT input-bound because only 0.1% of the total step time sampled is waiting for input. Therefore, you should focus on reducing other time.no*high2B90.6 % of the total step time sampled is spent on All Others time.#You may skip the rest of this page.B�
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown�
	+N��N@+N��N@!+N��N@      ��!       "      ��!       *      ��!       2	�PS)@�PS)@!�PS)@:      ��!       B      ��!       J	5�BX�%�?5�BX�%�?!5�BX�%�?R      ��!       Z	5�BX�%�?5�BX�%�?!5�BX�%�?JCPU_ONLY2black"�
device�Your program is NOT input-bound because only 0.1% of the total step time sampled is waiting for input. Therefore, you should focus on reducing other time.b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"T
Rtensorflow_stats (identify the time-consuming operations executed on the CPU_ONLY)"Z
Xtrace_viewer (look at the activities on the timeline of each CPU_ONLY in the trace view)*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2�
=type.googleapis.com/tensorflow.profiler.GenericRecommendationN
nohigh"B90.6 % of the total step time sampled is spent on All Others time.:
Refer to the TF2 Profiler FAQ2"CPU: 