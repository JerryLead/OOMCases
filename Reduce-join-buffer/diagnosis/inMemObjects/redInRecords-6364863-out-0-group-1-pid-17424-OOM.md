## Objects in Reduce Stage

### Framework Objects

#### [SegmentsInCopy] => 


#### [SegmentsInList] => 


#### [SegmentsInMerge / SegmentsInBuffer] => 

| FrameworkObj 	| Inner object 	| shallowHeap 	| retainedHeap 	| TaskId 	|
| :----------- | :----------- | -----------: | -----------: | -----------: |
| Merger$Segment @ 0xaeca3b50	| byte[4096] @ 0xaeca7fe8	| 4,112	| 4,112	|-1	|
| Merger$Segment @ 0xaeca1578	| byte[104599542] @ 0xa88de210	| 104,599,560	| 104,599,560	|0	|
| Merger$Segment @ 0xaeca6418	| byte[104574439] @ 0xa2400000	| 104,574,456	| 104,574,456	|8	|


#### [minSegment] => 

| FrameworkObj 	| Inner object 	| shallowHeap 	| retainedHeap 	| TaskId 	|
| :----------- | :----------- | -----------: | -----------: |-----------: |
| Merger$Segment @ 0xaeca3b50	| byte[4096] @ 0xaeca7fe8	| 4,112	| 4,112	|-1	|


#### [keySegment] => 

| FrameworkObj 	| Inner object 	| shallowHeap 	| retainedHeap 	|
| :----------- | :----------- | -----------: | -----------: |
| DataInputBuffer @ 0xaeca9520	| byte[4096] @ 0xaeca7fe8	| 4,112	| 4,112	|

#### [comparatorSegment] => 

| FrameworkObj 	| Inner object 	| shallowHeap 	| retainedHeap 	|
| :----------- | :----------- | -----------: | -----------: |
| DataInputBuffer @ 0xaeca39c0	| byte[4096] @ 0xaeca7fe8	| 4,112	| 4,112	|


### User Objects

| User object | shallow heap | retained heap | length | inner object | inner size | threads | code() |
|:------------| ------------:| -------------:| ------:|:------------ | ----------:| :------ | :------|
| java.util.ArrayList @ 0xaeca1c18 | 24 | 1,094,241,536 | 6,364,862 | java.lang.String @ 0xc8328bb8 | 256 | main | reduce |

### User objects => Threads and code() 

[java.util.ArrayList @ 0xaeca1c18] =>

	|------ in reduce() in main ------|
	at reducer.ReducePhaseOOM$ConsumingJoinReducer.reduce(Lreducer/ReducePhaseOOM$TextPair;Ljava/util/Iterator;Lorg/apache/hadoop/mapred/OutputCollector;Lorg/apache/hadoop/mapred/Reporter;)V (ReducePhaseOOM.java:119)
		java.util.ArrayList @ 0xaeca1c18 [29430]


