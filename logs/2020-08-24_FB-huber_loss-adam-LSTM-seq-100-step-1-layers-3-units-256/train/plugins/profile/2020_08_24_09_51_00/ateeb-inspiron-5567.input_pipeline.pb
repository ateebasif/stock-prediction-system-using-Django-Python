	`"��L@`"��L@!`"��L@	>��)u�?>��)u�?!>��)u�?"g
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails&`"��L@~6rݔ@J@A��Src@Yę_���?*	cX9��Z@2F
Iterator::ModelF��}�[�?!Jb΂f�K@)��)t^c�?1B���>E@:Preprocessing2j
3Iterator::Model::ParallelMap::Zip[1]::ForeverRepeat�C�����?!�@��d7@)�L����?1p�i��5@:Preprocessing2S
Iterator::Model::ParallelMap�V$&��?! �[fS)@)�V$&��?1 �[fS)@:Preprocessing2t
=Iterator::Model::ParallelMap::Zip[0]::FlatMap[0]::ConcatenateeS��.�?!"���H/@)�*��p�?1�R����%@:Preprocessing2�
MIterator::Model::ParallelMap::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice��6�ُt?!�T_DZ�@)��6�ُt?1�T_DZ�@:Preprocessing2X
!Iterator::Model::ParallelMap::Zipg�8毨?!��1}�lF@)�'�Is?1`W_(#�@:Preprocessing2d
-Iterator::Model::ParallelMap::Zip[0]::FlatMap��z�p̒?!w�
{Q1@)�W�\T[?1^IQ���?:Preprocessing2v
?Iterator::Model::ParallelMap::Zip[1]::ForeverRepeat::FromTensor�t?� ?[?!�a�Ŀ�?)�t?� ?[?1�a�Ŀ�?:Preprocessing:�
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
�Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
�Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
�Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
�Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)�
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis�
device�Your program is NOT input-bound because only 0.2% of the total step time sampled is waiting for input. Therefore, you should focus on reducing other time.no*high2B91.0 % of the total step time sampled is spent on All Others time.#You may skip the rest of this page.B�
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown�
	~6rݔ@J@~6rݔ@J@!~6rݔ@J@      ��!       "      ��!       *      ��!       2	��Src@��Src@!��Src@:      ��!       B      ��!       J	ę_���?ę_���?!ę_���?R      ��!       Z	ę_���?ę_���?!ę_���?JCPU_ONLY