	��ZIK@��ZIK@!��ZIK@	mc,C�?mc,C�?!mc,C�?"g
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails&��ZIK@DN_��rH@A��΢wz@Y���[��?*	�C�l�V@2t
=Iterator::Model::ParallelMap::Zip[0]::FlatMap[0]::Concatenate�~�:pΠ?!���2B@)�f�|��?1��)U��>@:Preprocessing2j
3Iterator::Model::ParallelMap::Zip[1]::ForeverRepeat)#. �ҕ?![r�.K�7@)�p��?1��.�5@:Preprocessing2F
Iterator::Model�~TÞ?!����ӧ@@)������?1)� 0g2@:Preprocessing2S
Iterator::Model::ParallelMap)�[Z��?!NU���-@))�[Z��?1NU���-@:Preprocessing2�
MIterator::Model::ParallelMap::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice� @��t?!!�K�@)� @��t?1!�K�@:Preprocessing2X
!Iterator::Model::ParallelMap::Zipd��1ˮ?!341�P@)�3��k�r?1��a6�}@:Preprocessing2v
?Iterator::Model::ParallelMap::Zip[1]::ForeverRepeat::FromTensork*��.�^?!�z�8� @)k*��.�^?1�z�8� @:Preprocessing2d
-Iterator::Model::ParallelMap::Zip[0]::FlatMapY32�]��?!(z7D��B@)��֦��V?1L���?:Preprocessing:�
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
�Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
�Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
�Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
�Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)�
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis�
device�Your program is NOT input-bound because only 0.1% of the total step time sampled is waiting for input. Therefore, you should focus on reducing other time.no*high2B89.6 % of the total step time sampled is spent on All Others time.#You may skip the rest of this page.B�
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown�
	DN_��rH@DN_��rH@!DN_��rH@      ��!       "      ��!       *      ��!       2	��΢wz@��΢wz@!��΢wz@:      ��!       B      ��!       J	���[��?���[��?!���[��?R      ��!       Z	���[��?���[��?!���[��?JCPU_ONLY