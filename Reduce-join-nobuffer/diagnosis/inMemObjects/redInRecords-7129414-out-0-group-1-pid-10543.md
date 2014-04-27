## Objects in Reduce Stage

### Framework Objects

#### [SegmentsInCopy] => 


#### [SegmentsInList] => 


#### [SegmentsInMerge / SegmentsInBuffer] => 



### User Objects

| User object | shallow heap | retained heap | length | inner object | inner size | threads | code() |
|:------------| ------------:| -------------:| ------:|:------------ | ----------:| :------ | :------|
| java.util.ArrayList @ 0xa252ccb8 | 24 | 1,221,969,080 | 7,129,413 | java.lang.String @ 0xbbad5f20 | 256 | main | reduce |

### User objects => Threads and code() 

[java.util.ArrayList @ 0xa252ccb8] =>

	|------ in reduce() in main ------|
	at reducer.ReducePhaseOOM$ConsumingJoinReducer.reduce(Lreducer/ReducePhaseOOM$TextPair;Ljava/util/Iterator;Lorg/apache/hadoop/mapred/OutputCollector;Lorg/apache/hadoop/mapred/Reporter;)V (ReducePhaseOOM.java:117)
		java.util.ArrayList @ 0xa252ccb8 [29674]


