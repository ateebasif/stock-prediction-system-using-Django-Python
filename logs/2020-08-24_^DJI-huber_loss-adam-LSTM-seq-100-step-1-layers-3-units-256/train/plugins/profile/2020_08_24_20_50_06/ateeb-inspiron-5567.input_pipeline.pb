	<jL���P@<jL���P@!<jL���P@	�6�*~�?�6�*~�?!�6�*~�?"g
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails&<jL���P@5�Ry;(N@A�s�L�@Y�o�[�?*	��~j�T@2F
Iterator::ModelG�?!/�L��J@)�q��Q��?1���dKF?@:Preprocessing2S
Iterator::Model::ParallelMap��>Ȳ`�?!٩���W6@)��>Ȳ`�?1٩���W6@:Preprocessing2j
3Iterator::Model::ParallelMap::Zip[1]::ForeverRepeat"9��U�?!B?~�h-7@)�c�삑?1���?J5@:Preprocessing2t
=Iterator::Model::ParallelMap::Zip[0]::FlatMap[0]::ConcatenateJC�B��?!�B���/@)�mr���?1Dܢ)�'@:Preprocessing2X
!Iterator::Model::ParallelMap::Zipf�(�7�?!�T�]�0G@)$c���q?1L�ѣ�@:Preprocessing2�
MIterator::Model::ParallelMap::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlicenYk(�g?!������@)nYk(�g?1������@:Preprocessing2d
-Iterator::Model::ParallelMap::Zip[0]::FlatMap�=�>tA�?!�,����1@)����y]?1�[����@:Preprocessing2v
?Iterator::Model::ParallelMap::Zip[1]::ForeverRepeat::FromTensor�V횐�X?!�;(l�2�?)�V횐�X?1�;(l�2�?:Preprocessing:�
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
�Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
�Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
�Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
�Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)�
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis�
device�Your program is NOT input-bound because only 0.1% of the total step time sampled is waiting for input. Therefore, you should focus on reducing other time.no*high2B90.3 % of the total step time sampled is spent on All Others time.#You may skip the rest of this page.B�
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown�
	5�Ry;(N@5�Ry;(N@!5�Ry;(N@      ��!       "      ��!       *      ��!       2	�s�L�@�s�L�@!�s�L�@:      ��!       B      ��!       J	�o�[�?�o�[�?!�o�[�?R      ��!       Z	�o�[�?�o�[�?!�o�[�?JCPU_ONLY