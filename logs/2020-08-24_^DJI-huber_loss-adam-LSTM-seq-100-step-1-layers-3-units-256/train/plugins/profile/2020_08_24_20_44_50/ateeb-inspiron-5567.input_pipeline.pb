	�'�LY@�'�LY@!�'�LY@	O�7h��?O�7h��?!O�7h��?"g
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails&�'�LY@g��e�V@A�ᔹ��%@Y�X�E��?*	R����Q@2F
Iterator::Model�]M����?!������D@)�CV��?1Vc%	 �=@:Preprocessing2j
3Iterator::Model::ParallelMap::Zip[1]::ForeverRepeat��#�?!OE��=@)�
*�~��?1zV���:@:Preprocessing2t
=Iterator::Model::ParallelMap::Zip[0]::FlatMap[0]::Concatenate��x���?!�_��i�3@)���[�?1XC�2�{,@:Preprocessing2S
Iterator::Model::ParallelMap6��ā?!���N7(@)6��ā?1���N7(@:Preprocessing2X
!Iterator::Model::ParallelMap::Zip\�	��b�?!jjAv,%M@)&U�M�Ms?18�H�4O@:Preprocessing2�
MIterator::Model::ParallelMap::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlicew�ِfp?!��x��Y@)w�ِfp?1��x��Y@:Preprocessing2v
?Iterator::Model::ParallelMap::Zip[1]::ForeverRepeat::FromTensor�3��k�b?!���}M�	@)�3��k�b?1���}M�	@:Preprocessing2d
-Iterator::Model::ParallelMap::Zip[0]::FlatMapƈD�eݏ?!�P!u��5@)��_vOV?14�(�$�?:Preprocessing:�
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
�Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
�Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
�Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
�Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)�
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis�
device�Your program is NOT input-bound because only 0.1% of the total step time sampled is waiting for input. Therefore, you should focus on reducing other time.no*high2B89.1 % of the total step time sampled is spent on All Others time.#You may skip the rest of this page.B�
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown�
	g��e�V@g��e�V@!g��e�V@      ��!       "      ��!       *      ��!       2	�ᔹ��%@�ᔹ��%@!�ᔹ��%@:      ��!       B      ��!       J	�X�E��?�X�E��?!�X�E��?R      ��!       Z	�X�E��?�X�E��?!�X�E��?JCPU_ONLY