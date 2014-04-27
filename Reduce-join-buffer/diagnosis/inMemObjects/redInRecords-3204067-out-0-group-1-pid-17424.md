## Objects in Reduce Stage

### Framework Objects

#### [SegmentsInCopy] => 


#### [SegmentsInList] => 


#### [SegmentsInMerge / SegmentsInBuffer] => 

| FrameworkObj 	| Inner object 	| shallowHeap 	| retainedHeap 	| TaskId 	|
| :----------- | :----------- | -----------: | -----------: | -----------: |
| Merger$Segment @ 0xb5091398	| byte[104523972] @ 0xaecdfe88	| 104,523,992	| 104,523,992	|11	|
| Merger$Segment @ 0xb5090e18	| byte[104599542] @ 0xa891ee80	| 104,599,560	| 104,599,560	|0	|
| Merger$Segment @ 0xb50941d0	| byte[4096] @ 0xb50986d8	| 4,112	| 4,112	|-1	|
| Merger$Segment @ 0xb5096a98	| byte[104574439] @ 0xa2400000	| 104,574,456	| 104,574,456	|8	|


#### [minSegment] => 

| FrameworkObj 	| Inner object 	| shallowHeap 	| retainedHeap 	| TaskId 	|
| :----------- | :----------- | -----------: | -----------: |-----------: |
| Merger$Segment @ 0xb5091398	| byte[104523972] @ 0xaecdfe88	| 104,523,992	| 104,523,992	|11	|


#### [keySegment] => 

| FrameworkObj 	| Inner object 	| shallowHeap 	| retainedHeap 	|
| :----------- | :----------- | -----------: | -----------: |
| DataInputBuffer @ 0xb5099f78	| byte[104523972] @ 0xaecdfe88	| 104,523,992	| 104,523,992	|

#### [comparatorSegment] => 

| FrameworkObj 	| Inner object 	| shallowHeap 	| retainedHeap 	|
| :----------- | :----------- | -----------: | -----------: |
| DataInputBuffer @ 0xb5094040	| byte[104523972] @ 0xaecdfe88	| 104,523,992	| 104,523,992	|


### User Objects

| User object | shallow heap | retained heap | length | inner object | inner size | threads | code() |
|:------------| ------------:| -------------:| ------:|:------------ | ----------:| :------ | :------|
| java.util.ArrayList @ 0xb50915e8 | 24 | 549,082,552 | 3,204,066 | java.lang.String @ 0xb7b2f0a8 | 256 | main | reduce |

### User objects => Threads and code() 

[java.util.ArrayList @ 0xb50915e8] =>

	|------ in reduce() in main ------|
	at reducer.ReducePhaseOOM$ConsumingJoinReducer.reduce(Lreducer/ReducePhaseOOM$TextPair;Ljava/util/Iterator;Lorg/apache/hadoop/mapred/OutputCollector;Lorg/apache/hadoop/mapred/Reporter;)V (ReducePhaseOOM.java:117)
		java.util.ArrayList @ 0xb50915e8 [32040]


