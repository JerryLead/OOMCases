## Objects in Reduce Stage

### Framework Objects

#### [SegmentsInCopy] => 


#### [SegmentsInList] => 


#### [SegmentsInMerge / SegmentsInBuffer] => 

| FrameworkObj 	| Inner object 	| shallowHeap 	| retainedHeap 	| TaskId 	|
| :----------- | :----------- | -----------: | -----------: | -----------: |
| Merger$Segment @ 0xb7428c00	| byte[4096] @ 0xb742a2d0	| 4,112	| 4,112	|-1	|
| Merger$Segment @ 0xb741e150	| byte[104574439] @ 0xa88e4038	| 104,574,456	| 104,574,456	|9	|
| Merger$Segment @ 0xb741e6d0	| byte[104548503] @ 0xaec9ee30	| 104,548,520	| 104,548,520	|5	|
| Merger$Segment @ 0xb742bae8	| byte[104597707] @ 0xa2400000	| 104,597,728	| 104,597,728	|3	|


#### [minSegment] => 

| FrameworkObj 	| Inner object 	| shallowHeap 	| retainedHeap 	| TaskId 	|
| :----------- | :----------- | -----------: | -----------: |-----------: |
| Merger$Segment @ 0xb7428c00	| byte[4096] @ 0xb742a2d0	| 4,112	| 4,112	|-1	|


#### [keySegment] => 

| FrameworkObj 	| Inner object 	| shallowHeap 	| retainedHeap 	|
| :----------- | :----------- | -----------: | -----------: |
| DataInputBuffer @ 0xb742b808	| byte[4096] @ 0xb742a2d0	| 4,112	| 4,112	|

#### [comparatorSegment] => 

| FrameworkObj 	| Inner object 	| shallowHeap 	| retainedHeap 	|
| :----------- | :----------- | -----------: | -----------: |
| DataInputBuffer @ 0xb7428a40	| byte[4096] @ 0xb742a2d0	| 4,112	| 4,112	|


### User Objects

| User object | shallow heap | retained heap | length | inner object | inner size | threads | code() |
|:------------| ------------:| -------------:| ------:|:------------ | ----------:| :------ | :------|
| java.util.ArrayList @ 0xb741def8 | 24 | 1,126,551,192 | 6,558,431 | java.lang.String @ 0xc5524f88 | 256 | main | reduce |

### User objects => Threads and code() 

[java.util.ArrayList @ 0xb741def8] =>

	|------ in reduce() in main ------|
	at reducer.ReducePhaseOOM$ConsumingJoinReducer.reduce(Lreducer/ReducePhaseOOM$TextPair;Ljava/util/Iterator;Lorg/apache/hadoop/mapred/OutputCollector;Lorg/apache/hadoop/mapred/Reporter;)V (ReducePhaseOOM.java:119)
		java.util.ArrayList @ 0xb741def8 [478598]


