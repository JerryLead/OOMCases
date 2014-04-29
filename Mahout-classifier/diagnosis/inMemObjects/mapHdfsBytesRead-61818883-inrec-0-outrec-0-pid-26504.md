## Objects in Map Stage


### Framework Objects

| FrameworkObj 	| Inner object 	| shallowHeap 	| retainedHeap 	|
| :----------- | :----------- | -----------: | -----------: |
| kvbuffer	| byte[498073600] @ 0xc8600000	| 498,073,616	| 498,073,616	|
| kvindices	| int[4915200] @ 0xe6100010	| 19,660,816	| 19,660,816	|
| kvoffsets	| int[1638400] @ 0xe772a590	| 6,553,616	| 6,553,616	|


### User Objects

| User object | shallow heap | retained heap | length | inner object | inner size | threads | code() |
|:------------| ------------:| -------------:| ------:|:------------ | ----------:| :------ | :------|
| org.apache.mahout.classifier.bayes.InMemoryBayesDatastore @ 0xe83321b0 | 64 | 200,828,464 | 1 |  | | main | premap |

### User objects => Threads and code() 

[org.apache.mahout.classifier.bayes.InMemoryBayesDatastore @ 0xe83321b0] =>

	|------ in premap() in main ------|
	at org.apache.hadoop.util.ReflectionUtils.newInstance(Ljava/lang/Class;Lorg/apache/hadoop/conf/Configuration;)Ljava/lang/Object; (ReflectionUtils.java:117)
		org.apache.mahout.classifier.bayes.mapreduce.bayes.BayesClassifierMapper @ 0xe8322740 [265551]
		org.apache.mahout.classifier.bayes.ClassifierContext @ 0xe8332188 [266267]
		org.apache.mahout.classifier.bayes.InMemoryBayesDatastore @ 0xe83321b0 [266269]

	at org.apache.hadoop.util.ReflectionUtils.setConf(Ljava/lang/Object;Lorg/apache/hadoop/conf/Configuration;)V (ReflectionUtils.java:64)
		org.apache.mahout.classifier.bayes.mapreduce.bayes.BayesClassifierMapper @ 0xe8322740 [265551]
		org.apache.mahout.classifier.bayes.ClassifierContext @ 0xe8332188 [266267]
		org.apache.mahout.classifier.bayes.InMemoryBayesDatastore @ 0xe83321b0 [266269]

	at org.apache.hadoop.util.ReflectionUtils.setJobConf(Ljava/lang/Object;Lorg/apache/hadoop/conf/Configuration;)V (ReflectionUtils.java:88)
		org.apache.mahout.classifier.bayes.mapreduce.bayes.BayesClassifierMapper @ 0xe8322740 [265551]
		org.apache.mahout.classifier.bayes.ClassifierContext @ 0xe8332188 [266267]
		org.apache.mahout.classifier.bayes.InMemoryBayesDatastore @ 0xe83321b0 [266269]

	at java.lang.reflect.Method.invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object; (Method.java:597)
		org.apache.mahout.classifier.bayes.mapreduce.bayes.BayesClassifierMapper @ 0xe8322740 [265551]
		org.apache.mahout.classifier.bayes.ClassifierContext @ 0xe8332188 [266267]
		org.apache.mahout.classifier.bayes.InMemoryBayesDatastore @ 0xe83321b0 [266269]

	at sun.reflect.DelegatingMethodAccessorImpl.invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object; (DelegatingMethodAccessorImpl.java:25)
		org.apache.mahout.classifier.bayes.mapreduce.bayes.BayesClassifierMapper @ 0xe8322740 [265551]
		org.apache.mahout.classifier.bayes.ClassifierContext @ 0xe8332188 [266267]
		org.apache.mahout.classifier.bayes.InMemoryBayesDatastore @ 0xe83321b0 [266269]

	at sun.reflect.NativeMethodAccessorImpl.invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object; (NativeMethodAccessorImpl.java:39)
		org.apache.mahout.classifier.bayes.mapreduce.bayes.BayesClassifierMapper @ 0xe8322740 [265551]
		org.apache.mahout.classifier.bayes.ClassifierContext @ 0xe8332188 [266267]
		org.apache.mahout.classifier.bayes.InMemoryBayesDatastore @ 0xe83321b0 [266269]

	at org.apache.mahout.classifier.bayes.mapreduce.bayes.BayesClassifierMapper.configure(Lorg/apache/hadoop/mapred/JobConf;)V (BayesClassifierMapper.java:121)
		org.apache.mahout.classifier.bayes.mapreduce.bayes.BayesClassifierMapper @ 0xe8322740 [265551]
		org.apache.mahout.classifier.bayes.ClassifierContext @ 0xe8332188 [266267]
		org.apache.mahout.classifier.bayes.InMemoryBayesDatastore @ 0xe83321b0 [266269]

		org.apache.mahout.classifier.bayes.InMemoryBayesDatastore @ 0xe83321b0 [266269]

	at org.apache.mahout.classifier.bayes.ClassifierContext.initialize()V (ClassifierContext.java:44)
		org.apache.mahout.classifier.bayes.ClassifierContext @ 0xe8332188 [266267]
		org.apache.mahout.classifier.bayes.InMemoryBayesDatastore @ 0xe83321b0 [266269]

	at org.apache.mahout.classifier.bayes.InMemoryBayesDatastore.initialize()V (InMemoryBayesDatastore.java:72)
		org.apache.mahout.classifier.bayes.InMemoryBayesDatastore @ 0xe83321b0 [266269]

	at org.apache.mahout.classifier.bayes.SequenceFileModelReader.loadModel(Lorg/apache/mahout/classifier/bayes/InMemoryBayesDatastore;Lorg/apache/mahout/common/Parameters;Lorg/apache/hadoop/conf/Configuration;)V (SequenceFileModelReader.java:46)
		org.apache.mahout.classifier.bayes.InMemoryBayesDatastore @ 0xe83321b0 [266269]

	at org.apache.mahout.classifier.bayes.SequenceFileModelReader.loadFeatureWeights(Lorg/apache/mahout/classifier/bayes/InMemoryBayesDatastore;Lorg/apache/hadoop/fs/Path;Lorg/apache/hadoop/conf/Configuration;)V (SequenceFileModelReader.java:72)
		org.apache.mahout.classifier.bayes.InMemoryBayesDatastore @ 0xe83321b0 [266269]


