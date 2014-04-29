## Objects in Map Stage


### Framework Objects

| FrameworkObj 	| Inner object 	| shallowHeap 	| retainedHeap 	|
| :----------- | :----------- | -----------: | -----------: |
| kvbuffer	| byte[398458880] @ 0xc1800000	| 398,458,896	| 398,458,896	|
| kvindices	| int[3932160] @ 0xd9400010	| 15,728,656	| 15,728,656	|
| kvoffsets	| int[1310720] @ 0xdb736820	| 5,242,896	| 5,242,896	|


### User Objects

| User object | shallow heap | retained heap | length | inner object | inner size | threads | code() |
|:------------| ------------:| -------------:| ------:|:------------ | ----------:| :------ | :------|
| java.util.HashMap @ 0xdbc6f378 | 48 | 423,091,448 | 1,007,211 |  | | main | premap + map |

### User objects => Threads and code() 

[java.util.HashMap @ 0xdbc6f378] =>

	|------ in map() in main ------|
	at mapper.WordCountOOM$InputDocumentsTokenizerMapper.map(Ljava/lang/Object;Ljava/lang/Object;Lorg/apache/hadoop/mapreduce/Mapper$Context;)V (WordCountOOM.java:1)
		mapper.WordCountOOM$InputDocumentsTokenizerMapper @ 0xdbc543d0 [281781]
		java.util.HashMap @ 0xdbc6f378 [284385]

	at mapper.WordCountOOM$InputDocumentsTokenizerMapper.map(Ljava/lang/Object;Lorg/apache/hadoop/io/Text;Lorg/apache/hadoop/mapreduce/Mapper$Context;)V (WordCountOOM.java:49)
		mapper.WordCountOOM$InputDocumentsTokenizerMapper @ 0xdbc543d0 [281781]
		java.util.HashMap @ 0xdbc6f378 [284385]

	at java.util.HashMap.put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; (HashMap.java:372)
		java.util.HashMap @ 0xdbc6f378 [284385]

	|------ in premap() in main ------|
	at org.apache.hadoop.mapred.MapTask.runNewMapper(Lorg/apache/hadoop/mapred/JobConf;Lorg/apache/hadoop/mapreduce/split/JobSplit$TaskSplitIndex;Lorg/apache/hadoop/mapred/TaskUmbilicalProtocol;Lorg/apache/hadoop/mapred/Task$TaskReporter;)V (MapTask.java:779)
		mapper.WordCountOOM$InputDocumentsTokenizerMapper @ 0xdbc543d0 [281781]
		java.util.HashMap @ 0xdbc6f378 [284385]

	at org.apache.hadoop.mapreduce.Mapper.run(Lorg/apache/hadoop/mapreduce/Mapper$Context;)V (Mapper.java:181)
		mapper.WordCountOOM$InputDocumentsTokenizerMapper @ 0xdbc543d0 [281781]
		java.util.HashMap @ 0xdbc6f378 [284385]


