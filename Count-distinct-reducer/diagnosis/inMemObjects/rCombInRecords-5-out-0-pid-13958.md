## Objects in Reduce Stage

### Framework Objects

#### [SegmentsInCopy] => 

| FrameworkObj 	| Inner object 	| shallowHeap 	| retainedHeap 	| TaskId 	|
| :----------- | :----------- | -----------: | -----------: | -----------: |
| MapOutputCopier @ 0xd0db81f8  MapOutputCopier attempt_201404152256_0003_r_000002_0.1	| byte[45751456] @ 0xbb11e448	| 45,751,472	| 45,751,472	|12	|

#### [SegmentsInList] => 

| FrameworkObj 	| Inner object 	| shallowHeap 	| retainedHeap 	| TaskId 	|
| :----------- | :----------- | -----------: | -----------: | -----------: |
| ReduceTask$ReduceCopier$MapOutput @ 0xd0ff2880	| byte[45672007] @ 0xd1007c80	| 45,672,024	| 45,672,024	|9	|

#### [SegmentsInMerge / SegmentsInBuffer] => 

| FrameworkObj 	| Inner object 	| shallowHeap 	| retainedHeap 	| TaskId 	|
| :----------- | :----------- | -----------: | -----------: | -----------: |
| Merger$Segment @ 0xd0fde418	| byte[45756784] @ 0xb59fc2f8	| 45,756,800	| 45,756,800	|3	|
| Merger$Segment @ 0xd0fdb818	| byte[45600252] @ 0xc8afaca0	| 45,600,272	| 45,600,272	|15	|
| Merger$Segment @ 0xd0fdff98	| byte[21822891] @ 0xa6639890	| 21,822,912	| 21,822,912	|21	|
| Merger$Segment @ 0xd0fdb298	| byte[45691023] @ 0xc084d270	| 45,691,040	| 45,691,040	|8	|
| Merger$Segment @ 0xd0fdf498	| byte[45724208] @ 0xa2400000	| 45,724,224	| 45,724,224	|16	|
| Merger$Segment @ 0xd0fdef18	| byte[45684984] @ 0xb2e6a9f0	| 45,685,000	| 45,685,000	|0	|
| Merger$Segment @ 0xd0fde998	| byte[45608889] @ 0xb859f478	| 45,608,912	| 45,608,912	|13	|
| Merger$Segment @ 0xd0fdfa18	| byte[28400597] @ 0xb1354e08	| 28,400,616	| 28,400,616	|18	|
| Merger$Segment @ 0xd0fdde98	| byte[45684858] @ 0xae7c3578	| 45,684,880	| 45,684,880	|5	|
| Merger$Segment @ 0xd0fdd918	| byte[45743077] @ 0xa7b09650	| 45,743,096	| 45,743,096	|14	|
| Merger$Segment @ 0xd0fdd398	| byte[45666662] @ 0xbdcc00f8	| 45,666,680	| 45,666,680	|7	|
| Merger$Segment @ 0xd0fdce18	| byte[45663253] @ 0xaa6a9248	| 45,663,272	| 45,663,272	|17	|
| Merger$Segment @ 0xd0fdc898	| byte[45684664] @ 0xc33e0310	| 45,684,680	| 45,684,680	|4	|
| Merger$Segment @ 0xd0fdc318	| byte[45650354] @ 0xc5f71ad8	| 45,650,376	| 45,650,376	|11	|
| Merger$Segment @ 0xd0fdbd98	| byte[45744906] @ 0xcb677ab0	| 45,744,928	| 45,744,928	|10	|
| Merger$Segment @ 0xd0fe0a98	| byte[22601462] @ 0xad235670	| 22,601,480	| 22,601,480	|19	|
| Merger$Segment @ 0xd0fe0518	| byte[23717439] @ 0xa4f9b240	| 23,717,456	| 23,717,456	|20	|
| Merger$Segment @ 0xd0fdad18	| byte[45691580] @ 0xce224f28	| 45,691,600	| 45,691,600	|6	|


#### [minSegment] => 

| FrameworkObj 	| Inner object 	| shallowHeap 	| retainedHeap 	| TaskId 	|
| :----------- | :----------- | -----------: | -----------: |-----------: |
| Merger$Segment @ 0xd0fde418	| byte[45756784] @ 0xb59fc2f8	| 45,756,800	| 45,756,800	|3	|


#### [keySegment] => 

| FrameworkObj 	| Inner object 	| shallowHeap 	| retainedHeap 	|
| :----------- | :----------- | -----------: | -----------: |
| DataInputBuffer @ 0xd0fde6b8	| byte[45756784] @ 0xb59fc2f8	| 45,756,800	| 45,756,800	|


### User Objects

| User object | shallow heap | retained heap | length | inner object | inner size | threads | code() |
|:------------| ------------:| -------------:| ------:|:------------ | ----------:| :------ | :------|
| org.apache.pig.data.DefaultDataBag @ 0xd8d8d240 | 40 | 74,942,624 | 1 |  | | Thread for merging in memory files | combine |
| org.apache.pig.data.DefaultDataBag @ 0xd5222ba8 | 40 | 40,001,464 | 1 |  | | Thread for merging in memory files | combine |
| org.apache.pig.data.DefaultDataBag @ 0xd3cdb810 | 40 | 22,304,960 | 1 |  | | Thread for merging in memory files | combine |
| org.apache.pig.data.DefaultDataBag @ 0xd7848c40 | 40 | 22,299,936 | 1 |  | | Thread for merging in memory files | combine |

### User objects => Threads and code() 

[org.apache.pig.data.DefaultDataBag @ 0xd8d8d240] =>

	|------ in combine() in Thread for merging in memory files ------|
	at org.apache.hadoop.mapred.Task$NewCombinerRunner.combine(Lorg/apache/hadoop/mapred/RawKeyValueIterator;Lorg/apache/hadoop/mapred/OutputCollector;)V (Task.java:1716)
		org.apache.hadoop.mapreduce.Reducer$Context @ 0xd0fd95c8 [38642]
		org.apache.pig.impl.io.NullableTuple @ 0xd3ba05e0 [41067]
		org.apache.pig.data.BinSedesTuple @ 0xd3ba05f8 [41068]
		java.util.ArrayList @ 0xd3ba0610 [41069]
		java.lang.Object[10] @ 0xd3ba0628 [41070]
		org.apache.pig.data.BinSedesTuple @ 0xd8d8d1f8 [2587150]
		java.util.ArrayList @ 0xd8d8d210 [2587151]
		java.lang.Object[1] @ 0xd8d8d228 [2587152]
		org.apache.pig.data.DefaultDataBag @ 0xd8d8d240 [2587153]

	at org.apache.hadoop.mapreduce.Reducer.run(Lorg/apache/hadoop/mapreduce/Reducer$Context;)V (Reducer.java:224)
		org.apache.hadoop.mapreduce.Reducer$Context @ 0xd0fd95c8 [38642]
		org.apache.pig.impl.io.NullableTuple @ 0xd3ba05e0 [41067]
		org.apache.pig.data.BinSedesTuple @ 0xd3ba05f8 [41068]
		java.util.ArrayList @ 0xd3ba0610 [41069]
		java.lang.Object[10] @ 0xd3ba0628 [41070]
		org.apache.pig.data.BinSedesTuple @ 0xd8d8d1f8 [2587150]
		java.util.ArrayList @ 0xd8d8d210 [2587151]
		java.lang.Object[1] @ 0xd8d8d228 [2587152]
		org.apache.pig.data.DefaultDataBag @ 0xd8d8d240 [2587153]

	at org.apache.pig.backend.hadoop.executionengine.mapReduceLayer.PigCombiner$Combine.reduce(Ljava/lang/Object;Ljava/lang/Iterable;Lorg/apache/hadoop/mapreduce/Reducer$Context;)V (PigCombiner.java:51)
		org.apache.hadoop.mapreduce.Reducer$Context @ 0xd0fd95c8 [38642]
		org.apache.pig.impl.io.NullableTuple @ 0xd3ba05e0 [41067]
		org.apache.pig.data.BinSedesTuple @ 0xd3ba05f8 [41068]
		java.util.ArrayList @ 0xd3ba0610 [41069]
		java.lang.Object[10] @ 0xd3ba0628 [41070]
		org.apache.pig.data.BinSedesTuple @ 0xd8d8d1f8 [2587150]
		java.util.ArrayList @ 0xd8d8d210 [2587151]
		java.lang.Object[1] @ 0xd8d8d228 [2587152]
		org.apache.pig.data.DefaultDataBag @ 0xd8d8d240 [2587153]

	at org.apache.pig.backend.hadoop.executionengine.mapReduceLayer.PigCombiner$Combine.reduce(Lorg/apache/pig/impl/io/PigNullableWritable;Ljava/lang/Iterable;Lorg/apache/hadoop/mapreduce/Reducer$Context;)V (PigCombiner.java:162)
		org.apache.hadoop.mapreduce.Reducer$Context @ 0xd0fd95c8 [38642]
		org.apache.pig.impl.io.NullableTuple @ 0xd3ba05e0 [41067]
		org.apache.pig.data.BinSedesTuple @ 0xd3ba05f8 [41068]
		java.util.ArrayList @ 0xd3ba0610 [41069]
		java.lang.Object[10] @ 0xd3ba0628 [41070]
		org.apache.pig.data.BinSedesTuple @ 0xd8d8d1f8 [2587150]
		java.util.ArrayList @ 0xd8d8d210 [2587151]
		java.lang.Object[1] @ 0xd8d8d228 [2587152]
		org.apache.pig.data.DefaultDataBag @ 0xd8d8d240 [2587153]

	at org.apache.pig.backend.hadoop.executionengine.mapReduceLayer.PigCombiner$Combine.processOnePackageOutput(Lorg/apache/hadoop/mapreduce/Reducer$Context;)Z (PigCombiner.java:171)
		org.apache.hadoop.mapreduce.Reducer$Context @ 0xd0fd95c8 [38642]
		org.apache.pig.impl.io.NullableTuple @ 0xd3ba05e0 [41067]
		org.apache.pig.data.BinSedesTuple @ 0xd3ba05f8 [41068]
		java.util.ArrayList @ 0xd3ba0610 [41069]
		java.lang.Object[10] @ 0xd3ba0628 [41070]
		org.apache.pig.data.BinSedesTuple @ 0xd8d8d1f8 [2587150]
		java.util.ArrayList @ 0xd8d8d210 [2587151]
		java.lang.Object[1] @ 0xd8d8d228 [2587152]
		org.apache.pig.data.DefaultDataBag @ 0xd8d8d240 [2587153]

	at org.apache.hadoop.mapreduce.ReduceContext.nextKeyValue()Z (ReduceContext.java:208)
		org.apache.hadoop.mapreduce.Reducer$Context @ 0xd0fd95c8 [38642]
		org.apache.pig.impl.io.NullableTuple @ 0xd3ba05e0 [41067]
		org.apache.pig.data.BinSedesTuple @ 0xd3ba05f8 [41068]
		java.util.ArrayList @ 0xd3ba0610 [41069]
		java.lang.Object[10] @ 0xd3ba0628 [41070]
		org.apache.pig.data.BinSedesTuple @ 0xd8d8d1f8 [2587150]
		java.util.ArrayList @ 0xd8d8d210 [2587151]
		java.lang.Object[1] @ 0xd8d8d228 [2587152]
		org.apache.pig.data.DefaultDataBag @ 0xd8d8d240 [2587153]


[org.apache.pig.data.DefaultDataBag @ 0xd7848c40] =>

	|------ in combine() in Thread for merging in memory files ------|
	at org.apache.pig.backend.hadoop.executionengine.physicalLayer.relationalOperators.POCombinerPackage.getNext(Lorg/apache/pig/data/Tuple;)Lorg/apache/pig/backend/hadoop/executionengine/physicalLayer/Result; (POCombinerPackage.java:141)
		java.lang.Object[3] @ 0xd3cdb850 [43259]
		org.apache.pig.data.InternalCachedBag @ 0xd3cdc468 [43324]
		java.util.ArrayList @ 0xd3cdc4a8 [43325]
		java.lang.Object[10] @ 0xd3cdc4c0 [43326]
		org.apache.pig.data.BinSedesTuple @ 0xd7848bf8 [1918943]
		java.util.ArrayList @ 0xd7848c10 [1918944]
		java.lang.Object[1] @ 0xd7848c28 [1918945]
		org.apache.pig.data.DefaultDataBag @ 0xd7848c40 [1918946]


[org.apache.pig.data.DefaultDataBag @ 0xd5222ba8] =>

	|------ in combine() in Thread for merging in memory files ------|
	at org.apache.pig.backend.hadoop.executionengine.physicalLayer.relationalOperators.POCombinerPackage.getNext(Lorg/apache/pig/data/Tuple;)Lorg/apache/pig/backend/hadoop/executionengine/physicalLayer/Result; (POCombinerPackage.java:141)
		java.lang.Object[3] @ 0xd3cdb850 [43259]
		org.apache.pig.data.InternalCachedBag @ 0xd3cdc468 [43324]
		java.util.ArrayList @ 0xd3cdc4a8 [43325]
		java.lang.Object[10] @ 0xd3cdc4c0 [43326]
		org.apache.pig.data.BinSedesTuple @ 0xd5222b60 [712076]
		java.util.ArrayList @ 0xd5222b78 [712077]
		java.lang.Object[1] @ 0xd5222b90 [712078]
		org.apache.pig.data.DefaultDataBag @ 0xd5222ba8 [712079]


[org.apache.pig.data.DefaultDataBag @ 0xd3cdb810] =>

	|------ in combine() in Thread for merging in memory files ------|
	at org.apache.pig.backend.hadoop.executionengine.physicalLayer.relationalOperators.POCombinerPackage.getNext(Lorg/apache/pig/data/Tuple;)Lorg/apache/pig/backend/hadoop/executionengine/physicalLayer/Result; (POCombinerPackage.java:141)
		java.lang.Object[3] @ 0xd3cdb850 [43259]
		org.apache.pig.data.InternalCachedBag @ 0xd3cdc468 [43324]
		java.util.ArrayList @ 0xd3cdc4a8 [43325]
		java.lang.Object[10] @ 0xd3cdc4c0 [43326]
		org.apache.pig.data.BinSedesTuple @ 0xd3cdb838 [43258]
		java.util.ArrayList @ 0xd3cdc438 [43322]
		java.lang.Object[1] @ 0xd3cdc450 [43323]
		org.apache.pig.data.DefaultDataBag @ 0xd3cdb810 [43257]


