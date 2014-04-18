## Objects in Map Stage


### Framework Objects

| FrameworkObj 	| Inner object 	| shallowHeap 	| retainedHeap 	|
| :----------- | :----------- | -----------: | -----------: |
| kvbuffer	| byte[503316480] @ 0xc1800000	| 503,316,496	| 503,316,496	|
| kvindices	| int[23592960] @ 0xdf800010	| 94,371,856	| 94,371,856	|
| kvoffsets	| int[7864320] @ 0xe52f7a48	| 31,457,296	| 31,457,296	|


### User Objects

| User object | shallow heap | retained heap | length | inner object | inner size | threads | code() |
|:------------| ------------:| -------------:| ------:|:------------ | ----------:| :------ | :------|
| org.apache.pig.data.BinSedesTuple @ 0xf0ca41e0 | 24 | 77,251,960 | 1 |  | | SpillThread | combine |
| org.apache.pig.data.InternalDistinctBag @ 0xf0ca4288 | 48 | 61,257,728 | 1 |  | | SpillThread | combine |
| byte[41418752] @ 0xf4713840 | 41,418,768 | 41,418,768 | 1 |  | | main + SpillThread | map + combine |
| org.apache.pig.impl.util.SpillableMemoryManager @ 0xe527c8c8 | 24 | 14,139,904 | 1 |  | | main | premap + map |

### User objects => Threads and code() 

[byte[41418752] @ 0xf4713840] =>

	|------ in map() in main ------|
	at org.apache.hadoop.mapred.MapTask$MapOutputBuffer.collect(Ljava/lang/Object;Ljava/lang/Object;I)V (MapTask.java:1101)
		org.apache.hadoop.mapred.MapTask$MapOutputBuffer @ 0xe52f6f50 [19719]
		org.apache.hadoop.mapred.Task$CombineOutputCollector @ 0xe52f71a0 [19734]
		org.apache.hadoop.mapred.IFile$Writer @ 0xe71c22e8 [34971]
		org.apache.hadoop.io.DataOutputBuffer @ 0xe71c2348 [34972]
		org.apache.hadoop.io.DataOutputBuffer$Buffer @ 0xe71c2368 [34973]
		byte[41418752] @ 0xf4713840  ..................i....70aabkiapsulgjjljhztyhfummveerjkfjkhtsijkdurmecwlbp.html...00aadyhriewcvlppvlwutehcmmxppvehheikdpbltyop.html..._0aafxgeumaeypogkxnxxxzktormtqoeppfvmlahxalwpacaxpyvnxghlytfoijexozjzzrxzctpdvpblnwyldfxbzc.html...)0aagpqqiswzkebgxdbhchg... [7421931]

	|------ in combine() in SpillThread ------|
	at org.apache.hadoop.mapred.Task$NewCombinerRunner.combine(Lorg/apache/hadoop/mapred/RawKeyValueIterator;Lorg/apache/hadoop/mapred/OutputCollector;)V (Task.java:1716)
		org.apache.hadoop.mapred.Task$CombineOutputCollector @ 0xe52f71a0 [19734]
		org.apache.hadoop.mapred.IFile$Writer @ 0xe71c22e8 [34971]
		org.apache.hadoop.io.DataOutputBuffer @ 0xe71c2348 [34972]
		org.apache.hadoop.io.DataOutputBuffer$Buffer @ 0xe71c2368 [34973]
		byte[41418752] @ 0xf4713840  ..................i....70aabkiapsulgjjljhztyhfummveerjkfjkhtsijkdurmecwlbp.html...00aadyhriewcvlppvlwutehcmmxppvehheikdpbltyop.html..._0aafxgeumaeypogkxnxxxzktormtqoeppfvmlahxalwpacaxpyvnxghlytfoijexozjzzrxzctpdvpblnwyldfxbzc.html...)0aagpqqiswzkebgxdbhchg... [7421931]

		org.apache.hadoop.mapred.Task$CombineOutputCollector @ 0xe52f71a0 [19734]
		org.apache.hadoop.mapred.IFile$Writer @ 0xe71c22e8 [34971]
		org.apache.hadoop.io.serializer.WritableSerialization$WritableSerializer @ 0xe71c2468 [34983]
		org.apache.hadoop.io.DataOutputBuffer @ 0xe71c2348 [34972]
		org.apache.hadoop.io.DataOutputBuffer$Buffer @ 0xe71c2368 [34973]
		byte[41418752] @ 0xf4713840  ..................i....70aabkiapsulgjjljhztyhfummveerjkfjkhtsijkdurmecwlbp.html...00aadyhriewcvlppvlwutehcmmxppvehheikdpbltyop.html..._0aafxgeumaeypogkxnxxxzktormtqoeppfvmlahxalwpacaxpyvnxghlytfoijexozjzzrxzctpdvpblnwyldfxbzc.html...)0aagpqqiswzkebgxdbhchg... [7421931]

		org.apache.hadoop.mapred.Task$CombineOutputCollector @ 0xe52f71a0 [19734]
		org.apache.hadoop.mapred.IFile$Writer @ 0xe71c22e8 [34971]
		org.apache.hadoop.io.serializer.WritableSerialization$WritableSerializer @ 0xe71c2458 [34982]
		org.apache.hadoop.io.DataOutputBuffer @ 0xe71c2348 [34972]
		org.apache.hadoop.io.DataOutputBuffer$Buffer @ 0xe71c2368 [34973]
		byte[41418752] @ 0xf4713840  ..................i....70aabkiapsulgjjljhztyhfummveerjkfjkhtsijkdurmecwlbp.html...00aadyhriewcvlppvlwutehcmmxppvehheikdpbltyop.html..._0aafxgeumaeypogkxnxxxzktormtqoeppfvmlahxalwpacaxpyvnxghlytfoijexozjzzrxzctpdvpblnwyldfxbzc.html...)0aagpqqiswzkebgxdbhchg... [7421931]

	at org.apache.hadoop.mapred.Task$NewCombinerRunner$OutputConverter.write(Ljava/lang/Object;Ljava/lang/Object;)V (Task.java:1695)
		org.apache.hadoop.mapred.Task$NewCombinerRunner$OutputConverter @ 0xe71c27b8 [34996]
		org.apache.hadoop.mapred.Task$CombineOutputCollector @ 0xe52f71a0 [19734]
		org.apache.hadoop.mapred.IFile$Writer @ 0xe71c22e8 [34971]
		org.apache.hadoop.io.DataOutputBuffer @ 0xe71c2348 [34972]
		org.apache.hadoop.io.DataOutputBuffer$Buffer @ 0xe71c2368 [34973]
		byte[41418752] @ 0xf4713840  ..................i....70aabkiapsulgjjljhztyhfummveerjkfjkhtsijkdurmecwlbp.html...00aadyhriewcvlppvlwutehcmmxppvehheikdpbltyop.html..._0aafxgeumaeypogkxnxxxzktormtqoeppfvmlahxalwpacaxpyvnxghlytfoijexozjzzrxzctpdvpblnwyldfxbzc.html...)0aagpqqiswzkebgxdbhchg... [7421931]

	at org.apache.hadoop.mapred.Task$CombineOutputCollector.collect(Ljava/lang/Object;Ljava/lang/Object;)V (Task.java:1305)
		org.apache.hadoop.mapred.Task$CombineOutputCollector @ 0xe52f71a0 [19734]
		org.apache.hadoop.mapred.IFile$Writer @ 0xe71c22e8 [34971]
		org.apache.hadoop.io.DataOutputBuffer @ 0xe71c2348 [34972]
		org.apache.hadoop.io.DataOutputBuffer$Buffer @ 0xe71c2368 [34973]
		byte[41418752] @ 0xf4713840  ..................i....70aabkiapsulgjjljhztyhfummveerjkfjkhtsijkdurmecwlbp.html...00aadyhriewcvlppvlwutehcmmxppvehheikdpbltyop.html..._0aafxgeumaeypogkxnxxxzktormtqoeppfvmlahxalwpacaxpyvnxghlytfoijexozjzzrxzctpdvpblnwyldfxbzc.html...)0aagpqqiswzkebgxdbhchg... [7421931]

		org.apache.hadoop.mapred.Task$CombineOutputCollector @ 0xe52f71a0 [19734]
		org.apache.hadoop.mapred.IFile$Writer @ 0xe71c22e8 [34971]
		org.apache.hadoop.io.serializer.WritableSerialization$WritableSerializer @ 0xe71c2468 [34983]
		org.apache.hadoop.io.DataOutputBuffer @ 0xe71c2348 [34972]
		org.apache.hadoop.io.DataOutputBuffer$Buffer @ 0xe71c2368 [34973]
		byte[41418752] @ 0xf4713840  ..................i....70aabkiapsulgjjljhztyhfummveerjkfjkhtsijkdurmecwlbp.html...00aadyhriewcvlppvlwutehcmmxppvehheikdpbltyop.html..._0aafxgeumaeypogkxnxxxzktormtqoeppfvmlahxalwpacaxpyvnxghlytfoijexozjzzrxzctpdvpblnwyldfxbzc.html...)0aagpqqiswzkebgxdbhchg... [7421931]

		org.apache.hadoop.mapred.Task$CombineOutputCollector @ 0xe52f71a0 [19734]
		org.apache.hadoop.mapred.IFile$Writer @ 0xe71c22e8 [34971]
		org.apache.hadoop.io.serializer.WritableSerialization$WritableSerializer @ 0xe71c2458 [34982]
		org.apache.hadoop.io.DataOutputBuffer @ 0xe71c2348 [34972]
		org.apache.hadoop.io.DataOutputBuffer$Buffer @ 0xe71c2368 [34973]
		byte[41418752] @ 0xf4713840  ..................i....70aabkiapsulgjjljhztyhfummveerjkfjkhtsijkdurmecwlbp.html...00aadyhriewcvlppvlwutehcmmxppvehheikdpbltyop.html..._0aafxgeumaeypogkxnxxxzktormtqoeppfvmlahxalwpacaxpyvnxghlytfoijexozjzzrxzctpdvpblnwyldfxbzc.html...)0aagpqqiswzkebgxdbhchg... [7421931]

	at org.apache.hadoop.mapred.IFile$Writer.append(Ljava/lang/Object;Ljava/lang/Object;)V (IFile.java:180)
		org.apache.hadoop.mapred.IFile$Writer @ 0xe71c22e8 [34971]
		org.apache.hadoop.io.DataOutputBuffer @ 0xe71c2348 [34972]
		org.apache.hadoop.io.DataOutputBuffer$Buffer @ 0xe71c2368 [34973]
		byte[41418752] @ 0xf4713840  ..................i....70aabkiapsulgjjljhztyhfummveerjkfjkhtsijkdurmecwlbp.html...00aadyhriewcvlppvlwutehcmmxppvehheikdpbltyop.html..._0aafxgeumaeypogkxnxxxzktormtqoeppfvmlahxalwpacaxpyvnxghlytfoijexozjzzrxzctpdvpblnwyldfxbzc.html...)0aagpqqiswzkebgxdbhchg... [7421931]

		org.apache.hadoop.mapred.IFile$Writer @ 0xe71c22e8 [34971]
		org.apache.hadoop.io.serializer.WritableSerialization$WritableSerializer @ 0xe71c2468 [34983]
		org.apache.hadoop.io.DataOutputBuffer @ 0xe71c2348 [34972]
		org.apache.hadoop.io.DataOutputBuffer$Buffer @ 0xe71c2368 [34973]
		byte[41418752] @ 0xf4713840  ..................i....70aabkiapsulgjjljhztyhfummveerjkfjkhtsijkdurmecwlbp.html...00aadyhriewcvlppvlwutehcmmxppvehheikdpbltyop.html..._0aafxgeumaeypogkxnxxxzktormtqoeppfvmlahxalwpacaxpyvnxghlytfoijexozjzzrxzctpdvpblnwyldfxbzc.html...)0aagpqqiswzkebgxdbhchg... [7421931]

		org.apache.hadoop.mapred.IFile$Writer @ 0xe71c22e8 [34971]
		org.apache.hadoop.io.serializer.WritableSerialization$WritableSerializer @ 0xe71c2458 [34982]
		org.apache.hadoop.io.DataOutputBuffer @ 0xe71c2348 [34972]
		org.apache.hadoop.io.DataOutputBuffer$Buffer @ 0xe71c2368 [34973]
		byte[41418752] @ 0xf4713840  ..................i....70aabkiapsulgjjljhztyhfummveerjkfjkhtsijkdurmecwlbp.html...00aadyhriewcvlppvlwutehcmmxppvehheikdpbltyop.html..._0aafxgeumaeypogkxnxxxzktormtqoeppfvmlahxalwpacaxpyvnxghlytfoijexozjzzrxzctpdvpblnwyldfxbzc.html...)0aagpqqiswzkebgxdbhchg... [7421931]

	at org.apache.pig.impl.io.PigNullableWritable.write(Ljava/io/DataOutput;)V (PigNullableWritable.java:123)
		org.apache.hadoop.io.DataOutputBuffer @ 0xe71c2348 [34972]
		org.apache.hadoop.io.DataOutputBuffer$Buffer @ 0xe71c2368 [34973]
		byte[41418752] @ 0xf4713840  ..................i....70aabkiapsulgjjljhztyhfummveerjkfjkhtsijkdurmecwlbp.html...00aadyhriewcvlppvlwutehcmmxppvehheikdpbltyop.html..._0aafxgeumaeypogkxnxxxzktormtqoeppfvmlahxalwpacaxpyvnxghlytfoijexozjzzrxzctpdvpblnwyldfxbzc.html...)0aagpqqiswzkebgxdbhchg... [7421931]

	at org.apache.pig.data.BinInterSedes.writeTuple(Ljava/io/DataOutput;Lorg/apache/pig/data/Tuple;)V (BinInterSedes.java:542)
		org.apache.hadoop.io.DataOutputBuffer @ 0xe71c2348 [34972]
		org.apache.hadoop.io.DataOutputBuffer$Buffer @ 0xe71c2368 [34973]
		byte[41418752] @ 0xf4713840  ..................i....70aabkiapsulgjjljhztyhfummveerjkfjkhtsijkdurmecwlbp.html...00aadyhriewcvlppvlwutehcmmxppvehheikdpbltyop.html..._0aafxgeumaeypogkxnxxxzktormtqoeppfvmlahxalwpacaxpyvnxghlytfoijexozjzzrxzctpdvpblnwyldfxbzc.html...)0aagpqqiswzkebgxdbhchg... [7421931]

		org.apache.hadoop.io.DataOutputBuffer @ 0xe71c2348 [34972]
		org.apache.hadoop.io.DataOutputBuffer$Buffer @ 0xe71c2368 [34973]
		byte[41418752] @ 0xf4713840  ..................i....70aabkiapsulgjjljhztyhfummveerjkfjkhtsijkdurmecwlbp.html...00aadyhriewcvlppvlwutehcmmxppvehheikdpbltyop.html..._0aafxgeumaeypogkxnxxxzktormtqoeppfvmlahxalwpacaxpyvnxghlytfoijexozjzzrxzctpdvpblnwyldfxbzc.html...)0aagpqqiswzkebgxdbhchg... [7421931]

	at org.apache.pig.data.BinInterSedes.writeBag(Ljava/io/DataOutput;Lorg/apache/pig/data/DataBag;)V (BinInterSedes.java:523)
		org.apache.hadoop.io.DataOutputBuffer @ 0xe71c2348 [34972]
		org.apache.hadoop.io.DataOutputBuffer$Buffer @ 0xe71c2368 [34973]
		byte[41418752] @ 0xf4713840  ..................i....70aabkiapsulgjjljhztyhfummveerjkfjkhtsijkdurmecwlbp.html...00aadyhriewcvlppvlwutehcmmxppvehheikdpbltyop.html..._0aafxgeumaeypogkxnxxxzktormtqoeppfvmlahxalwpacaxpyvnxghlytfoijexozjzzrxzctpdvpblnwyldfxbzc.html...)0aagpqqiswzkebgxdbhchg... [7421931]

	at org.apache.pig.data.BinInterSedes.writeTuple(Ljava/io/DataOutput;Lorg/apache/pig/data/Tuple;)V (BinInterSedes.java:542)
		org.apache.hadoop.io.DataOutputBuffer @ 0xe71c2348 [34972]
		org.apache.hadoop.io.DataOutputBuffer$Buffer @ 0xe71c2368 [34973]
		byte[41418752] @ 0xf4713840  ..................i....70aabkiapsulgjjljhztyhfummveerjkfjkhtsijkdurmecwlbp.html...00aadyhriewcvlppvlwutehcmmxppvehheikdpbltyop.html..._0aafxgeumaeypogkxnxxxzktormtqoeppfvmlahxalwpacaxpyvnxghlytfoijexozjzzrxzctpdvpblnwyldfxbzc.html...)0aagpqqiswzkebgxdbhchg... [7421931]

	at java.io.DataOutputStream.write([BII)V (DataOutputStream.java:90)
		org.apache.hadoop.io.DataOutputBuffer @ 0xe71c2348 [34972]
		org.apache.hadoop.io.DataOutputBuffer$Buffer @ 0xe71c2368 [34973]
		byte[41418752] @ 0xf4713840  ..................i....70aabkiapsulgjjljhztyhfummveerjkfjkhtsijkdurmecwlbp.html...00aadyhriewcvlppvlwutehcmmxppvehheikdpbltyop.html..._0aafxgeumaeypogkxnxxxzktormtqoeppfvmlahxalwpacaxpyvnxghlytfoijexozjzzrxzctpdvpblnwyldfxbzc.html...)0aagpqqiswzkebgxdbhchg... [7421931]

	at java.io.ByteArrayOutputStream.write([BII)V (ByteArrayOutputStream.java:94)
		org.apache.hadoop.io.DataOutputBuffer$Buffer @ 0xe71c2368 [34973]
		byte[41418752] @ 0xf4713840  ..................i....70aabkiapsulgjjljhztyhfummveerjkfjkhtsijkdurmecwlbp.html...00aadyhriewcvlppvlwutehcmmxppvehheikdpbltyop.html..._0aafxgeumaeypogkxnxxxzktormtqoeppfvmlahxalwpacaxpyvnxghlytfoijexozjzzrxzctpdvpblnwyldfxbzc.html...)0aagpqqiswzkebgxdbhchg... [7421931]

	at java.util.Arrays.copyOf([BI)[B (Arrays.java:2786)
		byte[41418752] @ 0xf4713840  ..................i....70aabkiapsulgjjljhztyhfummveerjkfjkhtsijkdurmecwlbp.html...00aadyhriewcvlppvlwutehcmmxppvehheikdpbltyop.html..._0aafxgeumaeypogkxnxxxzktormtqoeppfvmlahxalwpacaxpyvnxghlytfoijexozjzzrxzctpdvpblnwyldfxbzc.html...)0aagpqqiswzkebgxdbhchg... [7421931]


[org.apache.pig.data.BinSedesTuple @ 0xf0ca41e0] =>

	|------ in combine() in SpillThread ------|
	at org.apache.hadoop.mapred.Task$NewCombinerRunner.combine(Lorg/apache/hadoop/mapred/RawKeyValueIterator;Lorg/apache/hadoop/mapred/OutputCollector;)V (Task.java:1716)
		org.apache.pig.backend.hadoop.executionengine.mapReduceLayer.PigCombiner$Combine @ 0xe71c2788 [34995]
		org.apache.pig.backend.hadoop.executionengine.physicalLayer.relationalOperators.POLocalRearrange @ 0xe71e0f88 [37755]
		java.util.ArrayList @ 0xe71e1040 [37759]
		java.lang.Object[10] @ 0xe71e1058 [37760]
		org.apache.pig.backend.hadoop.executionengine.physicalLayer.relationalOperators.POForEach @ 0xe71df148 [37574]
		org.apache.pig.data.BinSedesTuple @ 0xf0ca41e0 [5563876]

		org.apache.pig.backend.hadoop.executionengine.mapReduceLayer.PigCombiner$Combine @ 0xe71c2788 [34995]
		org.apache.pig.backend.hadoop.executionengine.physicalLayer.PhysicalOperator[1] @ 0xe71e1e68 [37842]
		org.apache.pig.backend.hadoop.executionengine.physicalLayer.relationalOperators.POForEach @ 0xe71df148 [37574]
		org.apache.pig.data.BinSedesTuple @ 0xf0ca41e0 [5563876]

		org.apache.pig.backend.hadoop.executionengine.mapReduceLayer.PigCombiner$Combine @ 0xe71c2788 [34995]
		org.apache.pig.backend.hadoop.executionengine.physicalLayer.plans.PhysicalPlan @ 0xe71df080 [37570]
		java.util.ArrayList @ 0xe71e19a8 [37812]
		java.lang.Object[10] @ 0xe71e19c0 [37813]
		org.apache.pig.backend.hadoop.executionengine.physicalLayer.relationalOperators.POForEach @ 0xe71df148 [37574]
		org.apache.pig.data.BinSedesTuple @ 0xf0ca41e0 [5563876]

	at org.apache.hadoop.mapreduce.Reducer.run(Lorg/apache/hadoop/mapreduce/Reducer$Context;)V (Reducer.java:224)
		org.apache.pig.backend.hadoop.executionengine.mapReduceLayer.PigCombiner$Combine @ 0xe71c2788 [34995]
		org.apache.pig.backend.hadoop.executionengine.physicalLayer.relationalOperators.POLocalRearrange @ 0xe71e0f88 [37755]
		java.util.ArrayList @ 0xe71e1040 [37759]
		java.lang.Object[10] @ 0xe71e1058 [37760]
		org.apache.pig.backend.hadoop.executionengine.physicalLayer.relationalOperators.POForEach @ 0xe71df148 [37574]
		org.apache.pig.data.BinSedesTuple @ 0xf0ca41e0 [5563876]

		org.apache.pig.backend.hadoop.executionengine.mapReduceLayer.PigCombiner$Combine @ 0xe71c2788 [34995]
		org.apache.pig.backend.hadoop.executionengine.physicalLayer.PhysicalOperator[1] @ 0xe71e1e68 [37842]
		org.apache.pig.backend.hadoop.executionengine.physicalLayer.relationalOperators.POForEach @ 0xe71df148 [37574]
		org.apache.pig.data.BinSedesTuple @ 0xf0ca41e0 [5563876]

		org.apache.pig.backend.hadoop.executionengine.mapReduceLayer.PigCombiner$Combine @ 0xe71c2788 [34995]
		org.apache.pig.backend.hadoop.executionengine.physicalLayer.plans.PhysicalPlan @ 0xe71df080 [37570]
		java.util.ArrayList @ 0xe71e19a8 [37812]
		java.lang.Object[10] @ 0xe71e19c0 [37813]
		org.apache.pig.backend.hadoop.executionengine.physicalLayer.relationalOperators.POForEach @ 0xe71df148 [37574]
		org.apache.pig.data.BinSedesTuple @ 0xf0ca41e0 [5563876]

	at org.apache.pig.backend.hadoop.executionengine.mapReduceLayer.PigCombiner$Combine.reduce(Ljava/lang/Object;Ljava/lang/Iterable;Lorg/apache/hadoop/mapreduce/Reducer$Context;)V (PigCombiner.java:51)
		org.apache.pig.backend.hadoop.executionengine.mapReduceLayer.PigCombiner$Combine @ 0xe71c2788 [34995]
		org.apache.pig.backend.hadoop.executionengine.physicalLayer.relationalOperators.POLocalRearrange @ 0xe71e0f88 [37755]
		java.util.ArrayList @ 0xe71e1040 [37759]
		java.lang.Object[10] @ 0xe71e1058 [37760]
		org.apache.pig.backend.hadoop.executionengine.physicalLayer.relationalOperators.POForEach @ 0xe71df148 [37574]
		org.apache.pig.data.BinSedesTuple @ 0xf0ca41e0 [5563876]

		org.apache.pig.backend.hadoop.executionengine.mapReduceLayer.PigCombiner$Combine @ 0xe71c2788 [34995]
		org.apache.pig.backend.hadoop.executionengine.physicalLayer.PhysicalOperator[1] @ 0xe71e1e68 [37842]
		org.apache.pig.backend.hadoop.executionengine.physicalLayer.relationalOperators.POForEach @ 0xe71df148 [37574]
		org.apache.pig.data.BinSedesTuple @ 0xf0ca41e0 [5563876]

		org.apache.pig.backend.hadoop.executionengine.mapReduceLayer.PigCombiner$Combine @ 0xe71c2788 [34995]
		org.apache.pig.backend.hadoop.executionengine.physicalLayer.plans.PhysicalPlan @ 0xe71df080 [37570]
		java.util.ArrayList @ 0xe71e19a8 [37812]
		java.lang.Object[10] @ 0xe71e19c0 [37813]
		org.apache.pig.backend.hadoop.executionengine.physicalLayer.relationalOperators.POForEach @ 0xe71df148 [37574]
		org.apache.pig.data.BinSedesTuple @ 0xf0ca41e0 [5563876]

	at org.apache.pig.backend.hadoop.executionengine.mapReduceLayer.PigCombiner$Combine.reduce(Lorg/apache/pig/impl/io/PigNullableWritable;Ljava/lang/Iterable;Lorg/apache/hadoop/mapreduce/Reducer$Context;)V (PigCombiner.java:162)
		org.apache.pig.backend.hadoop.executionengine.mapReduceLayer.PigCombiner$Combine @ 0xe71c2788 [34995]
		org.apache.pig.backend.hadoop.executionengine.physicalLayer.relationalOperators.POLocalRearrange @ 0xe71e0f88 [37755]
		java.util.ArrayList @ 0xe71e1040 [37759]
		java.lang.Object[10] @ 0xe71e1058 [37760]
		org.apache.pig.backend.hadoop.executionengine.physicalLayer.relationalOperators.POForEach @ 0xe71df148 [37574]
		org.apache.pig.data.BinSedesTuple @ 0xf0ca41e0 [5563876]

		org.apache.pig.backend.hadoop.executionengine.mapReduceLayer.PigCombiner$Combine @ 0xe71c2788 [34995]
		org.apache.pig.backend.hadoop.executionengine.physicalLayer.PhysicalOperator[1] @ 0xe71e1e68 [37842]
		org.apache.pig.backend.hadoop.executionengine.physicalLayer.relationalOperators.POForEach @ 0xe71df148 [37574]
		org.apache.pig.data.BinSedesTuple @ 0xf0ca41e0 [5563876]

		org.apache.pig.backend.hadoop.executionengine.mapReduceLayer.PigCombiner$Combine @ 0xe71c2788 [34995]
		org.apache.pig.backend.hadoop.executionengine.physicalLayer.plans.PhysicalPlan @ 0xe71df080 [37570]
		java.util.ArrayList @ 0xe71e19a8 [37812]
		java.lang.Object[10] @ 0xe71e19c0 [37813]
		org.apache.pig.backend.hadoop.executionengine.physicalLayer.relationalOperators.POForEach @ 0xe71df148 [37574]
		org.apache.pig.data.BinSedesTuple @ 0xf0ca41e0 [5563876]

	at org.apache.pig.backend.hadoop.executionengine.mapReduceLayer.PigCombiner$Combine.processOnePackageOutput(Lorg/apache/hadoop/mapreduce/Reducer$Context;)Z (PigCombiner.java:200)
		org.apache.pig.backend.hadoop.executionengine.mapReduceLayer.PigCombiner$Combine @ 0xe71c2788 [34995]
		org.apache.pig.backend.hadoop.executionengine.physicalLayer.relationalOperators.POLocalRearrange @ 0xe71e0f88 [37755]
		java.util.ArrayList @ 0xe71e1040 [37759]
		java.lang.Object[10] @ 0xe71e1058 [37760]
		org.apache.pig.backend.hadoop.executionengine.physicalLayer.relationalOperators.POForEach @ 0xe71df148 [37574]
		org.apache.pig.data.BinSedesTuple @ 0xf0ca41e0 [5563876]

		org.apache.pig.backend.hadoop.executionengine.mapReduceLayer.PigCombiner$Combine @ 0xe71c2788 [34995]
		org.apache.pig.backend.hadoop.executionengine.physicalLayer.PhysicalOperator[1] @ 0xe71e1e68 [37842]
		org.apache.pig.backend.hadoop.executionengine.physicalLayer.relationalOperators.POForEach @ 0xe71df148 [37574]
		org.apache.pig.data.BinSedesTuple @ 0xf0ca41e0 [5563876]

		org.apache.pig.backend.hadoop.executionengine.mapReduceLayer.PigCombiner$Combine @ 0xe71c2788 [34995]
		org.apache.pig.backend.hadoop.executionengine.physicalLayer.plans.PhysicalPlan @ 0xe71df080 [37570]
		java.util.ArrayList @ 0xe71e19a8 [37812]
		java.lang.Object[10] @ 0xe71e19c0 [37813]
		org.apache.pig.backend.hadoop.executionengine.physicalLayer.relationalOperators.POForEach @ 0xe71df148 [37574]
		org.apache.pig.data.BinSedesTuple @ 0xf0ca41e0 [5563876]

		org.apache.pig.backend.hadoop.executionengine.physicalLayer.Result @ 0xf0ca4230 [5563879]
		org.apache.pig.data.BinSedesTuple @ 0xf0ca41e0 [5563876]

		org.apache.pig.data.BinSedesTuple @ 0xf0ca41e0 [5563876]


[org.apache.pig.impl.util.SpillableMemoryManager @ 0xe527c8c8] =>

	|------ in map() in main ------|
	at java.util.concurrent.locks.LockSupport.park(Ljava/lang/Object;)V (LockSupport.java:156)
		java.lang.Thread @ 0xe523e270  main [10896]
		sun.misc.Launcher$AppClassLoader @ 0xe52084e0 [7023]
		java.util.Vector @ 0xe520d5e0 [7371]
		java.lang.Object[1280] @ 0xe520d600 [7372]
		class org.apache.pig.data.BagFactory @ 0xbd336dc8 [5951]
		org.apache.pig.impl.util.SpillableMemoryManager @ 0xe527c8c8 [15275]

	|------ in premap() in main ------|
	at org.apache.hadoop.mapred.MapTask.runNewMapper(Lorg/apache/hadoop/mapred/JobConf;Lorg/apache/hadoop/mapreduce/split/JobSplit$TaskSplitIndex;Lorg/apache/hadoop/mapred/TaskUmbilicalProtocol;Lorg/apache/hadoop/mapred/Task$TaskReporter;)V (MapTask.java:779)
		org.apache.hadoop.mapred.JobConf @ 0xe523df98 [10878]
		sun.misc.Launcher$AppClassLoader @ 0xe52084e0 [7023]
		java.util.Vector @ 0xe520d5e0 [7371]
		java.lang.Object[1280] @ 0xe520d600 [7372]
		class org.apache.pig.data.BagFactory @ 0xbd336dc8 [5951]
		org.apache.pig.impl.util.SpillableMemoryManager @ 0xe527c8c8 [15275]


[org.apache.pig.data.InternalDistinctBag @ 0xf0ca4288] =>

	|------ in combine() in SpillThread ------|
	at org.apache.pig.data.BinInterSedes.writeTuple(Ljava/io/DataOutput;Lorg/apache/pig/data/Tuple;)V (BinInterSedes.java:542)
		org.apache.pig.data.BinSedesTuple @ 0xf45a65f0 [7421893]
		java.util.ArrayList @ 0xf45a6608 [7421894]
		java.lang.Object[1] @ 0xf45a6620 [7421895]
		org.apache.pig.data.InternalDistinctBag @ 0xf0ca4288 [5563882]


