## Heap Dump
### Dump 0 [mCombInRecords = 2,540,390] name = mCombInRecords-2540390-out-262-pid-6663.md

### Dump 1 [mCombInRecords = 2,689,976] name = mCombInRecords-2689976-out-262-pid-6663.md
| User object | shallow heap | retained heap | length | inner object | inner size | threads | code() |
|:------------| ------------:| -------------:| ------:|:------------ | ----------:| :------ | :------|
| java.lang.Object[3] @ 0xe808d6c8 | 32 | 23,129,328 | 2 | org.apache.pig.data.InternalCachedBag @ 0xe8089c10 | 11,564,648 | SpillThread | combine |
| org.apache.pig.impl.util.SpillableMemoryManager @ 0xe52a18e0 | 24 | 8,377,112 | 1 |  |  | main | premap + map |

### Dump 2 [mCombInRecords = 2,839,562] name = mCombInRecords-2839562-out-262-pid-6663.md
| User object | shallow heap | retained heap | length | inner object | inner size | threads | code() |
|:------------| ------------:| -------------:| ------:|:------------ | ----------:| :------ | :------|
| java.lang.Object[3] @ 0xe7257da0 | 32 | 42,707,248 | 2 | org.apache.pig.data.InternalCachedBag @ 0xe7257dc0 | 23,327,744 | SpillThread | combine |
| org.apache.pig.impl.util.SpillableMemoryManager @ 0xe52a18e0 | 24 | 15,260,232 | 1 |  |  | main | premap + map |

### Dump 3 [mCombInRecords = 2,989,148] name = mCombInRecords-2989148-out-262-pid-6663.md
| User object | shallow heap | retained heap | length | inner object | inner size | threads | code() |
|:------------| ------------:| -------------:| ------:|:------------ | ----------:| :------ | :------|
| java.lang.Object[3] @ 0xe7257da0 | 32 | 54,371,048 | 2 | org.apache.pig.data.InternalCachedBag @ 0xe7257dc0 | 34,991,544 | SpillThread | combine |
| org.apache.pig.impl.util.SpillableMemoryManager @ 0xe52a18e0 | 24 | 15,934,992 | 1 |  |  | main | premap + map |

### Dump 4 [mCombInRecords = 3,138,734] name = mCombInRecords-3138734-out-262-pid-6663.md
| User object | shallow heap | retained heap | length | inner object | inner size | threads | code() |
|:------------| ------------:| -------------:| ------:|:------------ | ----------:| :------ | :------|
| java.lang.Object[3] @ 0xe7257da0 | 32 | 65,141,240 | 2 | org.apache.pig.data.InternalCachedBag @ 0xe7257dc0 | 45,761,736 | SpillThread | combine |
| org.apache.pig.impl.util.SpillableMemoryManager @ 0xe52a18e0 | 24 | 15,934,992 | 1 |  |  | main | premap + map |

### Dump 5 [mCombInRecords = 3,288,320] name = mCombInRecords-3288320-out-262-pid-6663.md
| User object | shallow heap | retained heap | length | inner object | inner size | threads | code() |
|:------------| ------------:| -------------:| ------:|:------------ | ----------:| :------ | :------|
| java.lang.Object[3] @ 0xe7257da0 | 32 | 77,251,840 | 2 | org.apache.pig.data.InternalCachedBag @ 0xe7257dc0 | 57,872,336 | SpillThread | combine |
| org.apache.pig.impl.util.SpillableMemoryManager @ 0xe52a18e0 | 24 | 15,934,992 | 1 |  |  | main | premap + map |

### Dump 6 [mCombInRecords = 3,288,321] name = mCombInRecords-3288321-out-262-pid-6663-OOM.md
| User object | shallow heap | retained heap | length | inner object | inner size | threads | code() |
|:------------| ------------:| -------------:| ------:|:------------ | ----------:| :------ | :------|
| org.apache.pig.data.BinSedesTuple @ 0xf0ca41e0 | 24 | 77,251,960 | 1 |  |  | SpillThread | combine |
| org.apache.pig.data.InternalDistinctBag @ 0xf0ca4288 | 48 | 61,257,728 | 1 |  |  | SpillThread | combine |
| byte[41418752] @ 0xf4713840 | 41,418,768 | 41,418,768 | 1 |  |  | main + SpillThread | map + combine |
| org.apache.pig.impl.util.SpillableMemoryManager @ 0xe527c8c8 | 24 | 14,139,904 | 1 |  |  | main | premap + map |

### Framework objects
#### SpillBuffer

| FrameworkObj 	| Inner object 	| shallowHeap 	| retainedHeap 	|
| :----------- | :----------- | -----------: | -----------: |
| kvbuffer	| byte[503316480] @ 0xc1800000	| 503,316,496	| 503,316,496	|
| kvindices	| int[23592960] @ 0xdf800010	| 94,371,856	| 94,371,856	|
| kvoffsets	| int[7864320] @ 0xe52f7a48	| 31,457,296	| 31,457,296	|




