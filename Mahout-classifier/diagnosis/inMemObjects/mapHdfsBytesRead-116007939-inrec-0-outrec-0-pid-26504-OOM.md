## Objects in Map Stage


### Framework Objects

| FrameworkObj 	| Inner object 	| shallowHeap 	| retainedHeap 	|
| :----------- | :----------- | -----------: | -----------: |
| kvbuffer	| byte[498073600] @ 0xc1800000	| 498,073,616	| 498,073,616	|
| kvindices	| int[4915200] @ 0xdf300010	| 19,660,816	| 19,660,816	|
| kvoffsets	| int[1638400] @ 0xe268b9d8	| 6,553,616	| 6,553,616	|


### User Objects

| User object | shallow heap | retained heap | length | inner object | inner size | threads | code() |
|:------------| ------------:| -------------:| ------:|:------------ | ----------:| :------ | :------|
| org.apache.mahout.classifier.bayes.InMemoryBayesDatastore @ 0xe268b960 | 64 | 305,957,288 | 1 |  | | main | premap |
| java.lang.Object[978821] @ 0xf6751690 | 3,915,304 | 109,151,544 | 489,411 | org.apache.mahout.math.RandomAccessSparseVector @ 0xf3740e88 | 1,928 | main | premap |
| org.apache.mahout.math.map.OpenIntObjectHashMap @ 0xe2ccc3c8 | 56 | 7,244,504 | 1 |  | | main | premap |
| int[978821] @ 0xf6395868 | 3,915,304 | 3,915,304 | 1 |  | | main | premap |

### User objects => Threads and code() 

[org.apache.mahout.math.map.OpenIntObjectHashMap @ 0xe2ccc3c8] =>

	|------ in premap() in main ------|
	at org.apache.mahout.math.map.OpenIntObjectHashMap.put(ILjava/lang/Object;)Z (OpenIntObjectHashMap.java:384)
		org.apache.mahout.math.map.OpenIntObjectHashMap @ 0xe2ccc3c8 [986375]

	at org.apache.mahout.math.map.OpenIntObjectHashMap.rehash(I)V (OpenIntObjectHashMap.java:419)
		org.apache.mahout.math.map.OpenIntObjectHashMap @ 0xe2ccc3c8 [986375]


[org.apache.mahout.classifier.bayes.InMemoryBayesDatastore @ 0xe268b960] =>

	|------ in premap() in main ------|
	at org.apache.hadoop.util.ReflectionUtils.newInstance(Ljava/lang/Class;Lorg/apache/hadoop/conf/Configuration;)Ljava/lang/Object; (ReflectionUtils.java:117)
		org.apache.mahout.classifier.bayes.mapreduce.bayes.BayesClassifierMapper @ 0xe265c380 [983911]
		org.apache.mahout.classifier.bayes.ClassifierContext @ 0xe268b938 [986319]
		org.apache.mahout.classifier.bayes.InMemoryBayesDatastore @ 0xe268b960 [986321]

	at org.apache.hadoop.util.ReflectionUtils.setConf(Ljava/lang/Object;Lorg/apache/hadoop/conf/Configuration;)V (ReflectionUtils.java:64)
		org.apache.mahout.classifier.bayes.mapreduce.bayes.BayesClassifierMapper @ 0xe265c380 [983911]
		org.apache.mahout.classifier.bayes.ClassifierContext @ 0xe268b938 [986319]
		org.apache.mahout.classifier.bayes.InMemoryBayesDatastore @ 0xe268b960 [986321]

	at org.apache.hadoop.util.ReflectionUtils.setJobConf(Ljava/lang/Object;Lorg/apache/hadoop/conf/Configuration;)V (ReflectionUtils.java:88)
		org.apache.mahout.classifier.bayes.mapreduce.bayes.BayesClassifierMapper @ 0xe265c380 [983911]
		org.apache.mahout.classifier.bayes.ClassifierContext @ 0xe268b938 [986319]
		org.apache.mahout.classifier.bayes.InMemoryBayesDatastore @ 0xe268b960 [986321]

	at java.lang.reflect.Method.invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object; (Method.java:597)
		org.apache.mahout.classifier.bayes.mapreduce.bayes.BayesClassifierMapper @ 0xe265c380 [983911]
		org.apache.mahout.classifier.bayes.ClassifierContext @ 0xe268b938 [986319]
		org.apache.mahout.classifier.bayes.InMemoryBayesDatastore @ 0xe268b960 [986321]

	at sun.reflect.DelegatingMethodAccessorImpl.invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object; (DelegatingMethodAccessorImpl.java:25)
		org.apache.mahout.classifier.bayes.mapreduce.bayes.BayesClassifierMapper @ 0xe265c380 [983911]
		org.apache.mahout.classifier.bayes.ClassifierContext @ 0xe268b938 [986319]
		org.apache.mahout.classifier.bayes.InMemoryBayesDatastore @ 0xe268b960 [986321]

	at sun.reflect.NativeMethodAccessorImpl.invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object; (NativeMethodAccessorImpl.java:39)
		org.apache.mahout.classifier.bayes.mapreduce.bayes.BayesClassifierMapper @ 0xe265c380 [983911]
		org.apache.mahout.classifier.bayes.ClassifierContext @ 0xe268b938 [986319]
		org.apache.mahout.classifier.bayes.InMemoryBayesDatastore @ 0xe268b960 [986321]

	at org.apache.mahout.classifier.bayes.mapreduce.bayes.BayesClassifierMapper.configure(Lorg/apache/hadoop/mapred/JobConf;)V (BayesClassifierMapper.java:121)
		org.apache.mahout.classifier.bayes.mapreduce.bayes.BayesClassifierMapper @ 0xe265c380 [983911]
		org.apache.mahout.classifier.bayes.ClassifierContext @ 0xe268b938 [986319]
		org.apache.mahout.classifier.bayes.InMemoryBayesDatastore @ 0xe268b960 [986321]

		org.apache.mahout.classifier.bayes.InMemoryBayesDatastore @ 0xe268b960 [986321]

	at org.apache.mahout.classifier.bayes.ClassifierContext.initialize()V (ClassifierContext.java:44)
		org.apache.mahout.classifier.bayes.ClassifierContext @ 0xe268b938 [986319]
		org.apache.mahout.classifier.bayes.InMemoryBayesDatastore @ 0xe268b960 [986321]

	at org.apache.mahout.classifier.bayes.InMemoryBayesDatastore.initialize()V (InMemoryBayesDatastore.java:72)
		org.apache.mahout.classifier.bayes.InMemoryBayesDatastore @ 0xe268b960 [986321]

	at org.apache.mahout.classifier.bayes.SequenceFileModelReader.loadModel(Lorg/apache/mahout/classifier/bayes/InMemoryBayesDatastore;Lorg/apache/mahout/common/Parameters;Lorg/apache/hadoop/conf/Configuration;)V (SequenceFileModelReader.java:50)
		org.apache.mahout.classifier.bayes.InMemoryBayesDatastore @ 0xe268b960 [986321]

	at org.apache.mahout.classifier.bayes.SequenceFileModelReader.loadWeightMatrix(Lorg/apache/mahout/classifier/bayes/InMemoryBayesDatastore;Lorg/apache/hadoop/fs/Path;Lorg/apache/hadoop/conf/Configuration;)V (SequenceFileModelReader.java:64)
		org.apache.mahout.classifier.bayes.InMemoryBayesDatastore @ 0xe268b960 [986321]


[java.lang.Object[978821] @ 0xf6751690] =>

	|------ in premap() in main ------|
	at org.apache.mahout.math.map.OpenIntObjectHashMap.rehash(I)V (OpenIntObjectHashMap.java:419)
		java.lang.Object[978821] @ 0xf6751690 [5080045]


[int[978821] @ 0xf6395868] =>

	|------ in premap() in main ------|
	at org.apache.mahout.math.map.OpenIntObjectHashMap.rehash(I)V (OpenIntObjectHashMap.java:419)
		int[978821] @ 0xf6395868 [5080044]


