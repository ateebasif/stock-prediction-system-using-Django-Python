	j���O@j���O@!j���O@	��6�G�?��6�G�?!��6�G�?"g
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails&j���O@2Xq���L@A4�9A�l@Y����D�?*	I+�vV@2F
Iterator::ModelS@�� k�?!�'�X=GG@)x%�s}�?1�s�^@@:Preprocessing2j
3Iterator::Model::ParallelMap::Zip[1]::ForeverRepeat���͗?!vE<�9@)���[��?1z���7@:Preprocessing2�
MIterator::Model::ParallelMap::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSliceF_A��h�?!i6��,@)F_A��h�?1i6��,@:Preprocessing2S
Iterator::Model::ParallelMap[��	m�?!�1�c�+@)[��	m�?1�1�c�+@:Preprocessing2t
=Iterator::Model::ParallelMap::Zip[0]::FlatMap[0]::Concatenate�!6X8I�?!ʇ��4@)`�U,~Sx?1T��xdp@:Preprocessing2X
!Iterator::Model::ParallelMap::Zipg����?!��¸J@)��I���r?1�����:@:Preprocessing2v
?Iterator::Model::ParallelMap::Zip[1]::ForeverRepeat::FromTensor��V���\?!ȟ�%r �?)��V���\?1ȟ�%r �?:Preprocessing2d
-Iterator::Model::ParallelMap::Zip[0]::FlatMapI��Q,��?!m0Yʃ6@)��?�V?1&������?:Preprocessing:�
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
�Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
�Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
�Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
�Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)�
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis�
device�Your program is NOT input-bound because only 0.1% of the total step time sampled is waiting for input. Therefore, you should focus on reducing other time.no*high2B90.2 % of the total step time sampled is spent on All Others time.#You may skip the rest of this page.B�
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown�
	2Xq���L@2Xq���L@!2Xq���L@      ��!       "      ��!       *      ��!       2	4�9A�l@4�9A�l@!4�9A�l@:      ��!       B      ��!       J	����D�?����D�?!����D�?R      ��!       Z	����D�?����D�?!����D�?JCPU_ONLY