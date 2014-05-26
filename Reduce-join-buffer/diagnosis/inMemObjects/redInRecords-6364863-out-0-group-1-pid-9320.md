## Objects in Reduce Stage

### Framework Objects

#### [SegmentsInCopy] => 


#### [SegmentsInList] => 


#### [SegmentsInMerge / SegmentsInBuffer] => 

| FrameworkObj 	| Inner object 	| shallowHeap 	| retainedHeap 	| TaskId 	|
| :----------- | :----------- | -----------: | -----------: | -----------: |
| Merger$Segment @ 0xab2cbbe0	| byte[4096] @ 0xab2cd2b8	| 4,112	| 4,112	|-1	|
| Merger$Segment @ 0xab2d12e8	| byte[104574439] @ 0xa25604f8	| 104,574,456	| 104,574,456	|8	|


#### [minSegment] => 

| FrameworkObj 	| Inner object 	| shallowHeap 	| retainedHeap 	| TaskId 	|
| :----------- | :----------- | -----------: | -----------: |-----------: |
| Merger$Segment @ 0xab2cbbe0	| byte[4096] @ 0xab2cd2b8	| 4,112	| 4,112	|-1	|


#### [keySegment] => 

| FrameworkObj 	| Inner object 	| shallowHeap 	| retainedHeap 	|
| :----------- | :----------- | -----------: | -----------: |
| DataInputBuffer @ 0xab2d1008	| byte[4096] @ 0xab2cd2b8	| 4,112	| 4,112	|

#### [comparatorSegment] => 

| FrameworkObj 	| Inner object 	| shallowHeap 	| retainedHeap 	|
| :----------- | :----------- | -----------: | -----------: |
| DataInputBuffer @ 0xab2cba00	| byte[4096] @ 0xab2cd2b8	| 4,112	| 4,112	|


### User Objects

| User object | shallow heap | retained heap | length | inner object | inner size | threads | code() |
|:------------| ------------:| -------------:| ------:|:------------ | ----------:| :------ | :------|
| java.util.ArrayList @ 0xab2ba8f0 | 24 | 1,094,168,776 | 6,364,862 | java.lang.String @ 0xaee90470 | 256 | main | reduce |

### User objects => Threads and code() 

[java.util.ArrayList @ 0xab2ba8f0] =>

	|------ in reduce() in main ------|
	at reducer.ReducePhaseOOM$ConsumingJoinReducer.reduce(Lreducer/ReducePhaseOOM$TextPair;Ljava/util/Iterator;Lorg/apache/hadoop/mapred/OutputCollector;Lorg/apache/hadoop/mapred/Reporter;)V (ReducePhaseOOM.java:117)
		java.util.ArrayList @ 0xab2ba8f0 [553945]


