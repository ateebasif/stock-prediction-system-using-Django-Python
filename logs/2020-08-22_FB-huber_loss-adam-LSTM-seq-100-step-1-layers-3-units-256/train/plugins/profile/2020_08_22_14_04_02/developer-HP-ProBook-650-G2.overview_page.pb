�	)r�#j@)r�#j@!)r�#j@	�}��Tq�?�}��Tq�?!�}��Tq�?"g
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails&0)r�#j@^0���g@Aޭ,�YF1@Y@�P�%�?*	~j�t�Hn@2F
Iterator::ModelV��y��?!	��{M<H@)��K��?1Ҝ��>@:Preprocessing2j
3Iterator::Model::ParallelMap::Zip[1]::ForeverRepeat(���,�?!W*�V9N=@)���(��?1�i��:@:Preprocessing2S
Iterator::Model::ParallelMap�T�2æ?!Am��Y2@)�T�2æ?1Am��Y2@:Preprocessing2X
!Iterator::Model::ParallelMap::Zip�LLb��?!�z���I@)� �6qr�?1�-G�"Z@:Preprocessing2t
=Iterator::Model::ParallelMap::Zip[0]::FlatMap[0]::Concatenateg��67��?!�OG�#@)�����Ŏ?1B��^�@:Preprocessing2�
MIterator::Model::ParallelMap::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSliceD2��z��?!i�>_�
@)D2��z��?1i�>_�
@:Preprocessing2�
MIterator::Model::ParallelMap::Zip[0]::FlatMap[3]::Concatenate[0]::TensorSlice�lɪ7y?!�{W�S@)�lɪ7y?1�{W�S@:Preprocessing2v
?Iterator::Model::ParallelMap::Zip[1]::ForeverRepeat::FromTensor�X�oC�w?!GRz,��@)�X�oC�w?1GRz,��@:Preprocessing2d
-Iterator::Model::ParallelMap::Zip[0]::FlatMap1��PN��?!d �F�/@)�:���Ru?1j��z�0@:Preprocessing2t
=Iterator::Model::ParallelMap::Zip[0]::FlatMap[3]::Concatenate�*�WYۄ?!���~�@)\�J�p?1_���?:Preprocessing:�
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
�Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
�Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
�Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
�Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)�
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis�
device�Your program is NOT input-bound because only 0.1% of the total step time sampled is waiting for input. Therefore, you should focus on reducing other time.no*high2B91.7 % of the total step time sampled is spent on All Others time.#You may skip the rest of this page.B�
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown�
	^0���g@^0���g@!^0���g@      ��!       "      ��!       *      ��!       2	ޭ,�YF1@ޭ,�YF1@!ޭ,�YF1@:      ��!       B      ��!       J	@�P�%�?@�P�%�?!@�P�%�?R      ��!       Z	@�P�%�?@�P�%�?!@�P�%�?JCPU_ONLY2black"�
device�Your program is NOT input-bound because only 0.1% of the total step time sampled is waiting for input. Therefore, you should focus on reducing other time.b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"T
Rtensorflow_stats (identify the time-consuming operations executed on the CPU_ONLY)"Z
Xtrace_viewer (look at the activities on the timeline of each CPU_ONLY in the trace view)*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2�
=type.googleapis.com/tensorflow.profiler.GenericRecommendationN
nohigh"B91.7 % of the total step time sampled is spent on All Others time.:
Refer to the TF2 Profiler FAQ2"CPU: 