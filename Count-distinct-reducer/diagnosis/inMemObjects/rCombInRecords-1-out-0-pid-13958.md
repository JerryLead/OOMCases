## Objects in Reduce Stage

### Framework Objects

#### [SegmentsInCopy] => 

| FrameworkObj 	| Inner object 	| shallowHeap 	| retainedHeap 	| TaskId 	|
| :----------- | :----------- | -----------: | -----------: | -----------: |
| MapOutputCopier @ 0xd0dba4e0  MapOutputCopier attempt_201404152256_0003_r_000002_0.1	| byte[45751456] @ 0xbb11e448	| 45,751,472	| 45,751,472	|12	|

#### [SegmentsInList] => 

| FrameworkObj 	| Inner object 	| shallowHeap 	| retainedHeap 	| TaskId 	|
| :----------- | :----------- | -----------: | -----------: | -----------: |
| ReduceTask$ReduceCopier$MapOutput @ 0xd215c110	| byte[45672007] @ 0xd2177bc0	| 45,672,024	| 45,672,024	|9	|

#### [SegmentsInMerge / SegmentsInBuffer] => 

| FrameworkObj 	| Inner object 	| shallowHeap 	| retainedHeap 	| TaskId 	|
| :----------- | :----------- | -----------: | -----------: | -----------: |
| Merger$Segment @ 0xd2141110	| byte[22601462] @ 0xad235670	| 22,601,480	| 22,601,480	|19	|
| Merger$Segment @ 0xd2140b90	| byte[23717439] @ 0xa4f9b240	| 23,717,456	| 23,717,456	|20	|
| Merger$Segment @ 0xd2140610	| byte[21822891] @ 0xa6639890	| 21,822,912	| 21,822,912	|21	|
| Merger$Segment @ 0xd2140090	| byte[28400597] @ 0xb1354e08	| 28,400,616	| 28,400,616	|18	|
| Merger$Segment @ 0xd213fb10	| byte[45724208] @ 0xa2400000	| 45,724,224	| 45,724,224	|16	|
| Merger$Segment @ 0xd213f590	| byte[45684984] @ 0xb2e6a9f0	| 45,685,000	| 45,685,000	|0	|
| Merger$Segment @ 0xd213f010	| byte[45608889] @ 0xb859f478	| 45,608,912	| 45,608,912	|13	|
| Merger$Segment @ 0xd213ea90	| byte[45756784] @ 0xb59fc2f8	| 45,756,800	| 45,756,800	|3	|
| Merger$Segment @ 0xd213e510	| byte[45684858] @ 0xae7c3578	| 45,684,880	| 45,684,880	|5	|
| Merger$Segment @ 0xd213df90	| byte[45743077] @ 0xa7b09650	| 45,743,096	| 45,743,096	|14	|
| Merger$Segment @ 0xd213da10	| byte[45666662] @ 0xbdcc00f8	| 45,666,680	| 45,666,680	|7	|
| Merger$Segment @ 0xd213d490	| byte[45663253] @ 0xaa6a9248	| 45,663,272	| 45,663,272	|17	|
| Merger$Segment @ 0xd213cf10	| byte[45684664] @ 0xc33e0310	| 45,684,680	| 45,684,680	|4	|
| Merger$Segment @ 0xd213c990	| byte[45650354] @ 0xc5f71ad8	| 45,650,376	| 45,650,376	|11	|
| Merger$Segment @ 0xd213c410	| byte[45744906] @ 0xcb677ab0	| 45,744,928	| 45,744,928	|10	|
| Merger$Segment @ 0xd213be90	| byte[45600252] @ 0xc8afaca0	| 45,600,272	| 45,600,272	|15	|
| Merger$Segment @ 0xd213b910	| byte[45691023] @ 0xc084d270	| 45,691,040	| 45,691,040	|8	|
| Merger$Segment @ 0xd213b390	| byte[45691580] @ 0xce227210	| 45,691,600	| 45,691,600	|6	|


#### [minSegment] => 

| FrameworkObj 	| Inner object 	| shallowHeap 	| retainedHeap 	| TaskId 	|
| :----------- | :----------- | -----------: | -----------: |-----------: |
| Merger$Segment @ 0xd2141110	| byte[22601462] @ 0xad235670	| 22,601,480	| 22,601,480	|19	|


#### [keySegment] => 

| FrameworkObj 	| Inner object 	| shallowHeap 	| retainedHeap 	|
| :----------- | :----------- | -----------: | -----------: |
| DataInputBuffer @ 0xd2139ce0	| byte[22601462] @ 0xad235670	| 22,601,480	| 22,601,480	|


### User Objects

| User object | shallow heap | retained heap | length | inner object | inner size | threads | code() |
|:------------| ------------:| -------------:| ------:|:------------ | ----------:| :------ | :------|
| org.apache.pig.data.DefaultDataBag @ 0xd4d23120 | 40 | 37,234,256 | 1 |  | | Thread for merging in memory files | combine |

### User objects => Threads and code() 

[org.apache.pig.data.DefaultDataBag @ 0xd4d23120] =>

	|------ in combine() in Thread for merging in memory files ------|
	at org.apache.hadoop.mapred.Task$NewCombinerRunner.combine(Lorg/apache/hadoop/mapred/RawKeyValueIterator;Lorg/apache/hadoop/mapred/OutputCollector;)V (Task.java:1716)
		org.apache.hadoop.mapreduce.Reducer$Context @ 0xd2139c40 [597379]
		org.apache.pig.impl.io.NullableTuple @ 0xd4d22ff8 [601912]
		org.apache.pig.data.BinSedesTuple @ 0xd4d23010 [601913]
		java.util.ArrayList @ 0xd4d23028 [601914]
		java.lang.Object[10] @ 0xd4d23040 [601915]
		org.apache.pig.data.BinSedesTuple @ 0xd4d230d8 [601920]
		java.util.ArrayList @ 0xd4d230f0 [601921]
		java.lang.Object[1] @ 0xd4d23108 [601922]
		org.apache.pig.data.DefaultDataBag @ 0xd4d23120 [601923]

	at org.apache.hadoop.mapreduce.Reducer.run(Lorg/apache/hadoop/mapreduce/Reducer$Context;)V (Reducer.java:223)
		org.apache.hadoop.mapreduce.Reducer$Context @ 0xd2139c40 [597379]
		org.apache.pig.impl.io.NullableTuple @ 0xd4d22ff8 [601912]
		org.apache.pig.data.BinSedesTuple @ 0xd4d23010 [601913]
		java.util.ArrayList @ 0xd4d23028 [601914]
		java.lang.Object[10] @ 0xd4d23040 [601915]
		org.apache.pig.data.BinSedesTuple @ 0xd4d230d8 [601920]
		java.util.ArrayList @ 0xd4d230f0 [601921]
		java.lang.Object[1] @ 0xd4d23108 [601922]
		org.apache.pig.data.DefaultDataBag @ 0xd4d23120 [601923]

	at org.apache.hadoop.mapreduce.ReduceContext.nextKey()Z (ReduceContext.java:154)
		org.apache.hadoop.mapreduce.Reducer$Context @ 0xd2139c40 [597379]
		org.apache.pig.impl.io.NullableTuple @ 0xd4d22ff8 [601912]
		org.apache.pig.data.BinSedesTuple @ 0xd4d23010 [601913]
		java.util.ArrayList @ 0xd4d23028 [601914]
		java.lang.Object[10] @ 0xd4d23040 [601915]
		org.apache.pig.data.BinSedesTuple @ 0xd4d230d8 [601920]
		java.util.ArrayList @ 0xd4d230f0 [601921]
		java.lang.Object[1] @ 0xd4d23108 [601922]
		org.apache.pig.data.DefaultDataBag @ 0xd4d23120 [601923]

	at org.apache.hadoop.mapreduce.ReduceContext.nextKeyValue()Z (ReduceContext.java:208)
		org.apache.hadoop.mapreduce.Reducer$Context @ 0xd2139c40 [597379]
		org.apache.pig.impl.io.NullableTuple @ 0xd4d22ff8 [601912]
		org.apache.pig.data.BinSedesTuple @ 0xd4d23010 [601913]
		java.util.ArrayList @ 0xd4d23028 [601914]
		java.lang.Object[10] @ 0xd4d23040 [601915]
		org.apache.pig.data.BinSedesTuple @ 0xd4d230d8 [601920]
		java.util.ArrayList @ 0xd4d230f0 [601921]
		java.lang.Object[1] @ 0xd4d23108 [601922]
		org.apache.pig.data.DefaultDataBag @ 0xd4d23120 [601923]


