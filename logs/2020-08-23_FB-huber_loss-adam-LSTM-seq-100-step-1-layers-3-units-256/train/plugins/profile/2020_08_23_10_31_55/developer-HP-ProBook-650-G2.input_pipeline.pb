	��AB��`@��AB��`@!��AB��`@	��~�?��~�?!��~�?"g
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails&4��AB��`@�{b��]@A��P�,@YH¾�D��?*	� �rhUl@2j
3Iterator::Model::ParallelMap::Zip[1]::ForeverRepeat�ۻ}�?!���g~�B@)��΢w*�?1����O`A@:Preprocessing2F
Iterator::ModelSy=��?!���9�C@)�d�?1DbE7@:Preprocessing2S
Iterator::Model::ParallelMap�����'�?!lǥ�l�0@)�����'�?1lǥ�l�0@:Preprocessing2X
!Iterator::Model::ParallelMap::Zip.�ED1y�?!?��N@)OZ���f�?1Ze)?�C@:Preprocessing2t
=Iterator::Model::ParallelMap::Zip[0]::FlatMap[0]::Concatenate3�f�ӓ?!����	!@)�V����?1�t�w�.@:Preprocessing2v
?Iterator::Model::ParallelMap::Zip[1]::ForeverRepeat::FromTensor'��>V�{?!��"�@)'��>V�{?1��"�@:Preprocessing2d
-Iterator::Model::ParallelMap::Zip[0]::FlatMap��B�iޡ?!x �6�.@) y�P��x?1u����@@:Preprocessing2�
MIterator::Model::ParallelMap::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice�7k�*w?!")�KO�@)�7k�*w?1")�KO�@:Preprocessing2�
NIterator::Model::ParallelMap::Zip[0]::FlatMap[11]::Concatenate[0]::TensorSlice�u��t?!0�#l�G@)�u��t?10�#l�G@:Preprocessing2u
>Iterator::Model::ParallelMap::Zip[0]::FlatMap[11]::Concatenate1`�U,~�?!��C*��@)oJy���r?1҅c�P @:Preprocessing:�
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
�Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
�Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
�Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
�Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)�
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis�
device�Your program is NOT input-bound because only 0.1% of the total step time sampled is waiting for input. Therefore, you should focus on reducing other time.no*high2B89.3 % of the total step time sampled is spent on All Others time.#You may skip the rest of this page.B�
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown�
	�{b��]@�{b��]@!�{b��]@      ��!       "      ��!       *      ��!       2	��P�,@��P�,@!��P�,@:      ��!       B      ��!       J	H¾�D��?H¾�D��?!H¾�D��?R      ��!       Z	H¾�D��?H¾�D��?!H¾�D��?JCPU_ONLY