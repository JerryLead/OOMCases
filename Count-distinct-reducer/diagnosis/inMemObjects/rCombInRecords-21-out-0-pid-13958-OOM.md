## Objects in Reduce Stage

### Framework Objects

#### [SegmentsInCopy] => 


#### [SegmentsInList] => 

| FrameworkObj 	| Inner object 	| shallowHeap 	| retainedHeap 	| TaskId 	|
| :----------- | :----------- | -----------: | -----------: | -----------: |
| ReduceTask$ReduceCopier$MapOutput @ 0xd0db1a80	| byte[45751456] @ 0xbb11e448	| 45,751,472	| 45,751,472	|12	|
| ReduceTask$ReduceCopier$MapOutput @ 0xd4543b58	| byte[45691078] @ 0xd4543b90	| 45,691,096	| 45,691,096	|1	|
| ReduceTask$ReduceCopier$MapOutput @ 0xd74ad1a8	| byte[45679016] @ 0xd74ad1e0	| 45,679,032	| 45,679,032	|2	|
| ReduceTask$ReduceCopier$MapOutput @ 0xd0f5ec90	| byte[45672007] @ 0xd0f677e8	| 45,672,024	| 45,672,024	|9	|

#### [SegmentsInMerge / SegmentsInBuffer] => 

| FrameworkObj 	| Inner object 	| shallowHeap 	| retainedHeap 	| TaskId 	|
| :----------- | :----------- | -----------: | -----------: | -----------: |
| Merger$Segment @ 0xd0f55498	| byte[45744906] @ 0xcb677ab0	| 45,744,928	| 45,744,928	|10	|
| Merger$Segment @ 0xd0f57018	| byte[45743077] @ 0xa7b09650	| 45,743,096	| 45,743,096	|14	|
| Merger$Segment @ 0xd0f55a18	| byte[45650354] @ 0xc5f71ad8	| 45,650,376	| 45,650,376	|11	|
| Merger$Segment @ 0xd0f54998	| byte[45691023] @ 0xc084d270	| 45,691,040	| 45,691,040	|8	|
| Merger$Segment @ 0xd0f58b98	| byte[45724208] @ 0xa2400000	| 45,724,224	| 45,724,224	|16	|
| Merger$Segment @ 0xd0f58618	| byte[45684984] @ 0xb2e6a9f0	| 45,685,000	| 45,685,000	|0	|
| Merger$Segment @ 0xd0f58098	| byte[45608889] @ 0xb859f478	| 45,608,912	| 45,608,912	|13	|
| Merger$Segment @ 0xd0f59118	| byte[28400597] @ 0xb1354e08	| 28,400,616	| 28,400,616	|18	|
| Merger$Segment @ 0xd0f54f18	| byte[45600252] @ 0xc8afaca0	| 45,600,272	| 45,600,272	|15	|
| Merger$Segment @ 0xd0f57598	| byte[45684858] @ 0xae7c3578	| 45,684,880	| 45,684,880	|5	|
| Merger$Segment @ 0xd0f54418	| byte[45691580] @ 0xce21e7b0	| 45,691,600	| 45,691,600	|6	|
| Merger$Segment @ 0xd0f56a98	| byte[45666662] @ 0xbdcc00f8	| 45,666,680	| 45,666,680	|7	|
| Merger$Segment @ 0xd0f59698	| byte[21822891] @ 0xa6639890	| 21,822,912	| 21,822,912	|21	|
| Merger$Segment @ 0xd0f56518	| byte[45663253] @ 0xaa6a9248	| 45,663,272	| 45,663,272	|17	|
| Merger$Segment @ 0xd0f55f98	| byte[45684664] @ 0xc33e0310	| 45,684,680	| 45,684,680	|4	|
| Merger$Segment @ 0xd0f5a198	| byte[22601462] @ 0xad235670	| 22,601,480	| 22,601,480	|19	|
| Merger$Segment @ 0xd0f59c18	| byte[23717439] @ 0xa4f9b240	| 23,717,456	| 23,717,456	|20	|
| Merger$Segment @ 0xd0f57b18	| byte[45756784] @ 0xb59fc2f8	| 45,756,800	| 45,756,800	|3	|


#### [minSegment] => 

| FrameworkObj 	| Inner object 	| shallowHeap 	| retainedHeap 	| TaskId 	|
| :----------- | :----------- | -----------: | -----------: |-----------: |
| Merger$Segment @ 0xd0f55498	| byte[45744906] @ 0xcb677ab0	| 45,744,928	| 45,744,928	|10	|


#### [keySegment] => 

| FrameworkObj 	| Inner object 	| shallowHeap 	| retainedHeap 	|
| :----------- | :----------- | -----------: | -----------: |
| DataInputBuffer @ 0xd0f55738	| byte[45744906] @ 0xcb677ab0	| 45,744,928	| 45,744,928	|


### User Objects

| User object | shallow heap | retained heap | length | inner object | inner size | threads | code() |
|:------------| ------------:| -------------:| ------:|:------------ | ----------:| :------ | :------|
| byte[157286400] @ 0xe0c00000 | 157,286,416 | 157,286,416 | 1 |  | | Thread for merging in memory files | combine |
| org.apache.pig.data.InternalDistinctBag @ 0xd74acab0 | 48 | 24,271,976 | 1 |  | | Thread for merging in memory files | combine |
| org.apache.pig.data.DefaultDataBag @ 0xd4169e10 | 40 | 4,021,312 | 1 |  | | Thread for merging in memory files | combine |
| org.apache.pig.data.DefaultDataBag @ 0xd70d6cb0 | 40 | 4,021,312 | 1 |  | | Thread for merging in memory files | combine |

### User objects => Threads and code() 

[org.apache.pig.data.InternalDistinctBag @ 0xd74acab0] =>

	|------ in combine() in Thread for merging in memory files ------|
	at org.apache.hadoop.mapred.Task$NewCombinerRunner.combine(Lorg/apache/hadoop/mapred/RawKeyValueIterator;Lorg/apache/hadoop/mapred/OutputCollector;)V (Task.java:1716)
		org.apache.pig.backend.hadoop.executionengine.mapReduceLayer.PigCombiner$Combine @ 0xd0f52dc0 [34544]
		org.apache.pig.backend.hadoop.executionengine.physicalLayer.relationalOperators.POLocalRearrange @ 0xd0f60bd0 [35452]
		java.util.ArrayList @ 0xd0f60c50 [35454]
		java.lang.Object[10] @ 0xd0f60c68 [35455]
		org.apache.pig.backend.hadoop.executionengine.physicalLayer.relationalOperators.POForEach @ 0xd0f5a838 [34968]
		java.lang.Object[3] @ 0xdb6e06b0 [726051]
		org.apache.pig.data.BinSedesTuple @ 0xdb6e0608 [726044]
		java.util.ArrayList @ 0xdb6e0620 [726045]
		java.lang.Object[1] @ 0xdb6e0638 [726046]
		org.apache.pig.data.InternalDistinctBag @ 0xd74acab0 [38663]

		org.apache.pig.backend.hadoop.executionengine.mapReduceLayer.PigCombiner$Combine @ 0xd0f52dc0 [34544]
		org.apache.pig.backend.hadoop.executionengine.physicalLayer.relationalOperators.POLocalRearrange @ 0xd0f60bd0 [35452]
		java.util.ArrayList @ 0xd0f60c50 [35454]
		java.lang.Object[10] @ 0xd0f60c68 [35455]
		org.apache.pig.backend.hadoop.executionengine.physicalLayer.relationalOperators.POForEach @ 0xd0f5a838 [34968]
		java.lang.Object[3] @ 0xd74ac9f8 [38657]
		org.apache.pig.data.BinSedesTuple @ 0xdb6e0608 [726044]
		java.util.ArrayList @ 0xdb6e0620 [726045]
		java.lang.Object[1] @ 0xdb6e0638 [726046]
		org.apache.pig.data.InternalDistinctBag @ 0xd74acab0 [38663]

		org.apache.pig.backend.hadoop.executionengine.mapReduceLayer.PigCombiner$Combine @ 0xd0f52dc0 [34544]
		org.apache.pig.backend.hadoop.executionengine.physicalLayer.PhysicalOperator[1] @ 0xd0f61ac0 [35539]
		org.apache.pig.backend.hadoop.executionengine.physicalLayer.relationalOperators.POForEach @ 0xd0f5a838 [34968]
		java.lang.Object[3] @ 0xdb6e06b0 [726051]
		org.apache.pig.data.BinSedesTuple @ 0xdb6e0608 [726044]
		java.util.ArrayList @ 0xdb6e0620 [726045]
		java.lang.Object[1] @ 0xdb6e0638 [726046]
		org.apache.pig.data.InternalDistinctBag @ 0xd74acab0 [38663]

		org.apache.pig.backend.hadoop.executionengine.mapReduceLayer.PigCombiner$Combine @ 0xd0f52dc0 [34544]
		org.apache.pig.backend.hadoop.executionengine.physicalLayer.PhysicalOperator[1] @ 0xd0f61ac0 [35539]
		org.apache.pig.backend.hadoop.executionengine.physicalLayer.relationalOperators.POForEach @ 0xd0f5a838 [34968]
		java.lang.Object[3] @ 0xd74ac9f8 [38657]
		org.apache.pig.data.BinSedesTuple @ 0xdb6e0608 [726044]
		java.util.ArrayList @ 0xdb6e0620 [726045]
		java.lang.Object[1] @ 0xdb6e0638 [726046]
		org.apache.pig.data.InternalDistinctBag @ 0xd74acab0 [38663]

		org.apache.pig.backend.hadoop.executionengine.mapReduceLayer.PigCombiner$Combine @ 0xd0f52dc0 [34544]
		org.apache.pig.backend.hadoop.executionengine.physicalLayer.plans.PhysicalPlan @ 0xd0f5a750 [34963]
		java.util.ArrayList @ 0xd0f61790 [35518]
		java.lang.Object[10] @ 0xd0f617a8 [35519]
		org.apache.pig.backend.hadoop.executionengine.physicalLayer.relationalOperators.POForEach @ 0xd0f5a838 [34968]
		java.lang.Object[3] @ 0xdb6e06b0 [726051]
		org.apache.pig.data.BinSedesTuple @ 0xdb6e0608 [726044]
		java.util.ArrayList @ 0xdb6e0620 [726045]
		java.lang.Object[1] @ 0xdb6e0638 [726046]
		org.apache.pig.data.InternalDistinctBag @ 0xd74acab0 [38663]

		org.apache.pig.backend.hadoop.executionengine.mapReduceLayer.PigCombiner$Combine @ 0xd0f52dc0 [34544]
		org.apache.pig.backend.hadoop.executionengine.physicalLayer.plans.PhysicalPlan @ 0xd0f5a750 [34963]
		java.util.ArrayList @ 0xd0f61790 [35518]
		java.lang.Object[10] @ 0xd0f617a8 [35519]
		org.apache.pig.backend.hadoop.executionengine.physicalLayer.relationalOperators.POForEach @ 0xd0f5a838 [34968]
		java.lang.Object[3] @ 0xd74ac9f8 [38657]
		org.apache.pig.data.BinSedesTuple @ 0xdb6e0608 [726044]
		java.util.ArrayList @ 0xdb6e0620 [726045]
		java.lang.Object[1] @ 0xdb6e0638 [726046]
		org.apache.pig.data.InternalDistinctBag @ 0xd74acab0 [38663]

	at org.apache.hadoop.mapreduce.Reducer.run(Lorg/apache/hadoop/mapreduce/Reducer$Context;)V (Reducer.java:224)
		org.apache.pig.backend.hadoop.executionengine.mapReduceLayer.PigCombiner$Combine @ 0xd0f52dc0 [34544]
		org.apache.pig.backend.hadoop.executionengine.physicalLayer.relationalOperators.POLocalRearrange @ 0xd0f60bd0 [35452]
		java.util.ArrayList @ 0xd0f60c50 [35454]
		java.lang.Object[10] @ 0xd0f60c68 [35455]
		org.apache.pig.backend.hadoop.executionengine.physicalLayer.relationalOperators.POForEach @ 0xd0f5a838 [34968]
		java.lang.Object[3] @ 0xdb6e06b0 [726051]
		org.apache.pig.data.BinSedesTuple @ 0xdb6e0608 [726044]
		java.util.ArrayList @ 0xdb6e0620 [726045]
		java.lang.Object[1] @ 0xdb6e0638 [726046]
		org.apache.pig.data.InternalDistinctBag @ 0xd74acab0 [38663]

		org.apache.pig.backend.hadoop.executionengine.mapReduceLayer.PigCombiner$Combine @ 0xd0f52dc0 [34544]
		org.apache.pig.backend.hadoop.executionengine.physicalLayer.relationalOperators.POLocalRearrange @ 0xd0f60bd0 [35452]
		java.util.ArrayList @ 0xd0f60c50 [35454]
		java.lang.Object[10] @ 0xd0f60c68 [35455]
		org.apache.pig.backend.hadoop.executionengine.physicalLayer.relationalOperators.POForEach @ 0xd0f5a838 [34968]
		java.lang.Object[3] @ 0xd74ac9f8 [38657]
		org.apache.pig.data.BinSedesTuple @ 0xdb6e0608 [726044]
		java.util.ArrayList @ 0xdb6e0620 [726045]
		java.lang.Object[1] @ 0xdb6e0638 [726046]
		org.apache.pig.data.InternalDistinctBag @ 0xd74acab0 [38663]

		org.apache.pig.backend.hadoop.executionengine.mapReduceLayer.PigCombiner$Combine @ 0xd0f52dc0 [34544]
		org.apache.pig.backend.hadoop.executionengine.physicalLayer.PhysicalOperator[1] @ 0xd0f61ac0 [35539]
		org.apache.pig.backend.hadoop.executionengine.physicalLayer.relationalOperators.POForEach @ 0xd0f5a838 [34968]
		java.lang.Object[3] @ 0xdb6e06b0 [726051]
		org.apache.pig.data.BinSedesTuple @ 0xdb6e0608 [726044]
		java.util.ArrayList @ 0xdb6e0620 [726045]
		java.lang.Object[1] @ 0xdb6e0638 [726046]
		org.apache.pig.data.InternalDistinctBag @ 0xd74acab0 [38663]

		org.apache.pig.backend.hadoop.executionengine.mapReduceLayer.PigCombiner$Combine @ 0xd0f52dc0 [34544]
		org.apache.pig.backend.hadoop.executionengine.physicalLayer.PhysicalOperator[1] @ 0xd0f61ac0 [35539]
		org.apache.pig.backend.hadoop.executionengine.physicalLayer.relationalOperators.POForEach @ 0xd0f5a838 [34968]
		java.lang.Object[3] @ 0xd74ac9f8 [38657]
		org.apache.pig.data.BinSedesTuple @ 0xdb6e0608 [726044]
		java.util.ArrayList @ 0xdb6e0620 [726045]
		java.lang.Object[1] @ 0xdb6e0638 [726046]
		org.apache.pig.data.InternalDistinctBag @ 0xd74acab0 [38663]

		org.apache.pig.backend.hadoop.executionengine.mapReduceLayer.PigCombiner$Combine @ 0xd0f52dc0 [34544]
		org.apache.pig.backend.hadoop.executionengine.physicalLayer.plans.PhysicalPlan @ 0xd0f5a750 [34963]
		java.util.ArrayList @ 0xd0f61790 [35518]
		java.lang.Object[10] @ 0xd0f617a8 [35519]
		org.apache.pig.backend.hadoop.executionengine.physicalLayer.relationalOperators.POForEach @ 0xd0f5a838 [34968]
		java.lang.Object[3] @ 0xdb6e06b0 [726051]
		org.apache.pig.data.BinSedesTuple @ 0xdb6e0608 [726044]
		java.util.ArrayList @ 0xdb6e0620 [726045]
		java.lang.Object[1] @ 0xdb6e0638 [726046]
		org.apache.pig.data.InternalDistinctBag @ 0xd74acab0 [38663]

		org.apache.pig.backend.hadoop.executionengine.mapReduceLayer.PigCombiner$Combine @ 0xd0f52dc0 [34544]
		org.apache.pig.backend.hadoop.executionengine.physicalLayer.plans.PhysicalPlan @ 0xd0f5a750 [34963]
		java.util.ArrayList @ 0xd0f61790 [35518]
		java.lang.Object[10] @ 0xd0f617a8 [35519]
		org.apache.pig.backend.hadoop.executionengine.physicalLayer.relationalOperators.POForEach @ 0xd0f5a838 [34968]
		java.lang.Object[3] @ 0xd74ac9f8 [38657]
		org.apache.pig.data.BinSedesTuple @ 0xdb6e0608 [726044]
		java.util.ArrayList @ 0xdb6e0620 [726045]
		java.lang.Object[1] @ 0xdb6e0638 [726046]
		org.apache.pig.data.InternalDistinctBag @ 0xd74acab0 [38663]

	at org.apache.pig.backend.hadoop.executionengine.mapReduceLayer.PigCombiner$Combine.reduce(Ljava/lang/Object;Ljava/lang/Iterable;Lorg/apache/hadoop/mapreduce/Reducer$Context;)V (PigCombiner.java:51)
		org.apache.pig.backend.hadoop.executionengine.mapReduceLayer.PigCombiner$Combine @ 0xd0f52dc0 [34544]
		org.apache.pig.backend.hadoop.executionengine.physicalLayer.relationalOperators.POLocalRearrange @ 0xd0f60bd0 [35452]
		java.util.ArrayList @ 0xd0f60c50 [35454]
		java.lang.Object[10] @ 0xd0f60c68 [35455]
		org.apache.pig.backend.hadoop.executionengine.physicalLayer.relationalOperators.POForEach @ 0xd0f5a838 [34968]
		java.lang.Object[3] @ 0xdb6e06b0 [726051]
		org.apache.pig.data.BinSedesTuple @ 0xdb6e0608 [726044]
		java.util.ArrayList @ 0xdb6e0620 [726045]
		java.lang.Object[1] @ 0xdb6e0638 [726046]
		org.apache.pig.data.InternalDistinctBag @ 0xd74acab0 [38663]

		org.apache.pig.backend.hadoop.executionengine.mapReduceLayer.PigCombiner$Combine @ 0xd0f52dc0 [34544]
		org.apache.pig.backend.hadoop.executionengine.physicalLayer.relationalOperators.POLocalRearrange @ 0xd0f60bd0 [35452]
		java.util.ArrayList @ 0xd0f60c50 [35454]
		java.lang.Object[10] @ 0xd0f60c68 [35455]
		org.apache.pig.backend.hadoop.executionengine.physicalLayer.relationalOperators.POForEach @ 0xd0f5a838 [34968]
		java.lang.Object[3] @ 0xd74ac9f8 [38657]
		org.apache.pig.data.BinSedesTuple @ 0xdb6e0608 [726044]
		java.util.ArrayList @ 0xdb6e0620 [726045]
		java.lang.Object[1] @ 0xdb6e0638 [726046]
		org.apache.pig.data.InternalDistinctBag @ 0xd74acab0 [38663]

		org.apache.pig.backend.hadoop.executionengine.mapReduceLayer.PigCombiner$Combine @ 0xd0f52dc0 [34544]
		org.apache.pig.backend.hadoop.executionengine.physicalLayer.PhysicalOperator[1] @ 0xd0f61ac0 [35539]
		org.apache.pig.backend.hadoop.executionengine.physicalLayer.relationalOperators.POForEach @ 0xd0f5a838 [34968]
		java.lang.Object[3] @ 0xdb6e06b0 [726051]
		org.apache.pig.data.BinSedesTuple @ 0xdb6e0608 [726044]
		java.util.ArrayList @ 0xdb6e0620 [726045]
		java.lang.Object[1] @ 0xdb6e0638 [726046]
		org.apache.pig.data.InternalDistinctBag @ 0xd74acab0 [38663]

		org.apache.pig.backend.hadoop.executionengine.mapReduceLayer.PigCombiner$Combine @ 0xd0f52dc0 [34544]
		org.apache.pig.backend.hadoop.executionengine.physicalLayer.PhysicalOperator[1] @ 0xd0f61ac0 [35539]
		org.apache.pig.backend.hadoop.executionengine.physicalLayer.relationalOperators.POForEach @ 0xd0f5a838 [34968]
		java.lang.Object[3] @ 0xd74ac9f8 [38657]
		org.apache.pig.data.BinSedesTuple @ 0xdb6e0608 [726044]
		java.util.ArrayList @ 0xdb6e0620 [726045]
		java.lang.Object[1] @ 0xdb6e0638 [726046]
		org.apache.pig.data.InternalDistinctBag @ 0xd74acab0 [38663]

		org.apache.pig.backend.hadoop.executionengine.mapReduceLayer.PigCombiner$Combine @ 0xd0f52dc0 [34544]
		org.apache.pig.backend.hadoop.executionengine.physicalLayer.plans.PhysicalPlan @ 0xd0f5a750 [34963]
		java.util.ArrayList @ 0xd0f61790 [35518]
		java.lang.Object[10] @ 0xd0f617a8 [35519]
		org.apache.pig.backend.hadoop.executionengine.physicalLayer.relationalOperators.POForEach @ 0xd0f5a838 [34968]
		java.lang.Object[3] @ 0xdb6e06b0 [726051]
		org.apache.pig.data.BinSedesTuple @ 0xdb6e0608 [726044]
		java.util.ArrayList @ 0xdb6e0620 [726045]
		java.lang.Object[1] @ 0xdb6e0638 [726046]
		org.apache.pig.data.InternalDistinctBag @ 0xd74acab0 [38663]

		org.apache.pig.backend.hadoop.executionengine.mapReduceLayer.PigCombiner$Combine @ 0xd0f52dc0 [34544]
		org.apache.pig.backend.hadoop.executionengine.physicalLayer.plans.PhysicalPlan @ 0xd0f5a750 [34963]
		java.util.ArrayList @ 0xd0f61790 [35518]
		java.lang.Object[10] @ 0xd0f617a8 [35519]
		org.apache.pig.backend.hadoop.executionengine.physicalLayer.relationalOperators.POForEach @ 0xd0f5a838 [34968]
		java.lang.Object[3] @ 0xd74ac9f8 [38657]
		org.apache.pig.data.BinSedesTuple @ 0xdb6e0608 [726044]
		java.util.ArrayList @ 0xdb6e0620 [726045]
		java.lang.Object[1] @ 0xdb6e0638 [726046]
		org.apache.pig.data.InternalDistinctBag @ 0xd74acab0 [38663]

	at org.apache.pig.backend.hadoop.executionengine.mapReduceLayer.PigCombiner$Combine.reduce(Lorg/apache/pig/impl/io/PigNullableWritable;Ljava/lang/Iterable;Lorg/apache/hadoop/mapreduce/Reducer$Context;)V (PigCombiner.java:162)
		org.apache.pig.backend.hadoop.executionengine.mapReduceLayer.PigCombiner$Combine @ 0xd0f52dc0 [34544]
		org.apache.pig.backend.hadoop.executionengine.physicalLayer.relationalOperators.POLocalRearrange @ 0xd0f60bd0 [35452]
		java.util.ArrayList @ 0xd0f60c50 [35454]
		java.lang.Object[10] @ 0xd0f60c68 [35455]
		org.apache.pig.backend.hadoop.executionengine.physicalLayer.relationalOperators.POForEach @ 0xd0f5a838 [34968]
		java.lang.Object[3] @ 0xdb6e06b0 [726051]
		org.apache.pig.data.BinSedesTuple @ 0xdb6e0608 [726044]
		java.util.ArrayList @ 0xdb6e0620 [726045]
		java.lang.Object[1] @ 0xdb6e0638 [726046]
		org.apache.pig.data.InternalDistinctBag @ 0xd74acab0 [38663]

		org.apache.pig.backend.hadoop.executionengine.mapReduceLayer.PigCombiner$Combine @ 0xd0f52dc0 [34544]
		org.apache.pig.backend.hadoop.executionengine.physicalLayer.relationalOperators.POLocalRearrange @ 0xd0f60bd0 [35452]
		java.util.ArrayList @ 0xd0f60c50 [35454]
		java.lang.Object[10] @ 0xd0f60c68 [35455]
		org.apache.pig.backend.hadoop.executionengine.physicalLayer.relationalOperators.POForEach @ 0xd0f5a838 [34968]
		java.lang.Object[3] @ 0xd74ac9f8 [38657]
		org.apache.pig.data.BinSedesTuple @ 0xdb6e0608 [726044]
		java.util.ArrayList @ 0xdb6e0620 [726045]
		java.lang.Object[1] @ 0xdb6e0638 [726046]
		org.apache.pig.data.InternalDistinctBag @ 0xd74acab0 [38663]


[org.apache.pig.data.DefaultDataBag @ 0xd4169e10] =>

	|------ in combine() in Thread for merging in memory files ------|
	at org.apache.pig.backend.hadoop.executionengine.mapReduceLayer.PigCombiner$Combine.processOnePackageOutput(Lorg/apache/hadoop/mapreduce/Reducer$Context;)Z (PigCombiner.java:200)
		org.apache.pig.data.BinSedesTuple @ 0xd74ac970 [38652]
		java.util.ArrayList @ 0xd74ac988 [38653]
		java.lang.Object[3] @ 0xd74ac9a0 [38654]
		org.apache.pig.data.InternalCachedBag @ 0xd3c340d0 [38430]
		java.util.ArrayList @ 0xd3c34110 [38431]
		java.lang.Object[10] @ 0xd3c34128 [38432]
		org.apache.pig.data.BinSedesTuple @ 0xd4169e38 [38490]
		java.util.ArrayList @ 0xd416a648 [38518]
		java.lang.Object[1] @ 0xd416a660 [38519]
		org.apache.pig.data.DefaultDataBag @ 0xd4169e10 [38489]


[byte[157286400] @ 0xe0c00000] =>

	|------ in combine() in Thread for merging in memory files ------|
	at org.apache.hadoop.mapred.Task$NewCombinerRunner.combine(Lorg/apache/hadoop/mapred/RawKeyValueIterator;Lorg/apache/hadoop/mapred/OutputCollector;)V (Task.java:1716)
		org.apache.hadoop.mapred.Task$CombineOutputCollector @ 0xd0e86ec8 [17634]
		org.apache.hadoop.mapred.IFile$Writer @ 0xd0f52e78 [34549]
		org.apache.hadoop.io.DataOutputBuffer @ 0xd0f54150 [34570]
		org.apache.hadoop.io.DataOutputBuffer$Buffer @ 0xd0f54170 [34571]
		byte[157286400] @ 0xe0c00000  .................8.[...30aaaxzndpkocmremjjqargwmxmrkepnrqornnfrdqgfcxj.html....0aadogwjsqwcbrjewdxolzsxvydkfmgqmgtbnqkgh.html....0aafcwusutgoizchjcwdk.html...X0aafhadhqkocxhrbthzfbtdhpnxflffjggpngsuxdjzarqckxbqzvtgkheqtkvcqcrdikyfnheozvqjtszs.html...S0aagc... [726654]

		org.apache.hadoop.mapred.Task$CombineOutputCollector @ 0xd0e86ec8 [17634]
		org.apache.hadoop.mapred.IFile$Writer @ 0xd0f52e78 [34549]
		org.apache.hadoop.io.serializer.WritableSerialization$WritableSerializer @ 0xd0f541a0 [34573]
		org.apache.hadoop.io.DataOutputBuffer @ 0xd0f54150 [34570]
		org.apache.hadoop.io.DataOutputBuffer$Buffer @ 0xd0f54170 [34571]
		byte[157286400] @ 0xe0c00000  .................8.[...30aaaxzndpkocmremjjqargwmxmrkepnrqornnfrdqgfcxj.html....0aadogwjsqwcbrjewdxolzsxvydkfmgqmgtbnqkgh.html....0aafcwusutgoizchjcwdk.html...X0aafhadhqkocxhrbthzfbtdhpnxflffjggpngsuxdjzarqckxbqzvtgkheqtkvcqcrdikyfnheozvqjtszs.html...S0aagc... [726654]

		org.apache.hadoop.mapred.Task$CombineOutputCollector @ 0xd0e86ec8 [17634]
		org.apache.hadoop.mapred.IFile$Writer @ 0xd0f52e78 [34549]
		org.apache.hadoop.io.serializer.WritableSerialization$WritableSerializer @ 0xd0f54140 [34569]
		org.apache.hadoop.io.DataOutputBuffer @ 0xd0f54150 [34570]
		org.apache.hadoop.io.DataOutputBuffer$Buffer @ 0xd0f54170 [34571]
		byte[157286400] @ 0xe0c00000  .................8.[...30aaaxzndpkocmremjjqargwmxmrkepnrqornnfrdqgfcxj.html....0aadogwjsqwcbrjewdxolzsxvydkfmgqmgtbnqkgh.html....0aafcwusutgoizchjcwdk.html...X0aafhadhqkocxhrbthzfbtdhpnxflffjggpngsuxdjzarqckxbqzvtgkheqtkvcqcrdikyfnheozvqjtszs.html...S0aagc... [726654]

		org.apache.pig.backend.hadoop.executionengine.mapReduceLayer.PigCombiner$Combine @ 0xd0f52dc0 [34544]
		org.apache.pig.backend.hadoop.executionengine.mapReduceLayer.ProgressableReporter @ 0xd0f61ab0 [35538]
		org.apache.hadoop.mapreduce.Reducer$Context @ 0xd0f52cf8 [34542]
		org.apache.hadoop.mapred.Task$NewCombinerRunner$OutputConverter @ 0xd3c27ca8 [37280]
		org.apache.hadoop.mapred.Task$CombineOutputCollector @ 0xd0e86ec8 [17634]
		org.apache.hadoop.mapred.IFile$Writer @ 0xd0f52e78 [34549]
		org.apache.hadoop.io.DataOutputBuffer @ 0xd0f54150 [34570]
		org.apache.hadoop.io.DataOutputBuffer$Buffer @ 0xd0f54170 [34571]
		byte[157286400] @ 0xe0c00000  .................8.[...30aaaxzndpkocmremjjqargwmxmrkepnrqornnfrdqgfcxj.html....0aadogwjsqwcbrjewdxolzsxvydkfmgqmgtbnqkgh.html....0aafcwusutgoizchjcwdk.html...X0aafhadhqkocxhrbthzfbtdhpnxflffjggpngsuxdjzarqckxbqzvtgkheqtkvcqcrdikyfnheozvqjtszs.html...S0aagc... [726654]

		org.apache.pig.backend.hadoop.executionengine.mapReduceLayer.PigCombiner$Combine @ 0xd0f52dc0 [34544]
		org.apache.pig.backend.hadoop.executionengine.mapReduceLayer.ProgressableReporter @ 0xd0f61ab0 [35538]
		org.apache.hadoop.mapreduce.Reducer$Context @ 0xd0f52cf8 [34542]
		org.apache.hadoop.mapred.Task$NewCombinerRunner$OutputConverter @ 0xd3c27ca8 [37280]
		org.apache.hadoop.mapred.Task$CombineOutputCollector @ 0xd0e86ec8 [17634]
		org.apache.hadoop.mapred.IFile$Writer @ 0xd0f52e78 [34549]
		org.apache.hadoop.io.serializer.WritableSerialization$WritableSerializer @ 0xd0f541a0 [34573]
		org.apache.hadoop.io.DataOutputBuffer @ 0xd0f54150 [34570]
		org.apache.hadoop.io.DataOutputBuffer$Buffer @ 0xd0f54170 [34571]
		byte[157286400] @ 0xe0c00000  .................8.[...30aaaxzndpkocmremjjqargwmxmrkepnrqornnfrdqgfcxj.html....0aadogwjsqwcbrjewdxolzsxvydkfmgqmgtbnqkgh.html....0aafcwusutgoizchjcwdk.html...X0aafhadhqkocxhrbthzfbtdhpnxflffjggpngsuxdjzarqckxbqzvtgkheqtkvcqcrdikyfnheozvqjtszs.html...S0aagc... [726654]

		org.apache.pig.backend.hadoop.executionengine.mapReduceLayer.PigCombiner$Combine @ 0xd0f52dc0 [34544]
		org.apache.pig.backend.hadoop.executionengine.mapReduceLayer.ProgressableReporter @ 0xd0f61ab0 [35538]
		org.apache.hadoop.mapreduce.Reducer$Context @ 0xd0f52cf8 [34542]
		org.apache.hadoop.mapred.Task$NewCombinerRunner$OutputConverter @ 0xd3c27ca8 [37280]
		org.apache.hadoop.mapred.Task$CombineOutputCollector @ 0xd0e86ec8 [17634]
		org.apache.hadoop.mapred.IFile$Writer @ 0xd0f52e78 [34549]
		org.apache.hadoop.io.serializer.WritableSerialization$WritableSerializer @ 0xd0f54140 [34569]
		org.apache.hadoop.io.DataOutputBuffer @ 0xd0f54150 [34570]
		org.apache.hadoop.io.DataOutputBuffer$Buffer @ 0xd0f54170 [34571]
		byte[157286400] @ 0xe0c00000  .................8.[...30aaaxzndpkocmremjjqargwmxmrkepnrqornnfrdqgfcxj.html....0aadogwjsqwcbrjewdxolzsxvydkfmgqmgtbnqkgh.html....0aafcwusutgoizchjcwdk.html...X0aafhadhqkocxhrbthzfbtdhpnxflffjggpngsuxdjzarqckxbqzvtgkheqtkvcqcrdikyfnheozvqjtszs.html...S0aagc... [726654]

		org.apache.hadoop.mapreduce.Reducer$Context @ 0xd0f52cf8 [34542]
		org.apache.hadoop.mapred.Task$NewCombinerRunner$OutputConverter @ 0xd3c27ca8 [37280]
		org.apache.hadoop.mapred.Task$CombineOutputCollector @ 0xd0e86ec8 [17634]
		org.apache.hadoop.mapred.IFile$Writer @ 0xd0f52e78 [34549]
		org.apache.hadoop.io.DataOutputBuffer @ 0xd0f54150 [34570]
		org.apache.hadoop.io.DataOutputBuffer$Buffer @ 0xd0f54170 [34571]
		byte[157286400] @ 0xe0c00000  .................8.[...30aaaxzndpkocmremjjqargwmxmrkepnrqornnfrdqgfcxj.html....0aadogwjsqwcbrjewdxolzsxvydkfmgqmgtbnqkgh.html....0aafcwusutgoizchjcwdk.html...X0aafhadhqkocxhrbthzfbtdhpnxflffjggpngsuxdjzarqckxbqzvtgkheqtkvcqcrdikyfnheozvqjtszs.html...S0aagc... [726654]

		org.apache.hadoop.mapreduce.Reducer$Context @ 0xd0f52cf8 [34542]
		org.apache.hadoop.mapred.Task$NewCombinerRunner$OutputConverter @ 0xd3c27ca8 [37280]
		org.apache.hadoop.mapred.Task$CombineOutputCollector @ 0xd0e86ec8 [17634]
		org.apache.hadoop.mapred.IFile$Writer @ 0xd0f52e78 [34549]
		org.apache.hadoop.io.serializer.WritableSerialization$WritableSerializer @ 0xd0f541a0 [34573]
		org.apache.hadoop.io.DataOutputBuffer @ 0xd0f54150 [34570]
		org.apache.hadoop.io.DataOutputBuffer$Buffer @ 0xd0f54170 [34571]
		byte[157286400] @ 0xe0c00000  .................8.[...30aaaxzndpkocmremjjqargwmxmrkepnrqornnfrdqgfcxj.html....0aadogwjsqwcbrjewdxolzsxvydkfmgqmgtbnqkgh.html....0aafcwusutgoizchjcwdk.html...X0aafhadhqkocxhrbthzfbtdhpnxflffjggpngsuxdjzarqckxbqzvtgkheqtkvcqcrdikyfnheozvqjtszs.html...S0aagc... [726654]

		org.apache.hadoop.mapreduce.Reducer$Context @ 0xd0f52cf8 [34542]
		org.apache.hadoop.mapred.Task$NewCombinerRunner$OutputConverter @ 0xd3c27ca8 [37280]
		org.apache.hadoop.mapred.Task$CombineOutputCollector @ 0xd0e86ec8 [17634]
		org.apache.hadoop.mapred.IFile$Writer @ 0xd0f52e78 [34549]
		org.apache.hadoop.io.serializer.WritableSerialization$WritableSerializer @ 0xd0f54140 [34569]
		org.apache.hadoop.io.DataOutputBuffer @ 0xd0f54150 [34570]
		org.apache.hadoop.io.DataOutputBuffer$Buffer @ 0xd0f54170 [34571]
		byte[157286400] @ 0xe0c00000  .................8.[...30aaaxzndpkocmremjjqargwmxmrkepnrqornnfrdqgfcxj.html....0aadogwjsqwcbrjewdxolzsxvydkfmgqmgtbnqkgh.html....0aafcwusutgoizchjcwdk.html...X0aafhadhqkocxhrbthzfbtdhpnxflffjggpngsuxdjzarqckxbqzvtgkheqtkvcqcrdikyfnheozvqjtszs.html...S0aagc... [726654]

	at org.apache.hadoop.mapreduce.Reducer.run(Lorg/apache/hadoop/mapreduce/Reducer$Context;)V (Reducer.java:224)
		org.apache.pig.backend.hadoop.executionengine.mapReduceLayer.PigCombiner$Combine @ 0xd0f52dc0 [34544]
		org.apache.pig.backend.hadoop.executionengine.mapReduceLayer.ProgressableReporter @ 0xd0f61ab0 [35538]
		org.apache.hadoop.mapreduce.Reducer$Context @ 0xd0f52cf8 [34542]
		org.apache.hadoop.mapred.Task$NewCombinerRunner$OutputConverter @ 0xd3c27ca8 [37280]
		org.apache.hadoop.mapred.Task$CombineOutputCollector @ 0xd0e86ec8 [17634]
		org.apache.hadoop.mapred.IFile$Writer @ 0xd0f52e78 [34549]
		org.apache.hadoop.io.DataOutputBuffer @ 0xd0f54150 [34570]
		org.apache.hadoop.io.DataOutputBuffer$Buffer @ 0xd0f54170 [34571]
		byte[157286400] @ 0xe0c00000  .................8.[...30aaaxzndpkocmremjjqargwmxmrkepnrqornnfrdqgfcxj.html....0aadogwjsqwcbrjewdxolzsxvydkfmgqmgtbnqkgh.html....0aafcwusutgoizchjcwdk.html...X0aafhadhqkocxhrbthzfbtdhpnxflffjggpngsuxdjzarqckxbqzvtgkheqtkvcqcrdikyfnheozvqjtszs.html...S0aagc... [726654]

		org.apache.pig.backend.hadoop.executionengine.mapReduceLayer.PigCombiner$Combine @ 0xd0f52dc0 [34544]
		org.apache.pig.backend.hadoop.executionengine.mapReduceLayer.ProgressableReporter @ 0xd0f61ab0 [35538]
		org.apache.hadoop.mapreduce.Reducer$Context @ 0xd0f52cf8 [34542]
		org.apache.hadoop.mapred.Task$NewCombinerRunner$OutputConverter @ 0xd3c27ca8 [37280]
		org.apache.hadoop.mapred.Task$CombineOutputCollector @ 0xd0e86ec8 [17634]
		org.apache.hadoop.mapred.IFile$Writer @ 0xd0f52e78 [34549]
		org.apache.hadoop.io.serializer.WritableSerialization$WritableSerializer @ 0xd0f541a0 [34573]
		org.apache.hadoop.io.DataOutputBuffer @ 0xd0f54150 [34570]
		org.apache.hadoop.io.DataOutputBuffer$Buffer @ 0xd0f54170 [34571]
		byte[157286400] @ 0xe0c00000  .................8.[...30aaaxzndpkocmremjjqargwmxmrkepnrqornnfrdqgfcxj.html....0aadogwjsqwcbrjewdxolzsxvydkfmgqmgtbnqkgh.html....0aafcwusutgoizchjcwdk.html...X0aafhadhqkocxhrbthzfbtdhpnxflffjggpngsuxdjzarqckxbqzvtgkheqtkvcqcrdikyfnheozvqjtszs.html...S0aagc... [726654]

		org.apache.pig.backend.hadoop.executionengine.mapReduceLayer.PigCombiner$Combine @ 0xd0f52dc0 [34544]
		org.apache.pig.backend.hadoop.executionengine.mapReduceLayer.ProgressableReporter @ 0xd0f61ab0 [35538]
		org.apache.hadoop.mapreduce.Reducer$Context @ 0xd0f52cf8 [34542]
		org.apache.hadoop.mapred.Task$NewCombinerRunner$OutputConverter @ 0xd3c27ca8 [37280]
		org.apache.hadoop.mapred.Task$CombineOutputCollector @ 0xd0e86ec8 [17634]
		org.apache.hadoop.mapred.IFile$Writer @ 0xd0f52e78 [34549]
		org.apache.hadoop.io.serializer.WritableSerialization$WritableSerializer @ 0xd0f54140 [34569]
		org.apache.hadoop.io.DataOutputBuffer @ 0xd0f54150 [34570]
		org.apache.hadoop.io.DataOutputBuffer$Buffer @ 0xd0f54170 [34571]
		byte[157286400] @ 0xe0c00000  .................8.[...30aaaxzndpkocmremjjqargwmxmrkepnrqornnfrdqgfcxj.html....0aadogwjsqwcbrjewdxolzsxvydkfmgqmgtbnqkgh.html....0aafcwusutgoizchjcwdk.html...X0aafhadhqkocxhrbthzfbtdhpnxflffjggpngsuxdjzarqckxbqzvtgkheqtkvcqcrdikyfnheozvqjtszs.html...S0aagc... [726654]

		org.apache.hadoop.mapreduce.Reducer$Context @ 0xd0f52cf8 [34542]
		org.apache.hadoop.mapred.Task$NewCombinerRunner$OutputConverter @ 0xd3c27ca8 [37280]
		org.apache.hadoop.mapred.Task$CombineOutputCollector @ 0xd0e86ec8 [17634]
		org.apache.hadoop.mapred.IFile$Writer @ 0xd0f52e78 [34549]
		org.apache.hadoop.io.DataOutputBuffer @ 0xd0f54150 [34570]
		org.apache.hadoop.io.DataOutputBuffer$Buffer @ 0xd0f54170 [34571]
		byte[157286400] @ 0xe0c00000  .................8.[...30aaaxzndpkocmremjjqargwmxmrkepnrqornnfrdqgfcxj.html....0aadogwjsqwcbrjewdxolzsxvydkfmgqmgtbnqkgh.html....0aafcwusutgoizchjcwdk.html...X0aafhadhqkocxhrbthzfbtdhpnxflffjggpngsuxdjzarqckxbqzvtgkheqtkvcqcrdikyfnheozvqjtszs.html...S0aagc... [726654]

		org.apache.hadoop.mapreduce.Reducer$Context @ 0xd0f52cf8 [34542]
		org.apache.hadoop.mapred.Task$NewCombinerRunner$OutputConverter @ 0xd3c27ca8 [37280]
		org.apache.hadoop.mapred.Task$CombineOutputCollector @ 0xd0e86ec8 [17634]
		org.apache.hadoop.mapred.IFile$Writer @ 0xd0f52e78 [34549]
		org.apache.hadoop.io.serializer.WritableSerialization$WritableSerializer @ 0xd0f541a0 [34573]
		org.apache.hadoop.io.DataOutputBuffer @ 0xd0f54150 [34570]
		org.apache.hadoop.io.DataOutputBuffer$Buffer @ 0xd0f54170 [34571]
		byte[157286400] @ 0xe0c00000  .................8.[...30aaaxzndpkocmremjjqargwmxmrkepnrqornnfrdqgfcxj.html....0aadogwjsqwcbrjewdxolzsxvydkfmgqmgtbnqkgh.html....0aafcwusutgoizchjcwdk.html...X0aafhadhqkocxhrbthzfbtdhpnxflffjggpngsuxdjzarqckxbqzvtgkheqtkvcqcrdikyfnheozvqjtszs.html...S0aagc... [726654]

		org.apache.hadoop.mapreduce.Reducer$Context @ 0xd0f52cf8 [34542]
		org.apache.hadoop.mapred.Task$NewCombinerRunner$OutputConverter @ 0xd3c27ca8 [37280]
		org.apache.hadoop.mapred.Task$CombineOutputCollector @ 0xd0e86ec8 [17634]
		org.apache.hadoop.mapred.IFile$Writer @ 0xd0f52e78 [34549]
		org.apache.hadoop.io.serializer.WritableSerialization$WritableSerializer @ 0xd0f54140 [34569]
		org.apache.hadoop.io.DataOutputBuffer @ 0xd0f54150 [34570]
		org.apache.hadoop.io.DataOutputBuffer$Buffer @ 0xd0f54170 [34571]
		byte[157286400] @ 0xe0c00000  .................8.[...30aaaxzndpkocmremjjqargwmxmrkepnrqornnfrdqgfcxj.html....0aadogwjsqwcbrjewdxolzsxvydkfmgqmgtbnqkgh.html....0aafcwusutgoizchjcwdk.html...X0aafhadhqkocxhrbthzfbtdhpnxflffjggpngsuxdjzarqckxbqzvtgkheqtkvcqcrdikyfnheozvqjtszs.html...S0aagc... [726654]

	at org.apache.pig.backend.hadoop.executionengine.mapReduceLayer.PigCombiner$Combine.reduce(Ljava/lang/Object;Ljava/lang/Iterable;Lorg/apache/hadoop/mapreduce/Reducer$Context;)V (PigCombiner.java:51)
		org.apache.pig.backend.hadoop.executionengine.mapReduceLayer.PigCombiner$Combine @ 0xd0f52dc0 [34544]
		org.apache.pig.backend.hadoop.executionengine.mapReduceLayer.ProgressableReporter @ 0xd0f61ab0 [35538]
		org.apache.hadoop.mapreduce.Reducer$Context @ 0xd0f52cf8 [34542]
		org.apache.hadoop.mapred.Task$NewCombinerRunner$OutputConverter @ 0xd3c27ca8 [37280]
		org.apache.hadoop.mapred.Task$CombineOutputCollector @ 0xd0e86ec8 [17634]
		org.apache.hadoop.mapred.IFile$Writer @ 0xd0f52e78 [34549]
		org.apache.hadoop.io.DataOutputBuffer @ 0xd0f54150 [34570]
		org.apache.hadoop.io.DataOutputBuffer$Buffer @ 0xd0f54170 [34571]
		byte[157286400] @ 0xe0c00000  .................8.[...30aaaxzndpkocmremjjqargwmxmrkepnrqornnfrdqgfcxj.html....0aadogwjsqwcbrjewdxolzsxvydkfmgqmgtbnqkgh.html....0aafcwusutgoizchjcwdk.html...X0aafhadhqkocxhrbthzfbtdhpnxflffjggpngsuxdjzarqckxbqzvtgkheqtkvcqcrdikyfnheozvqjtszs.html...S0aagc... [726654]

		org.apache.pig.backend.hadoop.executionengine.mapReduceLayer.PigCombiner$Combine @ 0xd0f52dc0 [34544]
		org.apache.pig.backend.hadoop.executionengine.mapReduceLayer.ProgressableReporter @ 0xd0f61ab0 [35538]
		org.apache.hadoop.mapreduce.Reducer$Context @ 0xd0f52cf8 [34542]
		org.apache.hadoop.mapred.Task$NewCombinerRunner$OutputConverter @ 0xd3c27ca8 [37280]
		org.apache.hadoop.mapred.Task$CombineOutputCollector @ 0xd0e86ec8 [17634]
		org.apache.hadoop.mapred.IFile$Writer @ 0xd0f52e78 [34549]
		org.apache.hadoop.io.serializer.WritableSerialization$WritableSerializer @ 0xd0f541a0 [34573]
		org.apache.hadoop.io.DataOutputBuffer @ 0xd0f54150 [34570]
		org.apache.hadoop.io.DataOutputBuffer$Buffer @ 0xd0f54170 [34571]
		byte[157286400] @ 0xe0c00000  .................8.[...30aaaxzndpkocmremjjqargwmxmrkepnrqornnfrdqgfcxj.html....0aadogwjsqwcbrjewdxolzsxvydkfmgqmgtbnqkgh.html....0aafcwusutgoizchjcwdk.html...X0aafhadhqkocxhrbthzfbtdhpnxflffjggpngsuxdjzarqckxbqzvtgkheqtkvcqcrdikyfnheozvqjtszs.html...S0aagc... [726654]

		org.apache.pig.backend.hadoop.executionengine.mapReduceLayer.PigCombiner$Combine @ 0xd0f52dc0 [34544]
		org.apache.pig.backend.hadoop.executionengine.mapReduceLayer.ProgressableReporter @ 0xd0f61ab0 [35538]
		org.apache.hadoop.mapreduce.Reducer$Context @ 0xd0f52cf8 [34542]
		org.apache.hadoop.mapred.Task$NewCombinerRunner$OutputConverter @ 0xd3c27ca8 [37280]
		org.apache.hadoop.mapred.Task$CombineOutputCollector @ 0xd0e86ec8 [17634]
		org.apache.hadoop.mapred.IFile$Writer @ 0xd0f52e78 [34549]
		org.apache.hadoop.io.serializer.WritableSerialization$WritableSerializer @ 0xd0f54140 [34569]
		org.apache.hadoop.io.DataOutputBuffer @ 0xd0f54150 [34570]
		org.apache.hadoop.io.DataOutputBuffer$Buffer @ 0xd0f54170 [34571]
		byte[157286400] @ 0xe0c00000  .................8.[...30aaaxzndpkocmremjjqargwmxmrkepnrqornnfrdqgfcxj.html....0aadogwjsqwcbrjewdxolzsxvydkfmgqmgtbnqkgh.html....0aafcwusutgoizchjcwdk.html...X0aafhadhqkocxhrbthzfbtdhpnxflffjggpngsuxdjzarqckxbqzvtgkheqtkvcqcrdikyfnheozvqjtszs.html...S0aagc... [726654]

		org.apache.hadoop.mapreduce.Reducer$Context @ 0xd0f52cf8 [34542]
		org.apache.hadoop.mapred.Task$NewCombinerRunner$OutputConverter @ 0xd3c27ca8 [37280]
		org.apache.hadoop.mapred.Task$CombineOutputCollector @ 0xd0e86ec8 [17634]
		org.apache.hadoop.mapred.IFile$Writer @ 0xd0f52e78 [34549]
		org.apache.hadoop.io.DataOutputBuffer @ 0xd0f54150 [34570]
		org.apache.hadoop.io.DataOutputBuffer$Buffer @ 0xd0f54170 [34571]
		byte[157286400] @ 0xe0c00000  .................8.[...30aaaxzndpkocmremjjqargwmxmrkepnrqornnfrdqgfcxj.html....0aadogwjsqwcbrjewdxolzsxvydkfmgqmgtbnqkgh.html....0aafcwusutgoizchjcwdk.html...X0aafhadhqkocxhrbthzfbtdhpnxflffjggpngsuxdjzarqckxbqzvtgkheqtkvcqcrdikyfnheozvqjtszs.html...S0aagc... [726654]

		org.apache.hadoop.mapreduce.Reducer$Context @ 0xd0f52cf8 [34542]
		org.apache.hadoop.mapred.Task$NewCombinerRunner$OutputConverter @ 0xd3c27ca8 [37280]
		org.apache.hadoop.mapred.Task$CombineOutputCollector @ 0xd0e86ec8 [17634]
		org.apache.hadoop.mapred.IFile$Writer @ 0xd0f52e78 [34549]
		org.apache.hadoop.io.serializer.WritableSerialization$WritableSerializer @ 0xd0f541a0 [34573]
		org.apache.hadoop.io.DataOutputBuffer @ 0xd0f54150 [34570]
		org.apache.hadoop.io.DataOutputBuffer$Buffer @ 0xd0f54170 [34571]
		byte[157286400] @ 0xe0c00000  .................8.[...30aaaxzndpkocmremjjqargwmxmrkepnrqornnfrdqgfcxj.html....0aadogwjsqwcbrjewdxolzsxvydkfmgqmgtbnqkgh.html....0aafcwusutgoizchjcwdk.html...X0aafhadhqkocxhrbthzfbtdhpnxflffjggpngsuxdjzarqckxbqzvtgkheqtkvcqcrdikyfnheozvqjtszs.html...S0aagc... [726654]


[org.apache.pig.data.DefaultDataBag @ 0xd70d6cb0] =>

	|------ in combine() in Thread for merging in memory files ------|
	at org.apache.hadoop.mapred.Task$NewCombinerRunner.combine(Lorg/apache/hadoop/mapred/RawKeyValueIterator;Lorg/apache/hadoop/mapred/OutputCollector;)V (Task.java:1716)
		org.apache.hadoop.mapreduce.Reducer$Context @ 0xd0f52cf8 [34542]
		org.apache.pig.impl.io.NullableTuple @ 0xd3afe0b8 [36644]
		org.apache.pig.data.BinSedesTuple @ 0xd3afe0d0 [36645]
		java.util.ArrayList @ 0xd3afe0e8 [36646]
		java.lang.Object[10] @ 0xd3afe100 [36647]
		org.apache.pig.data.BinSedesTuple @ 0xd70d6c68 [38641]
		java.util.ArrayList @ 0xd70d6c80 [38642]
		java.lang.Object[1] @ 0xd70d6c98 [38643]
		org.apache.pig.data.DefaultDataBag @ 0xd70d6cb0 [38644]

	at org.apache.hadoop.mapreduce.Reducer.run(Lorg/apache/hadoop/mapreduce/Reducer$Context;)V (Reducer.java:224)
		org.apache.hadoop.mapreduce.Reducer$Context @ 0xd0f52cf8 [34542]
		org.apache.pig.impl.io.NullableTuple @ 0xd3afe0b8 [36644]
		org.apache.pig.data.BinSedesTuple @ 0xd3afe0d0 [36645]
		java.util.ArrayList @ 0xd3afe0e8 [36646]
		java.lang.Object[10] @ 0xd3afe100 [36647]
		org.apache.pig.data.BinSedesTuple @ 0xd70d6c68 [38641]
		java.util.ArrayList @ 0xd70d6c80 [38642]
		java.lang.Object[1] @ 0xd70d6c98 [38643]
		org.apache.pig.data.DefaultDataBag @ 0xd70d6cb0 [38644]

	at org.apache.pig.backend.hadoop.executionengine.mapReduceLayer.PigCombiner$Combine.reduce(Ljava/lang/Object;Ljava/lang/Iterable;Lorg/apache/hadoop/mapreduce/Reducer$Context;)V (PigCombiner.java:51)
		org.apache.hadoop.mapreduce.Reducer$Context @ 0xd0f52cf8 [34542]
		org.apache.pig.impl.io.NullableTuple @ 0xd3afe0b8 [36644]
		org.apache.pig.data.BinSedesTuple @ 0xd3afe0d0 [36645]
		java.util.ArrayList @ 0xd3afe0e8 [36646]
		java.lang.Object[10] @ 0xd3afe100 [36647]
		org.apache.pig.data.BinSedesTuple @ 0xd70d6c68 [38641]
		java.util.ArrayList @ 0xd70d6c80 [38642]
		java.lang.Object[1] @ 0xd70d6c98 [38643]
		org.apache.pig.data.DefaultDataBag @ 0xd70d6cb0 [38644]

	at org.apache.pig.backend.hadoop.executionengine.mapReduceLayer.PigCombiner$Combine.reduce(Lorg/apache/pig/impl/io/PigNullableWritable;Ljava/lang/Iterable;Lorg/apache/hadoop/mapreduce/Reducer$Context;)V (PigCombiner.java:162)
		org.apache.hadoop.mapreduce.Reducer$Context @ 0xd0f52cf8 [34542]
		org.apache.pig.impl.io.NullableTuple @ 0xd3afe0b8 [36644]
		org.apache.pig.data.BinSedesTuple @ 0xd3afe0d0 [36645]
		java.util.ArrayList @ 0xd3afe0e8 [36646]
		java.lang.Object[10] @ 0xd3afe100 [36647]
		org.apache.pig.data.BinSedesTuple @ 0xd70d6c68 [38641]
		java.util.ArrayList @ 0xd70d6c80 [38642]
		java.lang.Object[1] @ 0xd70d6c98 [38643]
		org.apache.pig.data.DefaultDataBag @ 0xd70d6cb0 [38644]

	at org.apache.pig.backend.hadoop.executionengine.mapReduceLayer.PigCombiner$Combine.processOnePackageOutput(Lorg/apache/hadoop/mapreduce/Reducer$Context;)Z (PigCombiner.java:200)
		org.apache.hadoop.mapreduce.Reducer$Context @ 0xd0f52cf8 [34542]
		org.apache.pig.impl.io.NullableTuple @ 0xd3afe0b8 [36644]
		org.apache.pig.data.BinSedesTuple @ 0xd3afe0d0 [36645]
		java.util.ArrayList @ 0xd3afe0e8 [36646]
		java.lang.Object[10] @ 0xd3afe100 [36647]
		org.apache.pig.data.BinSedesTuple @ 0xd70d6c68 [38641]
		java.util.ArrayList @ 0xd70d6c80 [38642]
		java.lang.Object[1] @ 0xd70d6c98 [38643]
		org.apache.pig.data.DefaultDataBag @ 0xd70d6cb0 [38644]

	at org.apache.hadoop.mapreduce.TaskInputOutputContext.write(Ljava/lang/Object;Ljava/lang/Object;)V (TaskInputOutputContext.java:80)
		org.apache.hadoop.mapreduce.Reducer$Context @ 0xd0f52cf8 [34542]
		org.apache.pig.impl.io.NullableTuple @ 0xd3afe0b8 [36644]
		org.apache.pig.data.BinSedesTuple @ 0xd3afe0d0 [36645]
		java.util.ArrayList @ 0xd3afe0e8 [36646]
		java.lang.Object[10] @ 0xd3afe100 [36647]
		org.apache.pig.data.BinSedesTuple @ 0xd70d6c68 [38641]
		java.util.ArrayList @ 0xd70d6c80 [38642]
		java.lang.Object[1] @ 0xd70d6c98 [38643]
		org.apache.pig.data.DefaultDataBag @ 0xd70d6cb0 [38644]


