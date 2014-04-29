## Objects in Map Stage


### Framework Objects

| FrameworkObj 	| Inner object 	| shallowHeap 	| retainedHeap 	|
| :----------- | :----------- | -----------: | -----------: |
| kvbuffer	| byte[498073600] @ 0xcae00000	| 498,073,616	| 498,073,616	|
| kvindices	| int[4915200] @ 0xe8900010	| 19,660,816	| 19,660,816	|
| kvoffsets	| int[1638400] @ 0xe9f83ef8	| 6,553,616	| 6,553,616	|


### User Objects

| User object | shallow heap | retained heap | length | inner object | inner size | threads | code() |
|:------------| ------------:| -------------:| ------:|:------------ | ----------:| :------ | :------|
| java.lang.Object[1811107] @ 0xec39b5b0 | 7,244,448 | 71,263,392 | 905,554 | java.lang.String @ 0xebb09140 | 560 | main | premap |
| org.apache.mahout.classifier.bayes.InMemoryBayesDatastore @ 0xe9f2cd10 | 64 | 23,557,240 | 1 |  | | main | premap |
| org.apache.mahout.math.map.OpenObjectIntHashMap @ 0xea624548 | 56 | 14,488,952 | 1 |  | | main | premap |
| int[1811107] @ 0xeca84050 | 7,244,448 | 7,244,448 | 1 |  | | main | premap |

### User objects => Threads and code() 

[org.apache.mahout.math.map.OpenObjectIntHashMap @ 0xea624548] =>

	|------ in premap() in main ------|
	at org.apache.mahout.math.map.OpenObjectIntHashMap.put(Ljava/lang/Object;I)Z (OpenObjectIntHashMap.java:387)
		org.apache.mahout.math.map.OpenObjectIntHashMap @ 0xea624548 [119494]

	at org.apache.mahout.math.map.OpenObjectIntHashMap.rehash(I)V (OpenObjectIntHashMap.java:435)
		org.apache.mahout.math.map.OpenObjectIntHashMap @ 0xea624548 [119494]


[java.lang.Object[1811107] @ 0xec39b5b0] =>

	|------ in premap() in main ------|
	at org.apache.mahout.math.map.OpenObjectIntHashMap.rehash(I)V (OpenObjectIntHashMap.java:435)
		java.lang.Object[1811107] @ 0xec39b5b0 [1006033]


[int[1811107] @ 0xeca84050] =>

	|------ in premap() in main ------|
	at org.apache.mahout.math.map.OpenObjectIntHashMap.rehash(I)V (OpenObjectIntHashMap.java:435)
		int[1811107] @ 0xeca84050 [1006034]


[org.apache.mahout.classifier.bayes.InMemoryBayesDatastore @ 0xe9f2cd10] =>

	|------ in premap() in main ------|
	at org.apache.hadoop.util.ReflectionUtils.newInstance(Ljava/lang/Class;Lorg/apache/hadoop/conf/Configuration;)Ljava/lang/Object; (ReflectionUtils.java:117)
		org.apache.mahout.classifier.bayes.mapreduce.bayes.BayesClassifierMapper @ 0xe9f2cb80 [107254]
		org.apache.mahout.classifier.bayes.ClassifierContext @ 0xe9f2cda0 [107267]
		org.apache.mahout.classifier.bayes.InMemoryBayesDatastore @ 0xe9f2cd10 [107263]

	at org.apache.hadoop.util.ReflectionUtils.setConf(Ljava/lang/Object;Lorg/apache/hadoop/conf/Configuration;)V (ReflectionUtils.java:64)
		org.apache.mahout.classifier.bayes.mapreduce.bayes.BayesClassifierMapper @ 0xe9f2cb80 [107254]
		org.apache.mahout.classifier.bayes.ClassifierContext @ 0xe9f2cda0 [107267]
		org.apache.mahout.classifier.bayes.InMemoryBayesDatastore @ 0xe9f2cd10 [107263]

	at org.apache.hadoop.util.ReflectionUtils.setJobConf(Ljava/lang/Object;Lorg/apache/hadoop/conf/Configuration;)V (ReflectionUtils.java:88)
		org.apache.mahout.classifier.bayes.mapreduce.bayes.BayesClassifierMapper @ 0xe9f2cb80 [107254]
		org.apache.mahout.classifier.bayes.ClassifierContext @ 0xe9f2cda0 [107267]
		org.apache.mahout.classifier.bayes.InMemoryBayesDatastore @ 0xe9f2cd10 [107263]

	at java.lang.reflect.Method.invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object; (Method.java:597)
		org.apache.mahout.classifier.bayes.mapreduce.bayes.BayesClassifierMapper @ 0xe9f2cb80 [107254]
		org.apache.mahout.classifier.bayes.ClassifierContext @ 0xe9f2cda0 [107267]
		org.apache.mahout.classifier.bayes.InMemoryBayesDatastore @ 0xe9f2cd10 [107263]

	at sun.reflect.DelegatingMethodAccessorImpl.invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object; (DelegatingMethodAccessorImpl.java:25)
		org.apache.mahout.classifier.bayes.mapreduce.bayes.BayesClassifierMapper @ 0xe9f2cb80 [107254]
		org.apache.mahout.classifier.bayes.ClassifierContext @ 0xe9f2cda0 [107267]
		org.apache.mahout.classifier.bayes.InMemoryBayesDatastore @ 0xe9f2cd10 [107263]

	at sun.reflect.NativeMethodAccessorImpl.invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object; (NativeMethodAccessorImpl.java:39)
		org.apache.mahout.classifier.bayes.mapreduce.bayes.BayesClassifierMapper @ 0xe9f2cb80 [107254]
		org.apache.mahout.classifier.bayes.ClassifierContext @ 0xe9f2cda0 [107267]
		org.apache.mahout.classifier.bayes.InMemoryBayesDatastore @ 0xe9f2cd10 [107263]

	at org.apache.mahout.classifier.bayes.mapreduce.bayes.BayesClassifierMapper.configure(Lorg/apache/hadoop/mapred/JobConf;)V (BayesClassifierMapper.java:121)
		org.apache.mahout.classifier.bayes.mapreduce.bayes.BayesClassifierMapper @ 0xe9f2cb80 [107254]
		org.apache.mahout.classifier.bayes.ClassifierContext @ 0xe9f2cda0 [107267]
		org.apache.mahout.classifier.bayes.InMemoryBayesDatastore @ 0xe9f2cd10 [107263]

		org.apache.mahout.classifier.bayes.InMemoryBayesDatastore @ 0xe9f2cd10 [107263]

	at org.apache.mahout.classifier.bayes.ClassifierContext.initialize()V (ClassifierContext.java:44)
		org.apache.mahout.classifier.bayes.ClassifierContext @ 0xe9f2cda0 [107267]
		org.apache.mahout.classifier.bayes.InMemoryBayesDatastore @ 0xe9f2cd10 [107263]

	at org.apache.mahout.classifier.bayes.InMemoryBayesDatastore.initialize()V (InMemoryBayesDatastore.java:72)
		org.apache.mahout.classifier.bayes.InMemoryBayesDatastore @ 0xe9f2cd10 [107263]

	at org.apache.mahout.classifier.bayes.SequenceFileModelReader.loadModel(Lorg/apache/mahout/classifier/bayes/InMemoryBayesDatastore;Lorg/apache/mahout/common/Parameters;Lorg/apache/hadoop/conf/Configuration;)V (SequenceFileModelReader.java:46)
		org.apache.mahout.classifier.bayes.InMemoryBayesDatastore @ 0xe9f2cd10 [107263]

	at org.apache.mahout.classifier.bayes.SequenceFileModelReader.loadFeatureWeights(Lorg/apache/mahout/classifier/bayes/InMemoryBayesDatastore;Lorg/apache/hadoop/fs/Path;Lorg/apache/hadoop/conf/Configuration;)V (SequenceFileModelReader.java:82)
		org.apache.mahout.classifier.bayes.InMemoryBayesDatastore @ 0xe9f2cd10 [107263]

	at org.apache.mahout.classifier.bayes.InMemoryBayesDatastore.setSumFeatureWeight(Ljava/lang/String;D)V (InMemoryBayesDatastore.java:153)
		org.apache.mahout.classifier.bayes.InMemoryBayesDatastore @ 0xe9f2cd10 [107263]


