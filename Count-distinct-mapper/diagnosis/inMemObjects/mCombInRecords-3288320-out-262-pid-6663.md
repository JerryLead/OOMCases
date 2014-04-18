## Objects in Map Stage


### Framework Objects

| FrameworkObj 	| Inner object 	| shallowHeap 	| retainedHeap 	|
| :----------- | :----------- | -----------: | -----------: |
| kvbuffer	| byte[503316480] @ 0xc1800000	| 503,316,496	| 503,316,496	|
| kvindices	| int[23592960] @ 0xdf800010	| 94,371,856	| 94,371,856	|
| kvoffsets	| int[7864320] @ 0xe531d398	| 31,457,296	| 31,457,296	|


### User Objects

| User object | shallow heap | retained heap | length | inner object | inner size | threads | code() |
|:------------| ------------:| -------------:| ------:|:------------ | ----------:| :------ | :------|
| java.lang.Object[3] @ 0xe7257da0 | 32 | 77,251,840 | 2 | org.apache.pig.data.InternalCachedBag @ 0xe7257dc0 | 57,872,336 | SpillThread | combine |
| org.apache.pig.impl.util.SpillableMemoryManager @ 0xe52a18e0 | 24 | 15,934,992 | 1 |  | | main | premap + map |

### User objects => Threads and code() 

[java.lang.Object[3] @ 0xe7257da0] =>

	|------ in combine() in SpillThread ------|
	at org.apache.pig.backend.hadoop.executionengine.physicalLayer.relationalOperators.POCombinerPackage.getNext(Lorg/apache/pig/data/Tuple;)Lorg/apache/pig/backend/hadoop/executionengine/physicalLayer/Result; (POCombinerPackage.java:141)
		java.lang.Object[3] @ 0xe7257da0 [42356]


[org.apache.pig.impl.util.SpillableMemoryManager @ 0xe52a18e0] =>

	|------ in map() in main ------|
	at java.util.concurrent.locks.LockSupport.park(Ljava/lang/Object;)V (LockSupport.java:156)
		java.lang.Thread @ 0xe525a628  main [12176]
		sun.misc.Launcher$AppClassLoader @ 0xe52100a8 [7669]
		java.util.Vector @ 0xe52151a8 [8017]
		java.lang.Object[1280] @ 0xe52151c8 [8018]
		class org.apache.pig.data.BagFactory @ 0xbd357908 [6448]
		org.apache.pig.impl.util.SpillableMemoryManager @ 0xe52a18e0 [16691]

	|------ in premap() in main ------|
	at org.apache.hadoop.mapred.MapTask.runNewMapper(Lorg/apache/hadoop/mapred/JobConf;Lorg/apache/hadoop/mapreduce/split/JobSplit$TaskSplitIndex;Lorg/apache/hadoop/mapred/TaskUmbilicalProtocol;Lorg/apache/hadoop/mapred/Task$TaskReporter;)V (MapTask.java:779)
		org.apache.hadoop.mapred.JobConf @ 0xe525a350 [12158]
		sun.misc.Launcher$AppClassLoader @ 0xe52100a8 [7669]
		java.util.Vector @ 0xe52151a8 [8017]
		java.lang.Object[1280] @ 0xe52151c8 [8018]
		class org.apache.pig.data.BagFactory @ 0xbd357908 [6448]
		org.apache.pig.impl.util.SpillableMemoryManager @ 0xe52a18e0 [16691]


