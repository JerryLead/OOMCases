## Objects in Map Stage


### Framework Objects

| FrameworkObj 	| Inner object 	| shallowHeap 	| retainedHeap 	|
| :----------- | :----------- | -----------: | -----------: |
| kvbuffer	| byte[398458880] @ 0xc1800000	| 398,458,896	| 398,458,896	|
| kvindices	| int[3932160] @ 0xd9400010	| 15,728,656	| 15,728,656	|
| kvoffsets	| int[1310720] @ 0xdb897d00	| 5,242,896	| 5,242,896	|


### User Objects

| User object | shallow heap | retained heap | length | inner object | inner size | threads | code() |
|:------------| ------------:| -------------:| ------:|:------------ | ----------:| :------ | :------|
| mapper.WordCountOOM$InputDocumentsTokenizerMapper @ 0xdbdaba30 | 24 | 174,789,544 | 1 |  | | main | premap |

### User objects => Threads and code() 

[mapper.WordCountOOM$InputDocumentsTokenizerMapper @ 0xdbdaba30] =>

	|------ in premap() in main ------|
	at org.apache.hadoop.mapred.MapTask.runNewMapper(Lorg/apache/hadoop/mapred/JobConf;Lorg/apache/hadoop/mapreduce/split/JobSplit$TaskSplitIndex;Lorg/apache/hadoop/mapred/TaskUmbilicalProtocol;Lorg/apache/hadoop/mapred/Task$TaskReporter;)V (MapTask.java:779)
		mapper.WordCountOOM$InputDocumentsTokenizerMapper @ 0xdbdaba30 [281884]

	at org.apache.hadoop.mapreduce.Mapper.run(Lorg/apache/hadoop/mapreduce/Mapper$Context;)V (Mapper.java:199)
		mapper.WordCountOOM$InputDocumentsTokenizerMapper @ 0xdbdaba30 [281884]


