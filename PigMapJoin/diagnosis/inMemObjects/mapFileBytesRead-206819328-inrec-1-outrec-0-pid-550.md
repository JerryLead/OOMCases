## Objects in Map Stage


### Framework Objects



### User Objects

| User object | shallow heap | retained heap | length | inner object | inner size | threads | code() |
|:------------| ------------:| -------------:| ------:|:------------ | ----------:| :------ | :------|
| java.util.HashMap @ 0xbe2c0f18 | 48 | 1,028,338,784 | 1,007,636 | Key: org.apache.pig.data.BinSedesTuple @ 0xcd126840 + Value: java.util.ArrayList @ 0xcd12a158 | 72 + 1,104 | main | map |

### User objects => Threads and code() 

[java.util.HashMap @ 0xbe2c0f18] =>

	|------ in map() in main ------|
	at org.apache.pig.backend.hadoop.executionengine.physicalLayer.relationalOperators.POFRJoin.setUpHashMap()V (POFRJoin.java:337)
		java.util.HashMap @ 0xbe2c0f18 [17994586]


