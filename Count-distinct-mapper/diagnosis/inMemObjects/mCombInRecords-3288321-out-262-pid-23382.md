## Objects in Map Stage


### Framework Objects

| FrameworkObj 	| Inner object 	| shallowHeap 	| retainedHeap 	|
| :----------- | :----------- | -----------: | -----------: |
| kvbuffer	| byte[503316480] @ 0xc1800000	| 503,316,496	| 503,316,496	|
| kvindices	| int[23592960] @ 0xdf800010	| 94,371,856	| 94,371,856	|
| kvoffsets	| int[7864320] @ 0xe522f6d8	| 31,457,296	| 31,457,296	|


### User Objects

| User object | shallow heap | retained heap | length | inner object | inner size | threads | code() |
|:------------| ------------:| -------------:| ------:|:------------ | ----------:| :------ | :------|
| java.lang.Object[3] @ 0xe7574230 | 32 | 77,251,912 | 2 | org.apache.pig.data.InternalCachedBag @ 0xe7574250 | 57,872,408 | SpillThread | combine |
| org.apache.pig.impl.util.SpillableMemoryManager @ 0xe7178dd0 | 24 | 15,935,016 | 1 |  | | main | premap + map |

### User objects => Threads and code() 

[java.lang.Object[3] @ 0xe7574230] =>

	|------ in combine() in SpillThread ------|
	at org.apache.pig.backend.hadoop.executionengine.physicalLayer.relationalOperators.POCombinerPackage.getNext(Lorg/apache/pig/data/Tuple;)Lorg/apache/pig/backend/hadoop/executionengine/physicalLayer/Result; (POCombinerPackage.java:141)
		java.lang.Object[3] @ 0xe7574230 [151883]


[org.apache.pig.impl.util.SpillableMemoryManager @ 0xe7178dd0] =>

	|------ in map() in main ------|
	at java.util.concurrent.locks.LockSupport.park(Ljava/lang/Object;)V (LockSupport.java:156)
		java.lang.Thread @ 0xe7033f40  main [10820]
		sun.misc.Launcher$AppClassLoader @ 0xe5203000 [6883]
		java.util.Vector @ 0xe5208bf0 [7282]
		java.lang.Object[1280] @ 0xe5208c10 [7283]
		class org.apache.pig.data.BagFactory @ 0xbd336ea8 [6003]
		org.apache.pig.impl.util.SpillableMemoryManager @ 0xe7178dd0 [29246]

	|------ in premap() in main ------|
	at org.apache.hadoop.mapred.MapTask.runNewMapper(Lorg/apache/hadoop/mapred/JobConf;Lorg/apache/hadoop/mapreduce/split/JobSplit$TaskSplitIndex;Lorg/apache/hadoop/mapred/TaskUmbilicalProtocol;Lorg/apache/hadoop/mapred/Task$TaskReporter;)V (MapTask.java:779)
		org.apache.hadoop.mapred.JobConf @ 0xe520bf88 [7438]
		sun.misc.Launcher$AppClassLoader @ 0xe5203000 [6883]
		java.util.Vector @ 0xe5208bf0 [7282]
		java.lang.Object[1280] @ 0xe5208c10 [7283]
		class org.apache.pig.data.BagFactory @ 0xbd336ea8 [6003]
		org.apache.pig.impl.util.SpillableMemoryManager @ 0xe7178dd0 [29246]


