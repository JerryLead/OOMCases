## Objects in Map Stage


### Framework Objects

| FrameworkObj 	| Inner object 	| shallowHeap 	| retainedHeap 	|
| :----------- | :----------- | -----------: | -----------: |
| kvbuffer	| byte[498073600] @ 0xc7c00000	| 498,073,616	| 498,073,616	|
| kvindices	| int[4915200] @ 0xe5700010	| 19,660,816	| 19,660,816	|
| kvoffsets	| int[1638400] @ 0xe7b230e0	| 6,553,616	| 6,553,616	|


### User Objects

| User object | shallow heap | retained heap | length | inner object | inner size | threads | code() |
|:------------| ------------:| -------------:| ------:|:------------ | ----------:| :------ | :------|
| java.lang.Object[3622219] @ 0xeae17f90 | 14,488,896 | 154,064,208 | 1,811,110 | java.lang.String @ 0xf124fce0 | 2,072 | main | premap |
| org.apache.mahout.classifier.bayes.InMemoryBayesDatastore @ 0xe7aff0b0 | 64 | 47,101,696 | 1 |  | | main | premap |
| int[3622219] @ 0xebbe94d0 | 14,488,896 | 14,488,896 | 1 |  | | main | premap |
| byte[3622219] @ 0xeca0ade8 | 3,622,240 | 3,622,240 | 1 |  | | main | premap |

### User objects => Threads and code() 

[org.apache.mahout.classifier.bayes.InMemoryBayesDatastore @ 0xe7aff0b0] =>

	|------ in premap() in main ------|
	at org.apache.hadoop.util.ReflectionUtils.newInstance(Ljava/lang/Class;Lorg/apache/hadoop/conf/Configuration;)Ljava/lang/Object; (ReflectionUtils.java:117)
		org.apache.mahout.classifier.bayes.mapreduce.bayes.BayesClassifierMapper @ 0xe7aff028 [529541]
		org.apache.mahout.classifier.bayes.ClassifierContext @ 0xe7aff160 [529550]
		org.apache.mahout.classifier.bayes.InMemoryBayesDatastore @ 0xe7aff0b0 [529545]

	at org.apache.hadoop.util.ReflectionUtils.setConf(Ljava/lang/Object;Lorg/apache/hadoop/conf/Configuration;)V (ReflectionUtils.java:64)
		org.apache.mahout.classifier.bayes.mapreduce.bayes.BayesClassifierMapper @ 0xe7aff028 [529541]
		org.apache.mahout.classifier.bayes.ClassifierContext @ 0xe7aff160 [529550]
		org.apache.mahout.classifier.bayes.InMemoryBayesDatastore @ 0xe7aff0b0 [529545]

	at org.apache.hadoop.util.ReflectionUtils.setJobConf(Ljava/lang/Object;Lorg/apache/hadoop/conf/Configuration;)V (ReflectionUtils.java:88)
		org.apache.mahout.classifier.bayes.mapreduce.bayes.BayesClassifierMapper @ 0xe7aff028 [529541]
		org.apache.mahout.classifier.bayes.ClassifierContext @ 0xe7aff160 [529550]
		org.apache.mahout.classifier.bayes.InMemoryBayesDatastore @ 0xe7aff0b0 [529545]

	at java.lang.reflect.Method.invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object; (Method.java:597)
		org.apache.mahout.classifier.bayes.mapreduce.bayes.BayesClassifierMapper @ 0xe7aff028 [529541]
		org.apache.mahout.classifier.bayes.ClassifierContext @ 0xe7aff160 [529550]
		org.apache.mahout.classifier.bayes.InMemoryBayesDatastore @ 0xe7aff0b0 [529545]

	at sun.reflect.DelegatingMethodAccessorImpl.invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object; (DelegatingMethodAccessorImpl.java:25)
		org.apache.mahout.classifier.bayes.mapreduce.bayes.BayesClassifierMapper @ 0xe7aff028 [529541]
		org.apache.mahout.classifier.bayes.ClassifierContext @ 0xe7aff160 [529550]
		org.apache.mahout.classifier.bayes.InMemoryBayesDatastore @ 0xe7aff0b0 [529545]

	at sun.reflect.NativeMethodAccessorImpl.invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object; (NativeMethodAccessorImpl.java:39)
		org.apache.mahout.classifier.bayes.mapreduce.bayes.BayesClassifierMapper @ 0xe7aff028 [529541]
		org.apache.mahout.classifier.bayes.ClassifierContext @ 0xe7aff160 [529550]
		org.apache.mahout.classifier.bayes.InMemoryBayesDatastore @ 0xe7aff0b0 [529545]

	at org.apache.mahout.classifier.bayes.mapreduce.bayes.BayesClassifierMapper.configure(Lorg/apache/hadoop/mapred/JobConf;)V (BayesClassifierMapper.java:121)
		org.apache.mahout.classifier.bayes.mapreduce.bayes.BayesClassifierMapper @ 0xe7aff028 [529541]
		org.apache.mahout.classifier.bayes.ClassifierContext @ 0xe7aff160 [529550]
		org.apache.mahout.classifier.bayes.InMemoryBayesDatastore @ 0xe7aff0b0 [529545]

		org.apache.mahout.classifier.bayes.InMemoryBayesDatastore @ 0xe7aff0b0 [529545]

	at org.apache.mahout.classifier.bayes.ClassifierContext.initialize()V (ClassifierContext.java:44)
		org.apache.mahout.classifier.bayes.ClassifierContext @ 0xe7aff160 [529550]
		org.apache.mahout.classifier.bayes.InMemoryBayesDatastore @ 0xe7aff0b0 [529545]

	at org.apache.mahout.classifier.bayes.InMemoryBayesDatastore.initialize()V (InMemoryBayesDatastore.java:72)
		org.apache.mahout.classifier.bayes.InMemoryBayesDatastore @ 0xe7aff0b0 [529545]

	at org.apache.mahout.classifier.bayes.SequenceFileModelReader.loadModel(Lorg/apache/mahout/classifier/bayes/InMemoryBayesDatastore;Lorg/apache/mahout/common/Parameters;Lorg/apache/hadoop/conf/Configuration;)V (SequenceFileModelReader.java:46)
		org.apache.mahout.classifier.bayes.InMemoryBayesDatastore @ 0xe7aff0b0 [529545]

	at org.apache.mahout.classifier.bayes.SequenceFileModelReader.loadFeatureWeights(Lorg/apache/mahout/classifier/bayes/InMemoryBayesDatastore;Lorg/apache/hadoop/fs/Path;Lorg/apache/hadoop/conf/Configuration;)V (SequenceFileModelReader.java:82)
		org.apache.mahout.classifier.bayes.InMemoryBayesDatastore @ 0xe7aff0b0 [529545]

	at org.apache.mahout.classifier.bayes.InMemoryBayesDatastore.setSumFeatureWeight(Ljava/lang/String;D)V (InMemoryBayesDatastore.java:153)
		org.apache.mahout.classifier.bayes.InMemoryBayesDatastore @ 0xe7aff0b0 [529545]


[java.lang.Object[3622219] @ 0xeae17f90] =>

	|------ in premap() in main ------|
	at org.apache.mahout.math.map.OpenObjectIntHashMap.put(Ljava/lang/Object;I)Z (OpenObjectIntHashMap.java:387)
		org.apache.mahout.math.map.OpenObjectIntHashMap @ 0xe7aff078 [529544]
		java.lang.Object[3622219] @ 0xeae17f90 [1835216]

	at org.apache.mahout.math.map.OpenObjectIntHashMap.rehash(I)V (OpenObjectIntHashMap.java:434)
		org.apache.mahout.math.map.OpenObjectIntHashMap @ 0xe7aff078 [529544]
		java.lang.Object[3622219] @ 0xeae17f90 [1835216]

		java.lang.Object[3622219] @ 0xeae17f90 [1835216]


[int[3622219] @ 0xebbe94d0] =>

	|------ in premap() in main ------|
	at org.apache.mahout.math.map.OpenObjectIntHashMap.put(Ljava/lang/Object;I)Z (OpenObjectIntHashMap.java:387)
		org.apache.mahout.math.map.OpenObjectIntHashMap @ 0xe7aff078 [529544]
		int[3622219] @ 0xebbe94d0 [1835217]

	at org.apache.mahout.math.map.OpenObjectIntHashMap.rehash(I)V (OpenObjectIntHashMap.java:434)
		org.apache.mahout.math.map.OpenObjectIntHashMap @ 0xe7aff078 [529544]
		int[3622219] @ 0xebbe94d0 [1835217]

		int[3622219] @ 0xebbe94d0 [1835217]


[byte[3622219] @ 0xeca0ade8] =>

	|------ in premap() in main ------|
	at org.apache.mahout.math.map.OpenObjectIntHashMap.put(Ljava/lang/Object;I)Z (OpenObjectIntHashMap.java:387)
		org.apache.mahout.math.map.OpenObjectIntHashMap @ 0xe7aff078 [529544]
		byte[3622219] @ 0xeca0ade8  ................................................................................................................................................................................................................................................................... [1843746]

	at org.apache.mahout.math.map.OpenObjectIntHashMap.rehash(I)V (OpenObjectIntHashMap.java:434)
		org.apache.mahout.math.map.OpenObjectIntHashMap @ 0xe7aff078 [529544]
		byte[3622219] @ 0xeca0ade8  ................................................................................................................................................................................................................................................................... [1843746]

		byte[3622219] @ 0xeca0ade8  ................................................................................................................................................................................................................................................................... [1843746]


