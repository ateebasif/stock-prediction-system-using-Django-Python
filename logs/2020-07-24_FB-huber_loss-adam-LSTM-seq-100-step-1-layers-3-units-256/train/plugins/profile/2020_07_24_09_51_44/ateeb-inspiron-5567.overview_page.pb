�	뫫��\@뫫��\@!뫫��\@	��n+��?��n+��?!��n+��?"g
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails&0뫫��\@}!��wY@A Ǟ=�a(@Y�6�Nx	�?*	�v���a@2j
3Iterator::Model::ParallelMap::Zip[1]::ForeverRepeat�$��}8�?!]����@@),G�@�]�?1H��g�>@:Preprocessing2F
Iterator::Model0��{��?!��F���F@)F�6�X�?1����{y:@:Preprocessing2S
Iterator::Model::ParallelMapp���0�?!w��!J3@)p���0�?1w��!J3@:Preprocessing2X
!Iterator::Model::ParallelMap::Zip�A{��г?!>�<K@)̖��p��?1x�k
g@:Preprocessing2t
=Iterator::Model::ParallelMap::Zip[0]::FlatMap[0]::Concatenaten�HJz�?!53�%�� @)������?1fnJ�@:Preprocessing2�
MIterator::Model::ParallelMap::Zip[0]::FlatMap[1]::Concatenate[0]::TensorSliced��1�n?!&�P@)d��1�n?1&�P@:Preprocessing2v
?Iterator::Model::ParallelMap::Zip[1]::ForeverRepeat::FromTensor��mP��m?!��n��N@)��mP��m?1��n��N@:Preprocessing2d
-Iterator::Model::ParallelMap::Zip[0]::FlatMapmr��	�?!��b�'.@)��Քdm?1��b��@:Preprocessing2�
MIterator::Model::ParallelMap::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlicey�t��k?!��,�@)y�t��k?1��,�@:Preprocessing2t
=Iterator::Model::ParallelMap::Zip[0]::FlatMap[1]::Concatenate2�g�o}x?!�T�+��@)5�l�/b?1O��6��?:Preprocessing:�
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
�Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
�Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
�Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
�Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)�
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis�
device�Your program is NOT input-bound because only 0.1% of the total step time sampled is waiting for input. Therefore, you should focus on reducing other time.no*high2B89.3 % of the total step time sampled is spent on All Others time.#You may skip the rest of this page.B�
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown�
	}!��wY@}!��wY@!}!��wY@      ��!       "      ��!       *      ��!       2	 Ǟ=�a(@ Ǟ=�a(@! Ǟ=�a(@:      ��!       B      ��!       J	�6�Nx	�?�6�Nx	�?!�6�Nx	�?R      ��!       Z	�6�Nx	�?�6�Nx	�?!�6�Nx	�?JCPU_ONLY2black"�
device�Your program is NOT input-bound because only 0.1% of the total step time sampled is waiting for input. Therefore, you should focus on reducing other time.b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"T
Rtensorflow_stats (identify the time-consuming operations executed on the CPU_ONLY)"Z
Xtrace_viewer (look at the activities on the timeline of each CPU_ONLY in the trace view)*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2�
=type.googleapis.com/tensorflow.profiler.GenericRecommendationN
nohigh"B89.3 % of the total step time sampled is spent on All Others time.:
Refer to the TF2 Profiler FAQ2"CPU: 