	i���6d@i���6d@!i���6d@	�`�`�?�`�`�?!�`�`�?"g
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails&i���6d@�4Lk�a@A3l���!3@Y�vj.7�?*	;�O���W@2F
Iterator::Model��d��J�?!��sH@)��Y�$�?1a�o���@@:Preprocessing2j
3Iterator::Model::ParallelMap::Zip[1]::ForeverRepeat��I}Yڙ?!ӽt���:@)�;2V���?1��]CG�8@:Preprocessing2S
Iterator::Model::ParallelMap�[����?!z�P�Ѝ-@)�[����?1z�P�Ѝ-@:Preprocessing2t
=Iterator::Model::ParallelMap::Zip[0]::FlatMap[0]::Concatenate����*4�?!�����0@)ݖ�g��?1c����(@:Preprocessing2X
!Iterator::Model::ParallelMap::Zip�6�ُ�?!R����I@);�*��y?1�;3��t@:Preprocessing2�
MIterator::Model::ParallelMap::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice �M���p?!�
z��@) �M���p?1�
z��@:Preprocessing2v
?Iterator::Model::ParallelMap::Zip[1]::ForeverRepeat::FromTensor߿yq�]?!5�m1i��?)߿yq�]?15�m1i��?:Preprocessing2d
-Iterator::Model::ParallelMap::Zip[0]::FlatMap��(��?!;�3݂2@)��#�G[?1��b@q2�?:Preprocessing:�
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
�Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
�Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
�Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
�Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)�
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis�
device�Your program is NOT input-bound because only 0.0% of the total step time sampled is waiting for input. Therefore, you should focus on reducing other time.no*high2B88.1 % of the total step time sampled is spent on All Others time.#You may skip the rest of this page.B�
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown�
	�4Lk�a@�4Lk�a@!�4Lk�a@      ��!       "      ��!       *      ��!       2	3l���!3@3l���!3@!3l���!3@:      ��!       B      ��!       J	�vj.7�?�vj.7�?!�vj.7�?R      ��!       Z	�vj.7�?�vj.7�?!�vj.7�?JCPU_ONLY