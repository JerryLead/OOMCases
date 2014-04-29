## Objects in Map Stage


### Framework Objects

| FrameworkObj 	| Inner object 	| shallowHeap 	| retainedHeap 	|
| :----------- | :----------- | -----------: | -----------: |
| kvbuffer	| byte[498073600] @ 0xce000000	| 498,073,616	| 498,073,616	|
| kvindices	| int[4915200] @ 0xec22c4a8	| 19,660,816	| 19,660,816	|
| kvoffsets	| int[1638400] @ 0xebb67630	| 6,553,616	| 6,553,616	|


### User Objects

| User object | shallow heap | retained heap | length | inner object | inner size | threads | code() |
|:------------| ------------:| -------------:| ------:|:------------ | ----------:| :------ | :------|
| org.apache.mahout.classifier.bayes.InMemoryBayesDatastore @ 0xed4f1820 | 64 | 99,259,664 | 1 |  | | main | premap |

### User objects => Threads and code() 

[org.apache.mahout.classifier.bayes.InMemoryBayesDatastore @ 0xed4f1820] =>

	|------ in premap() in main ------|
	at org.apache.hadoop.util.ReflectionUtils.newInstance(Ljava/lang/Class;Lorg/apache/hadoop/conf/Configuration;)Ljava/lang/Object; (ReflectionUtils.java:117)
		org.apache.mahout.classifier.bayes.mapreduce.bayes.BayesClassifierMapper @ 0xed4eec78 [21881]
		org.apache.mahout.classifier.bayes.ClassifierContext @ 0xed4f5508 [22201]
		org.apache.mahout.classifier.bayes.InMemoryBayesDatastore @ 0xed4f1820 [22152]

	at org.apache.hadoop.util.ReflectionUtils.setConf(Ljava/lang/Object;Lorg/apache/hadoop/conf/Configuration;)V (ReflectionUtils.java:64)
		org.apache.mahout.classifier.bayes.mapreduce.bayes.BayesClassifierMapper @ 0xed4eec78 [21881]
		org.apache.mahout.classifier.bayes.ClassifierContext @ 0xed4f5508 [22201]
		org.apache.mahout.classifier.bayes.InMemoryBayesDatastore @ 0xed4f1820 [22152]

	at org.apache.hadoop.util.ReflectionUtils.setJobConf(Ljava/lang/Object;Lorg/apache/hadoop/conf/Configuration;)V (ReflectionUtils.java:88)
		org.apache.mahout.classifier.bayes.mapreduce.bayes.BayesClassifierMapper @ 0xed4eec78 [21881]
		org.apache.mahout.classifier.bayes.ClassifierContext @ 0xed4f5508 [22201]
		org.apache.mahout.classifier.bayes.InMemoryBayesDatastore @ 0xed4f1820 [22152]

	at java.lang.reflect.Method.invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object; (Method.java:597)
		org.apache.mahout.classifier.bayes.mapreduce.bayes.BayesClassifierMapper @ 0xed4eec78 [21881]
		org.apache.mahout.classifier.bayes.ClassifierContext @ 0xed4f5508 [22201]
		org.apache.mahout.classifier.bayes.InMemoryBayesDatastore @ 0xed4f1820 [22152]

	at sun.reflect.DelegatingMethodAccessorImpl.invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object; (DelegatingMethodAccessorImpl.java:25)
		org.apache.mahout.classifier.bayes.mapreduce.bayes.BayesClassifierMapper @ 0xed4eec78 [21881]
		org.apache.mahout.classifier.bayes.ClassifierContext @ 0xed4f5508 [22201]
		org.apache.mahout.classifier.bayes.InMemoryBayesDatastore @ 0xed4f1820 [22152]

	at sun.reflect.NativeMethodAccessorImpl.invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object; (NativeMethodAccessorImpl.java:39)
		org.apache.mahout.classifier.bayes.mapreduce.bayes.BayesClassifierMapper @ 0xed4eec78 [21881]
		org.apache.mahout.classifier.bayes.ClassifierContext @ 0xed4f5508 [22201]
		org.apache.mahout.classifier.bayes.InMemoryBayesDatastore @ 0xed4f1820 [22152]

	at org.apache.mahout.classifier.bayes.mapreduce.bayes.BayesClassifierMapper.configure(Lorg/apache/hadoop/mapred/JobConf;)V (BayesClassifierMapper.java:121)
		org.apache.mahout.classifier.bayes.mapreduce.bayes.BayesClassifierMapper @ 0xed4eec78 [21881]
		org.apache.mahout.classifier.bayes.ClassifierContext @ 0xed4f5508 [22201]
		org.apache.mahout.classifier.bayes.InMemoryBayesDatastore @ 0xed4f1820 [22152]

		org.apache.mahout.classifier.bayes.InMemoryBayesDatastore @ 0xed4f1820 [22152]

	at org.apache.mahout.classifier.bayes.ClassifierContext.initialize()V (ClassifierContext.java:44)
		org.apache.mahout.classifier.bayes.ClassifierContext @ 0xed4f5508 [22201]
		org.apache.mahout.classifier.bayes.InMemoryBayesDatastore @ 0xed4f1820 [22152]

	at org.apache.mahout.classifier.bayes.InMemoryBayesDatastore.initialize()V (InMemoryBayesDatastore.java:72)
		org.apache.mahout.classifier.bayes.InMemoryBayesDatastore @ 0xed4f1820 [22152]

	at org.apache.mahout.classifier.bayes.SequenceFileModelReader.loadModel(Lorg/apache/mahout/classifier/bayes/InMemoryBayesDatastore;Lorg/apache/mahout/common/Parameters;Lorg/apache/hadoop/conf/Configuration;)V (SequenceFileModelReader.java:46)
		org.apache.mahout.classifier.bayes.InMemoryBayesDatastore @ 0xed4f1820 [22152]

	at org.apache.mahout.classifier.bayes.SequenceFileModelReader.loadFeatureWeights(Lorg/apache/mahout/classifier/bayes/InMemoryBayesDatastore;Lorg/apache/hadoop/fs/Path;Lorg/apache/hadoop/conf/Configuration;)V (SequenceFileModelReader.java:72)
		org.apache.mahout.classifier.bayes.InMemoryBayesDatastore @ 0xed4f1820 [22152]


