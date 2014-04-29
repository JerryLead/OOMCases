## Objects in Reduce Stage

### Framework Objects

#### [SegmentsInCopy] => 

| FrameworkObj 	| Inner object 	| shallowHeap 	| retainedHeap 	| TaskId 	|
| :----------- | :----------- | -----------: | -----------: | -----------: |
| MapOutputCopier @ 0xd0db3638  MapOutputCopier attempt_201404152256_0003_r_000002_0.1	| byte[45751456] @ 0xbb11e448	| 45,751,472	| 45,751,472	|12	|

#### [SegmentsInList] => 

| FrameworkObj 	| Inner object 	| shallowHeap 	| retainedHeap 	| TaskId 	|
| :----------- | :----------- | -----------: | -----------: | -----------: |
| ReduceTask$ReduceCopier$MapOutput @ 0xd0fd4778	| byte[45672007] @ 0xd0fe9b78	| 45,672,024	| 45,672,024	|9	|

#### [SegmentsInMerge / SegmentsInBuffer] => 

| FrameworkObj 	| Inner object 	| shallowHeap 	| retainedHeap 	| TaskId 	|
| :----------- | :----------- | -----------: | -----------: | -----------: |
| Merger$Segment @ 0xd0fbce00	| byte[45691580] @ 0xce220368	| 45,691,600	| 45,691,600	|6	|
| Merger$Segment @ 0xd0fc1580	| byte[45724208] @ 0xa2400000	| 45,724,224	| 45,724,224	|16	|
| Merger$Segment @ 0xd0fc2080	| byte[21822891] @ 0xa6639890	| 21,822,912	| 21,822,912	|21	|
| Merger$Segment @ 0xd0fbd380	| byte[45691023] @ 0xc084d270	| 45,691,040	| 45,691,040	|8	|
| Merger$Segment @ 0xd0fbfa00	| byte[45743077] @ 0xa7b09650	| 45,743,096	| 45,743,096	|14	|
| Merger$Segment @ 0xd0fc1000	| byte[45684984] @ 0xb2e6a9f0	| 45,685,000	| 45,685,000	|0	|
| Merger$Segment @ 0xd0fc0a80	| byte[45608889] @ 0xb859f478	| 45,608,912	| 45,608,912	|13	|
| Merger$Segment @ 0xd0fc1b00	| byte[28400597] @ 0xb1354e08	| 28,400,616	| 28,400,616	|18	|
| Merger$Segment @ 0xd0fbd900	| byte[45600252] @ 0xc8afaca0	| 45,600,272	| 45,600,272	|15	|
| Merger$Segment @ 0xd0fbff80	| byte[45684858] @ 0xae7c3578	| 45,684,880	| 45,684,880	|5	|
| Merger$Segment @ 0xd0fbf480	| byte[45666662] @ 0xbdcc00f8	| 45,666,680	| 45,666,680	|7	|
| Merger$Segment @ 0xd0fbef00	| byte[45663253] @ 0xaa6a9248	| 45,663,272	| 45,663,272	|17	|
| Merger$Segment @ 0xd0fbe980	| byte[45684664] @ 0xc33e0310	| 45,684,680	| 45,684,680	|4	|
| Merger$Segment @ 0xd0fbe400	| byte[45650354] @ 0xc5f71ad8	| 45,650,376	| 45,650,376	|11	|
| Merger$Segment @ 0xd0fbde80	| byte[45744906] @ 0xcb677ab0	| 45,744,928	| 45,744,928	|10	|
| Merger$Segment @ 0xd0fc2b80	| byte[22601462] @ 0xad235670	| 22,601,480	| 22,601,480	|19	|
| Merger$Segment @ 0xd0fc2600	| byte[23717439] @ 0xa4f9b240	| 23,717,456	| 23,717,456	|20	|
| Merger$Segment @ 0xd0fc0500	| byte[45756784] @ 0xb59fc2f8	| 45,756,800	| 45,756,800	|3	|


#### [minSegment] => 

| FrameworkObj 	| Inner object 	| shallowHeap 	| retainedHeap 	| TaskId 	|
| :----------- | :----------- | -----------: | -----------: |-----------: |
| Merger$Segment @ 0xd0fbce00	| byte[45691580] @ 0xce220368	| 45,691,600	| 45,691,600	|6	|


#### [keySegment] => 

| FrameworkObj 	| Inner object 	| shallowHeap 	| retainedHeap 	|
| :----------- | :----------- | -----------: | -----------: |
| DataInputBuffer @ 0xd0fbd0a0	| byte[45691580] @ 0xce220368	| 45,691,600	| 45,691,600	|


### User Objects

| User object | shallow heap | retained heap | length | inner object | inner size | threads | code() |
|:------------| ------------:| -------------:| ------:|:------------ | ----------:| :------ | :------|
| org.apache.pig.data.DefaultDataBag @ 0xd45cd6b8 | 40 | 120,325,296 | 1 |  | | Thread for merging in memory files | combine |
| org.apache.pig.data.DefaultDataBag @ 0xd41f3eb8 | 40 | 4,021,312 | 1 |  | | Thread for merging in memory files | combine |

### User objects => Threads and code() 

[org.apache.pig.data.DefaultDataBag @ 0xd45cd6b8] =>

	|------ in combine() in Thread for merging in memory files ------|
	at org.apache.hadoop.mapred.Task$NewCombinerRunner.combine(Lorg/apache/hadoop/mapred/RawKeyValueIterator;Lorg/apache/hadoop/mapred/OutputCollector;)V (Task.java:1716)
		org.apache.hadoop.mapreduce.Reducer$Context @ 0xd0fbb6b0 [38377]
		org.apache.pig.impl.io.NullableTuple @ 0xd3b82458 [40785]
		org.apache.pig.data.BinSedesTuple @ 0xd3b82470 [40786]
		java.util.ArrayList @ 0xd3b82488 [40787]
		java.lang.Object[10] @ 0xd3b824a0 [40788]
		org.apache.pig.data.BinSedesTuple @ 0xd45cd670 [43230]
		java.util.ArrayList @ 0xd45cd688 [43231]
		java.lang.Object[1] @ 0xd45cd6a0 [43232]
		org.apache.pig.data.DefaultDataBag @ 0xd45cd6b8 [43233]

	at org.apache.hadoop.mapreduce.Reducer.run(Lorg/apache/hadoop/mapreduce/Reducer$Context;)V (Reducer.java:224)
		org.apache.hadoop.mapreduce.Reducer$Context @ 0xd0fbb6b0 [38377]
		org.apache.pig.impl.io.NullableTuple @ 0xd3b82458 [40785]
		org.apache.pig.data.BinSedesTuple @ 0xd3b82470 [40786]
		java.util.ArrayList @ 0xd3b82488 [40787]
		java.lang.Object[10] @ 0xd3b824a0 [40788]
		org.apache.pig.data.BinSedesTuple @ 0xd45cd670 [43230]
		java.util.ArrayList @ 0xd45cd688 [43231]
		java.lang.Object[1] @ 0xd45cd6a0 [43232]
		org.apache.pig.data.DefaultDataBag @ 0xd45cd6b8 [43233]

	at org.apache.pig.backend.hadoop.executionengine.mapReduceLayer.PigCombiner$Combine.reduce(Ljava/lang/Object;Ljava/lang/Iterable;Lorg/apache/hadoop/mapreduce/Reducer$Context;)V (PigCombiner.java:51)
		org.apache.hadoop.mapreduce.Reducer$Context @ 0xd0fbb6b0 [38377]
		org.apache.pig.impl.io.NullableTuple @ 0xd3b82458 [40785]
		org.apache.pig.data.BinSedesTuple @ 0xd3b82470 [40786]
		java.util.ArrayList @ 0xd3b82488 [40787]
		java.lang.Object[10] @ 0xd3b824a0 [40788]
		org.apache.pig.data.BinSedesTuple @ 0xd45cd670 [43230]
		java.util.ArrayList @ 0xd45cd688 [43231]
		java.lang.Object[1] @ 0xd45cd6a0 [43232]
		org.apache.pig.data.DefaultDataBag @ 0xd45cd6b8 [43233]

	at org.apache.pig.backend.hadoop.executionengine.mapReduceLayer.PigCombiner$Combine.reduce(Lorg/apache/pig/impl/io/PigNullableWritable;Ljava/lang/Iterable;Lorg/apache/hadoop/mapreduce/Reducer$Context;)V (PigCombiner.java:162)
		org.apache.hadoop.mapreduce.Reducer$Context @ 0xd0fbb6b0 [38377]
		org.apache.pig.impl.io.NullableTuple @ 0xd3b82458 [40785]
		org.apache.pig.data.BinSedesTuple @ 0xd3b82470 [40786]
		java.util.ArrayList @ 0xd3b82488 [40787]
		java.lang.Object[10] @ 0xd3b824a0 [40788]
		org.apache.pig.data.BinSedesTuple @ 0xd45cd670 [43230]
		java.util.ArrayList @ 0xd45cd688 [43231]
		java.lang.Object[1] @ 0xd45cd6a0 [43232]
		org.apache.pig.data.DefaultDataBag @ 0xd45cd6b8 [43233]

	at org.apache.pig.backend.hadoop.executionengine.mapReduceLayer.PigCombiner$Combine.processOnePackageOutput(Lorg/apache/hadoop/mapreduce/Reducer$Context;)Z (PigCombiner.java:171)
		org.apache.hadoop.mapreduce.Reducer$Context @ 0xd0fbb6b0 [38377]
		org.apache.pig.impl.io.NullableTuple @ 0xd3b82458 [40785]
		org.apache.pig.data.BinSedesTuple @ 0xd3b82470 [40786]
		java.util.ArrayList @ 0xd3b82488 [40787]
		java.lang.Object[10] @ 0xd3b824a0 [40788]
		org.apache.pig.data.BinSedesTuple @ 0xd45cd670 [43230]
		java.util.ArrayList @ 0xd45cd688 [43231]
		java.lang.Object[1] @ 0xd45cd6a0 [43232]
		org.apache.pig.data.DefaultDataBag @ 0xd45cd6b8 [43233]

	at org.apache.hadoop.mapreduce.ReduceContext.nextKeyValue()Z (ReduceContext.java:208)
		org.apache.hadoop.mapreduce.Reducer$Context @ 0xd0fbb6b0 [38377]
		org.apache.pig.impl.io.NullableTuple @ 0xd3b82458 [40785]
		org.apache.pig.data.BinSedesTuple @ 0xd3b82470 [40786]
		java.util.ArrayList @ 0xd3b82488 [40787]
		java.lang.Object[10] @ 0xd3b824a0 [40788]
		org.apache.pig.data.BinSedesTuple @ 0xd45cd670 [43230]
		java.util.ArrayList @ 0xd45cd688 [43231]
		java.lang.Object[1] @ 0xd45cd6a0 [43232]
		org.apache.pig.data.DefaultDataBag @ 0xd45cd6b8 [43233]


[org.apache.pig.data.DefaultDataBag @ 0xd41f3eb8] =>

	|------ in combine() in Thread for merging in memory files ------|
	at org.apache.pig.backend.hadoop.executionengine.physicalLayer.relationalOperators.POCombinerPackage.getNext(Lorg/apache/pig/data/Tuple;)Lorg/apache/pig/backend/hadoop/executionengine/physicalLayer/Result; (POCombinerPackage.java:141)
		java.lang.Object[3] @ 0xd3cbd578 [42971]
		org.apache.pig.data.InternalCachedBag @ 0xd3cbe0e0 [43033]
		java.util.ArrayList @ 0xd3cbe120 [43034]
		java.lang.Object[10] @ 0xd3cbe138 [43035]
		org.apache.pig.data.BinSedesTuple @ 0xd41f3ee0 [43098]
		java.util.ArrayList @ 0xd41f4790 [43130]
		java.lang.Object[1] @ 0xd41f47a8 [43131]
		org.apache.pig.data.DefaultDataBag @ 0xd41f3eb8 [43097]


