	d��X@d��X@!d��X@	0�!t���?0�!t���?!0�!t���?"g
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails&d��X@\1е�U@A�^)��"@Y�������?*	�K7�AXx@2F
Iterator::Model|�o�^}�?!y���c�@@)�7���?1����8@:Preprocessing2t
=Iterator::Model::ParallelMap::Zip[0]::FlatMap[0]::Concatenate�qR��8�?!2�[!�EA@)l����?1��n&5@:Preprocessing2j
3Iterator::Model::ParallelMap::Zip[1]::ForeverRepeat=Զa�?!7Y�Y#4@)�Nyt#,�?1扞:b92@:Preprocessing2�
MIterator::Model::ParallelMap::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice�wak��?!ஸ���*@)�wak��?1ஸ���*@:Preprocessing2X
!Iterator::Model::ParallelMap::Zip:;%��?!þ1N�P@)����L0�?1pT#�?$@:Preprocessing2S
Iterator::Model::ParallelMap	N} y�?!�@�C�� @)	N} y�?1�@�C�� @:Preprocessing2d
-Iterator::Model::ParallelMap::Zip[0]::FlatMap�)H�?!�{XBYUB@)_�����?1ҹ�B� @:Preprocessing2v
?Iterator::Model::ParallelMap::Zip[1]::ForeverRepeat::FromTensor2�%�~?!��!��?)2�%�~?1��!��?:Preprocessing:�
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
�Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
�Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
�Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
�Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)�
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis�
device�Your program is NOT input-bound because only 0.2% of the total step time sampled is waiting for input. Therefore, you should focus on reducing other time.no*high2B90.0 % of the total step time sampled is spent on All Others time.#You may skip the rest of this page.B�
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown�
	\1е�U@\1е�U@!\1е�U@      ��!       "      ��!       *      ��!       2	�^)��"@�^)��"@!�^)��"@:      ��!       B      ��!       J	�������?�������?!�������?R      ��!       Z	�������?�������?!�������?JCPU_ONLY