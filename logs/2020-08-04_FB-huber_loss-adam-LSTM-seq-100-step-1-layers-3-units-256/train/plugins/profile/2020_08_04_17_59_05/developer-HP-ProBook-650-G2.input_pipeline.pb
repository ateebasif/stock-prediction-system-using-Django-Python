	oB@>�d@oB@>�d@!oB@>�d@	͋�0�,�?͋�0�,�?!͋�0�,�?"g
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails&0oB@>�d@��Q:+c@A&s,��,@YU�z�I�?*	� �rh=h@2j
3Iterator::Model::ParallelMap::Zip[1]::ForeverRepeat���QI��?!�&��ٻ@@)��%�`�?1y,�ǘ>@:Preprocessing2F
Iterator::Model�J���>�?!�ݞ�9dD@)S%��RΧ?1����7@:Preprocessing2S
Iterator::Model::ParallelMap�pZ𢯠?!�6JU�0@)�pZ𢯠?1�6JU�0@:Preprocessing2X
!Iterator::Model::ParallelMap::Zip�f��e�?!"ajƛM@)�unڌӐ?1ڝ�� @:Preprocessing2t
=Iterator::Model::ParallelMap::Zip[0]::FlatMap[0]::Concatenate$a�N"�?!���C"@)2�g@��?1����@:Preprocessing2�
NIterator::Model::ParallelMap::Zip[0]::FlatMap[14]::Concatenate[0]::TensorSlice���r��z?!��jn�
@)���r��z?1��jn�
@:Preprocessing2d
-Iterator::Model::ParallelMap::Zip[0]::FlatMap`?�'�?!�	+٘F1@)q9^��Iy?1��t�mx	@:Preprocessing2v
?Iterator::Model::ParallelMap::Zip[1]::ForeverRepeat::FromTensor�C�.l�v?!����^�@)�C�.l�v?1����^�@:Preprocessing2�
MIterator::Model::ParallelMap::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice�W歺u?!�8��w5@)�W歺u?1�8��w5@:Preprocessing2u
>Iterator::Model::ParallelMap::Zip[0]::FlatMap[14]::Concatenate������?!��ۋ��@)uۈ'�i?1N�:Z}��?:Preprocessing:�
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
�Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
�Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
�Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
�Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)�
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis�
device�Your program is NOT input-bound because only 0.0% of the total step time sampled is waiting for input. Therefore, you should focus on reducing other time.no*high2B91.4 % of the total step time sampled is spent on All Others time.#You may skip the rest of this page.B�
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown�
	��Q:+c@��Q:+c@!��Q:+c@      ��!       "      ��!       *      ��!       2	&s,��,@&s,��,@!&s,��,@:      ��!       B      ��!       J	U�z�I�?U�z�I�?!U�z�I�?R      ��!       Z	U�z�I�?U�z�I�?!U�z�I�?JCPU_ONLY