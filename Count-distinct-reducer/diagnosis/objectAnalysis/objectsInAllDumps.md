## Heap Dump
### Dump 0 [rCombInRecords = 1] name = rCombInRecords-1-out-0-pid-13958.md
| User object | shallow heap | retained heap | length | inner object | inner size | threads | code() |
|:------------| ------------:| -------------:| ------:|:------------ | ----------:| :------ | :------|
| org.apache.pig.data.DefaultDataBag @ 0xd4d23120 | 40 | 37,234,256 | 1 |  |  | Thread for merging in memory files | combine |

### Dump 1 [rCombInRecords = 5] name = rCombInRecords-5-out-0-pid-13958.md
| User object | shallow heap | retained heap | length | inner object | inner size | threads | code() |
|:------------| ------------:| -------------:| ------:|:------------ | ----------:| :------ | :------|
| org.apache.pig.data.DefaultDataBag @ 0xd8d8d240 | 40 | 74,942,624 | 1 |  |  | Thread for merging in memory files | combine |
| org.apache.pig.data.DefaultDataBag @ 0xd5222ba8 | 40 | 40,001,464 | 1 |  |  | Thread for merging in memory files | combine |
| org.apache.pig.data.DefaultDataBag @ 0xd3cdb810 | 40 | 22,304,960 | 1 |  |  | Thread for merging in memory files | combine |
| org.apache.pig.data.DefaultDataBag @ 0xd7848c40 | 40 | 22,299,936 | 1 |  |  | Thread for merging in memory files | combine |

### Dump 2 [rCombInRecords = 9] name = rCombInRecords-9-out-0-pid-13958.md
| User object | shallow heap | retained heap | length | inner object | inner size | threads | code() |
|:------------| ------------:| -------------:| ------:|:------------ | ----------:| :------ | :------|
| org.apache.pig.data.DefaultDataBag @ 0xd45cd6b8 | 40 | 120,325,296 | 1 |  |  | Thread for merging in memory files | combine |
| org.apache.pig.data.DefaultDataBag @ 0xd41f3eb8 | 40 | 4,021,312 | 1 |  |  | Thread for merging in memory files | combine |

### Dump 3 [rCombInRecords = 13] name = rCombInRecords-13-out-0-pid-13958.md
| User object | shallow heap | retained heap | length | inner object | inner size | threads | code() |
|:------------| ------------:| -------------:| ------:|:------------ | ----------:| :------ | :------|
| org.apache.pig.data.DefaultDataBag @ 0xd45cdc50 | 40 | 12,547,264 | 1 |  |  | Thread for merging in memory files | combine |
| org.apache.pig.data.DefaultDataBag @ 0xd41f3e50 | 40 | 4,021,312 | 1 |  |  | Thread for merging in memory files | combine |

### Dump 4 [rCombInRecords = 17] name = rCombInRecords-17-out-0-pid-13958.md
| User object | shallow heap | retained heap | length | inner object | inner size | threads | code() |
|:------------| ------------:| -------------:| ------:|:------------ | ----------:| :------ | :------|
| org.apache.pig.data.DefaultDataBag @ 0xd45cdfe8 | 40 | 120,221,592 | 1 |  |  | Thread for merging in memory files | combine |
| org.apache.pig.data.DefaultDataBag @ 0xd41f3dd0 | 40 | 4,021,312 | 1 |  |  | Thread for merging in memory files | combine |

### Dump 5 [rCombInRecords = 20] name = rCombInRecords-20-out-0-pid-13958.md
| User object | shallow heap | retained heap | length | inner object | inner size | threads | code() |
|:------------| ------------:| -------------:| ------:|:------------ | ----------:| :------ | :------|
| org.apache.pig.data.DefaultDataBag @ 0xd667bfc8 | 40 | 120,196,248 | 1 |  |  | Thread for merging in memory files | combine |
| org.apache.pig.data.DefaultDataBag @ 0xd41f3dd0 | 40 | 4,021,312 | 1 |  |  | Thread for merging in memory files | combine |

### Dump 6 [rCombInRecords = 21] name = rCombInRecords-21-out-0-pid-13958-OOM.md
| User object | shallow heap | retained heap | length | inner object | inner size | threads | code() |
|:------------| ------------:| -------------:| ------:|:------------ | ----------:| :------ | :------|
| byte[157286400] @ 0xe0c00000 | 157,286,416 | 157,286,416 | 1 |  |  | Thread for merging in memory files | combine |
| org.apache.pig.data.InternalDistinctBag @ 0xd74acab0 | 48 | 24,271,976 | 1 |  |  | Thread for merging in memory files | combine |
| org.apache.pig.data.DefaultDataBag @ 0xd4169e10 | 40 | 4,021,312 | 1 |  |  | Thread for merging in memory files | combine |
| org.apache.pig.data.DefaultDataBag @ 0xd70d6cb0 | 40 | 4,021,312 | 1 |  |  | Thread for merging in memory files | combine |

### Framework objects


#### Segments

| Location 	 | FrameworkObj 	| Inner object 	| retainedHeap 	| taskId 	|
| :----------- | :----------- | :----------- | -----------: | -----------: |
| SegmentsInList	| ReduceTask$ReduceCopier$MapOutput @ 0xd0db1a80	| byte[45751456] @ 0xbb11e448	| 45,751,472	| 12	|
| SegmentsInList	| ReduceTask$ReduceCopier$MapOutput @ 0xd4543b58	| byte[45691078] @ 0xd4543b90	| 45,691,096	| 1	|
| SegmentsInList	| ReduceTask$ReduceCopier$MapOutput @ 0xd74ad1a8	| byte[45679016] @ 0xd74ad1e0	| 45,679,032	| 2	|
| SegmentsInList	| ReduceTask$ReduceCopier$MapOutput @ 0xd0f5ec90	| byte[45672007] @ 0xd0f677e8	| 45,672,024	| 9	|
| SegmentsInMerge/Buffer	| Merger$Segment @ 0xd0f55498	| byte[45744906] @ 0xcb677ab0	| 45,744,928	| 10	|
| SegmentsInMerge/Buffer	| Merger$Segment @ 0xd0f57018	| byte[45743077] @ 0xa7b09650	| 45,743,096	| 14	|
| SegmentsInMerge/Buffer	| Merger$Segment @ 0xd0f55a18	| byte[45650354] @ 0xc5f71ad8	| 45,650,376	| 11	|
| SegmentsInMerge/Buffer	| Merger$Segment @ 0xd0f54998	| byte[45691023] @ 0xc084d270	| 45,691,040	| 8	|
| SegmentsInMerge/Buffer	| Merger$Segment @ 0xd0f58b98	| byte[45724208] @ 0xa2400000	| 45,724,224	| 16	|
| SegmentsInMerge/Buffer	| Merger$Segment @ 0xd0f58618	| byte[45684984] @ 0xb2e6a9f0	| 45,685,000	| 0	|
| SegmentsInMerge/Buffer	| Merger$Segment @ 0xd0f58098	| byte[45608889] @ 0xb859f478	| 45,608,912	| 13	|
| SegmentsInMerge/Buffer	| Merger$Segment @ 0xd0f59118	| byte[28400597] @ 0xb1354e08	| 28,400,616	| 18	|
| SegmentsInMerge/Buffer	| Merger$Segment @ 0xd0f54f18	| byte[45600252] @ 0xc8afaca0	| 45,600,272	| 15	|
| SegmentsInMerge/Buffer	| Merger$Segment @ 0xd0f57598	| byte[45684858] @ 0xae7c3578	| 45,684,880	| 5	|
| SegmentsInMerge/Buffer	| Merger$Segment @ 0xd0f54418	| byte[45691580] @ 0xce21e7b0	| 45,691,600	| 6	|
| SegmentsInMerge/Buffer	| Merger$Segment @ 0xd0f56a98	| byte[45666662] @ 0xbdcc00f8	| 45,666,680	| 7	|
| SegmentsInMerge/Buffer	| Merger$Segment @ 0xd0f59698	| byte[21822891] @ 0xa6639890	| 21,822,912	| 21	|
| SegmentsInMerge/Buffer	| Merger$Segment @ 0xd0f56518	| byte[45663253] @ 0xaa6a9248	| 45,663,272	| 17	|
| SegmentsInMerge/Buffer	| Merger$Segment @ 0xd0f55f98	| byte[45684664] @ 0xc33e0310	| 45,684,680	| 4	|
| SegmentsInMerge/Buffer	| Merger$Segment @ 0xd0f5a198	| byte[22601462] @ 0xad235670	| 22,601,480	| 19	|
| SegmentsInMerge/Buffer	| Merger$Segment @ 0xd0f59c18	| byte[23717439] @ 0xa4f9b240	| 23,717,456	| 20	|
| SegmentsInMerge/Buffer	| Merger$Segment @ 0xd0f57b18	| byte[45756784] @ 0xb59fc2f8	| 45,756,800	| 3	|
| minSegment	| Merger$Segment @ 0xd0f55498	| byte[45744906] @ 0xcb677ab0	| 45,744,928	| 10	|
| keySegment	| DataInputBuffer @ 0xd0f55738	| byte[45744906] @ 0xcb677ab0	| 45,744,928	| -2	|


