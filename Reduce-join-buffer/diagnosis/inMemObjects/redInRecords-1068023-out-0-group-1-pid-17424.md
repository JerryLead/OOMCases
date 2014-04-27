## Objects in Reduce Stage

### Framework Objects

#### [SegmentsInCopy] => 


#### [SegmentsInList] => 


#### [SegmentsInMerge / SegmentsInBuffer] => 

| FrameworkObj 	| Inner object 	| shallowHeap 	| retainedHeap 	| TaskId 	|
| :----------- | :----------- | -----------: | -----------: | -----------: |
| Merger$Segment @ 0xc180e8a8	| byte[104585760] @ 0xa87badf8	| 104,585,776	| 104,585,776	|7	|
| Merger$Segment @ 0xc180ee30	| byte[104548503] @ 0xaecdf740	| 104,548,520	| 104,548,520	|5	|
| Merger$Segment @ 0xc1811578	| byte[4096] @ 0xc1815be0	| 4,112	| 4,112	|-1	|
| Merger$Segment @ 0xc1813f68	| byte[104574439] @ 0xa2400000	| 104,574,456	| 104,574,456	|8	|
| Merger$Segment @ 0xc180d940	| byte[104523972] @ 0xbb457ab8	| 104,523,992	| 104,523,992	|11	|
| Merger$Segment @ 0xc180d3c0	| byte[104599542] @ 0xb5096ab0	| 104,599,560	| 104,599,560	|0	|


#### [minSegment] => 

| FrameworkObj 	| Inner object 	| shallowHeap 	| retainedHeap 	| TaskId 	|
| :----------- | :----------- | -----------: | -----------: |-----------: |
| Merger$Segment @ 0xc180e8a8	| byte[104585760] @ 0xa87badf8	| 104,585,776	| 104,585,776	|7	|


#### [keySegment] => 

| FrameworkObj 	| Inner object 	| shallowHeap 	| retainedHeap 	|
| :----------- | :----------- | -----------: | -----------: |
| DataInputBuffer @ 0xc180eb48	| byte[104585760] @ 0xa87badf8	| 104,585,776	| 104,585,776	|

#### [comparatorSegment] => 

| FrameworkObj 	| Inner object 	| shallowHeap 	| retainedHeap 	|
| :----------- | :----------- | -----------: | -----------: |
| DataInputBuffer @ 0xc18113e8	| byte[104585760] @ 0xa87badf8	| 104,585,776	| 104,585,776	|


### User Objects

| User object | shallow heap | retained heap | length | inner object | inner size | threads | code() |
|:------------| ------------:| -------------:| ------:|:------------ | ----------:| :------ | :------|
| java.util.ArrayList @ 0xc180db90 | 24 | 184,549,440 | 1,068,022 | java.lang.String @ 0xc6345ea0 | 256 | main | reduce |

### User objects => Threads and code() 

[java.util.ArrayList @ 0xc180db90] =>

	|------ in reduce() in main ------|
	at reducer.ReducePhaseOOM$ConsumingJoinReducer.reduce(Lreducer/ReducePhaseOOM$TextPair;Ljava/util/Iterator;Lorg/apache/hadoop/mapred/OutputCollector;Lorg/apache/hadoop/mapred/Reporter;)V (ReducePhaseOOM.java:117)
		java.util.ArrayList @ 0xc180db90 [32171]


