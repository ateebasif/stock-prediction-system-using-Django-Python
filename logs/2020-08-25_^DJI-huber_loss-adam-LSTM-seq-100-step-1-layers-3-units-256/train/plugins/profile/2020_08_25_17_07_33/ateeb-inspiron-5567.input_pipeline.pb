	�0e��Y@�0e��Y@!�0e��Y@	bE��θ?bE��θ?!bE��θ?"g
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails&�0e��Y@�{L�rV@A��H�F*@YQi��>��?*	}?5^��W@2F
Iterator::Modelr7�֊6�?!��[��G@)Na�����?1��=�5@@:Preprocessing2j
3Iterator::Model::ParallelMap::Zip[1]::ForeverRepeat�ri��+�?!�cc�9@)j���'�?1�Oĩ�7@:Preprocessing2S
Iterator::Model::ParallelMap*�T��?!�aTA�7.@)*�T��?1�aTA�7.@:Preprocessing2t
=Iterator::Model::ParallelMap::Zip[0]::FlatMap[0]::Concatenate
��$>w�?!S=�L��2@)�8+�&��?1,!o�-@:Preprocessing2X
!Iterator::Model::ParallelMap::Zip��i���?!�Im�
=J@)���Ov?1u��o��@:Preprocessing2�
MIterator::Model::ParallelMap::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSliceI�V�o?!=�L��H@)I�V�o?1=�L��H@:Preprocessing2d
-Iterator::Model::ParallelMap::Zip[0]::FlatMap�z�2Q��?!U��l 5@)5��o�h`?1�^��� @:Preprocessing2v
?Iterator::Model::ParallelMap::Zip[1]::ForeverRepeat::FromTensor�b�J!`?!�&��܂ @)�b�J!`?1�&��܂ @:Preprocessing:�
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
�Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
�Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
�Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
�Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)�
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis�
device�Your program is NOT input-bound because only 0.1% of the total step time sampled is waiting for input. Therefore, you should focus on reducing other time.no*high2B87.2 % of the total step time sampled is spent on All Others time.#You may skip the rest of this page.B�
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown�
	�{L�rV@�{L�rV@!�{L�rV@      ��!       "      ��!       *      ��!       2	��H�F*@��H�F*@!��H�F*@:      ��!       B      ��!       J	Qi��>��?Qi��>��?!Qi��>��?R      ��!       Z	Qi��>��?Qi��>��?!Qi��>��?JCPU_ONLY