�	�.�.�R@�.�.�R@!�.�.�R@	��ʪNo�?��ʪNo�?!��ʪNo�?"g
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails&�.�.�R@�W;�shQ@A&���@YxԘsI�?*	e;�O��Q@2F
Iterator::Model�K���?!��ؼY�I@)��H.�!�?1�F�A��C@:Preprocessing2j
3Iterator::Model::ParallelMap::Zip[1]::ForeverRepeatf��_�?!�,q^6@)�z��&3�?1���"4�4@:Preprocessing2t
=Iterator::Model::ParallelMap::Zip[0]::FlatMap[0]::Concatenate��?4��?!��]qD^2@)D��]L�?1�S=�Q\*@:Preprocessing2S
Iterator::Model::ParallelMap¾�D��?!�q���'@)¾�D��?1�q���'@:Preprocessing2X
!Iterator::Model::ParallelMap::Zip�I}Yک�?!]'C� H@)�r�]��o?1�!)-��@:Preprocessing2�
MIterator::Model::ParallelMap::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSliceWzm6Vbn?!�V�:n�@)Wzm6Vbn?1�V�:n�@:Preprocessing2d
-Iterator::Model::ParallelMap::Zip[0]::FlatMap�iN^d�?!��	�~4@):vP��X?1ܒ��@:Preprocessing2v
?Iterator::Model::ParallelMap::Zip[1]::ForeverRepeat::FromTensor1%��eT?!B������?)1%��eT?1B������?:Preprocessing:�
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
�Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
�Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
�Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
�Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)�
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis�
device�Your program is NOT input-bound because only 0.1% of the total step time sampled is waiting for input. Therefore, you should focus on reducing other time.no*high2B92.4 % of the total step time sampled is spent on All Others time.#You may skip the rest of this page.B�
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown�
	�W;�shQ@�W;�shQ@!�W;�shQ@      ��!       "      ��!       *      ��!       2	&���@&���@!&���@:      ��!       B      ��!       J	xԘsI�?xԘsI�?!xԘsI�?R      ��!       Z	xԘsI�?xԘsI�?!xԘsI�?JCPU_ONLY2black"�
device�Your program is NOT input-bound because only 0.1% of the total step time sampled is waiting for input. Therefore, you should focus on reducing other time.b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"T
Rtensorflow_stats (identify the time-consuming operations executed on the CPU_ONLY)"Z
Xtrace_viewer (look at the activities on the timeline of each CPU_ONLY in the trace view)*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2�
=type.googleapis.com/tensorflow.profiler.GenericRecommendationN
nohigh"B92.4 % of the total step time sampled is spent on All Others time.:
Refer to the TF2 Profiler FAQ2"CPU: 