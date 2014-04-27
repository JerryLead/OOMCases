## Objects in Reduce Stage

### Framework Objects

#### [SegmentsInCopy] => 


#### [SegmentsInList] => 


#### [SegmentsInMerge / SegmentsInBuffer] => 

| FrameworkObj 	| Inner object 	| shallowHeap 	| retainedHeap 	| TaskId 	|
| :----------- | :----------- | -----------: | -----------: | -----------: |
| Merger$Segment @ 0xaece0cd0	| byte[4096] @ 0xaece5168	| 4,112	| 4,112	|-1	|
| Merger$Segment @ 0xaecddb80	| byte[104599542] @ 0xa891a7e8	| 104,599,560	| 104,599,560	|0	|
| Merger$Segment @ 0xaece3598	| byte[104574439] @ 0xa2400000	| 104,574,456	| 104,574,456	|8	|


#### [minSegment] => 

| FrameworkObj 	| Inner object 	| shallowHeap 	| retainedHeap 	| TaskId 	|
| :----------- | :----------- | -----------: | -----------: |-----------: |
| Merger$Segment @ 0xaece0cd0	| byte[4096] @ 0xaece5168	| 4,112	| 4,112	|-1	|


#### [keySegment] => 

| FrameworkObj 	| Inner object 	| shallowHeap 	| retainedHeap 	|
| :----------- | :----------- | -----------: | -----------: |
| DataInputBuffer @ 0xaece66a0	| byte[4096] @ 0xaece5168	| 4,112	| 4,112	|

#### [comparatorSegment] => 

| FrameworkObj 	| Inner object 	| shallowHeap 	| retainedHeap 	|
| :----------- | :----------- | -----------: | -----------: |
| DataInputBuffer @ 0xaece0b40	| byte[4096] @ 0xaece5168	| 4,112	| 4,112	|


### User Objects

| User object | shallow heap | retained heap | length | inner object | inner size | threads | code() |
|:------------| ------------:| -------------:| ------:|:------------ | ----------:| :------ | :------|
| java.util.ArrayList @ 0xaecde220 | 24 | 922,989,104 | 5,340,114 | java.lang.String @ 0xc8365db8 | 256 | main | reduce |

### User objects => Threads and code() 

[java.util.ArrayList @ 0xaecde220] =>

	|------ in reduce() in main ------|
	at reducer.ReducePhaseOOM$ConsumingJoinReducer.reduce(Lreducer/ReducePhaseOOM$TextPair;Ljava/util/Iterator;Lorg/apache/hadoop/mapred/OutputCollector;Lorg/apache/hadoop/mapred/Reporter;)V (ReducePhaseOOM.java:117)
		java.util.ArrayList @ 0xaecde220 [31993]


