	����"Y@����"Y@!����"Y@	ݚ����?ݚ����?!ݚ����?"g
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails&����"Y@^�?���V@A�	�i��"@Y���\���?*	*\���hr@2F
Iterator::Model��ݯ|�?!~AyP�D@)^.�;1�?1���[,=@:Preprocessing2j
3Iterator::Model::ParallelMap::Zip[1]::ForeverRepeat�kA�!�?!$I�$I�:@)�`obHN�?1O�[[�F8@:Preprocessing2t
=Iterator::Model::ParallelMap::Zip[0]::FlatMap[0]::Concatenate�;���ܰ?!շ�>�\6@)m�M�?1���ƛ0@:Preprocessing2S
Iterator::Model::ParallelMap����!�?!ĚW��^)@)����!�?1ĚW��^)@:Preprocessing2X
!Iterator::Model::ParallelMap::Zipl#��?!����M@)^.�;1�?1���[,@:Preprocessing2�
MIterator::Model::ParallelMap::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice���"[�?!�n$@)���"[�?1�n$@:Preprocessing2v
?Iterator::Model::ParallelMap::Zip[1]::ForeverRepeat::FromTensor�� �X4}?!���IN]@)�� �X4}?1���IN]@:Preprocessing2d
-Iterator::Model::ParallelMap::Zip[0]::FlatMap����O�?!w����H8@)ap��/w?1,�,M��?:Preprocessing:�
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
�Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
�Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
�Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
�Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)�
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis�
device�Your program is NOT input-bound because only 0.2% of the total step time sampled is waiting for input. Therefore, you should focus on reducing other time.no*high2B90.4 % of the total step time sampled is spent on All Others time.#You may skip the rest of this page.B�
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown�
	^�?���V@^�?���V@!^�?���V@      ��!       "      ��!       *      ��!       2	�	�i��"@�	�i��"@!�	�i��"@:      ��!       B      ��!       J	���\���?���\���?!���\���?R      ��!       Z	���\���?���\���?!���\���?JCPU_ONLY