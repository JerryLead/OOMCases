## Objects in Reduce Stage

### Framework Objects

#### [SegmentsInCopy] => 


#### [SegmentsInList] => 


#### [SegmentsInMerge / SegmentsInBuffer] => 

| FrameworkObj 	| Inner object 	| shallowHeap 	| retainedHeap 	| TaskId 	|
| :----------- | :----------- | -----------: | -----------: | -----------: |
| Merger$Segment @ 0xbb450b80	| byte[104548503] @ 0xa8921cf8	| 104,548,520	| 104,548,520	|5	|
| Merger$Segment @ 0xbb44fe20	| byte[104523972] @ 0xb509a070	| 104,523,992	| 104,523,992	|11	|
| Merger$Segment @ 0xbb453158	| byte[4096] @ 0xbb4577c0	| 4,112	| 4,112	|-1	|
| Merger$Segment @ 0xbb455b48	| byte[104574439] @ 0xa2400000	| 104,574,456	| 104,574,456	|8	|
| Merger$Segment @ 0xbb44f8a0	| byte[104599542] @ 0xaecd9068	| 104,599,560	| 104,599,560	|0	|


#### [minSegment] => 

| FrameworkObj 	| Inner object 	| shallowHeap 	| retainedHeap 	| TaskId 	|
| :----------- | :----------- | -----------: | -----------: |-----------: |
| Merger$Segment @ 0xbb450b80	| byte[104548503] @ 0xa8921cf8	| 104,548,520	| 104,548,520	|5	|


#### [keySegment] => 

| FrameworkObj 	| Inner object 	| shallowHeap 	| retainedHeap 	|
| :----------- | :----------- | -----------: | -----------: |
| DataInputBuffer @ 0xbb450e20	| byte[104548503] @ 0xa8921cf8	| 104,548,520	| 104,548,520	|

#### [comparatorSegment] => 

| FrameworkObj 	| Inner object 	| shallowHeap 	| retainedHeap 	|
| :----------- | :----------- | -----------: | -----------: |
| DataInputBuffer @ 0xbb452fc8	| byte[104548503] @ 0xa8921cf8	| 104,548,520	| 104,548,520	|


### User Objects

| User object | shallow heap | retained heap | length | inner object | inner size | threads | code() |
|:------------| ------------:| -------------:| ------:|:------------ | ----------:| :------ | :------|
| java.util.ArrayList @ 0xbb450070 | 24 | 366,073,088 | 2,136,044 | java.lang.String @ 0xc1acb148 | 256 | main | reduce |

### User objects => Threads and code() 

[java.util.ArrayList @ 0xbb450070] =>

	|------ in reduce() in main ------|
	at reducer.ReducePhaseOOM$ConsumingJoinReducer.reduce(Lreducer/ReducePhaseOOM$TextPair;Ljava/util/Iterator;Lorg/apache/hadoop/mapred/OutputCollector;Lorg/apache/hadoop/mapred/Reporter;)V (ReducePhaseOOM.java:117)
		java.util.ArrayList @ 0xbb450070 [32169]


