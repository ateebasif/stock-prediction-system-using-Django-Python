�	��z0�V@��z0�V@!��z0�V@	q�*brP�?q�*brP�?!q�*brP�?"g
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails&��z0�V@_�BF�T@A������!@Y�c> Й�?*	z�G�:_@2j
3Iterator::Model::ParallelMap::Zip[1]::ForeverRepeat�֍wG�?!���jA@)2<��X��?1Zwp̶@@:Preprocessing2F
Iterator::Model��B���?!O���˿B@)Q�v0b��?1t�#K�9@:Preprocessing2t
=Iterator::Model::ParallelMap::Zip[0]::FlatMap[0]::ConcatenateB]¡��?!��xԠR3@)�ͩd ��?1�x�H+-@:Preprocessing2S
Iterator::Model::ParallelMap�H�F�q�?!R�?(�'@)�H�F�q�?1R�?(�'@:Preprocessing2X
!Iterator::Model::ParallelMap::Zip�ݑ����?!�D^v4@O@)rѬl?1o�jd�@:Preprocessing2�
MIterator::Model::ParallelMap::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice���v�>x?!�Y6��@)���v�>x?1�Y6��@:Preprocessing2v
?Iterator::Model::ParallelMap::Zip[1]::ForeverRepeat::FromTensori�����k?!X	:ԑ�@)i�����k?1X	:ԑ�@:Preprocessing2d
-Iterator::Model::ParallelMap::Zip[0]::FlatMap:vP��?!h�9�͆5@)��u�f?1�^g�@:Preprocessing:�
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
�Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
�Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
�Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
�Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)�
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis�
device�Your program is NOT input-bound because only 0.2% of the total step time sampled is waiting for input. Therefore, you should focus on reducing other time.no*high2B90.1 % of the total step time sampled is spent on All Others time.#You may skip the rest of this page.B�
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown�
	_�BF�T@_�BF�T@!_�BF�T@      ��!       "      ��!       *      ��!       2	������!@������!@!������!@:      ��!       B      ��!       J	�c> Й�?�c> Й�?!�c> Й�?R      ��!       Z	�c> Й�?�c> Й�?!�c> Й�?JCPU_ONLY2black"�
device�Your program is NOT input-bound because only 0.2% of the total step time sampled is waiting for input. Therefore, you should focus on reducing other time.b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"T
Rtensorflow_stats (identify the time-consuming operations executed on the CPU_ONLY)"Z
Xtrace_viewer (look at the activities on the timeline of each CPU_ONLY in the trace view)*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2�
=type.googleapis.com/tensorflow.profiler.GenericRecommendationN
nohigh"B90.1 % of the total step time sampled is spent on All Others time.:
Refer to the TF2 Profiler FAQ2"CPU: 