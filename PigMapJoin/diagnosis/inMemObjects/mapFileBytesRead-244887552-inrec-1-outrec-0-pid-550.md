## Objects in Map Stage


### Framework Objects



### User Objects

| User object | shallow heap | retained heap | length | inner object | inner size | threads | code() |
|:------------| ------------:| -------------:| ------:|:------------ | ----------:| :------ | :------|
| java.util.HashMap @ 0xbe264c40 | 48 | 1,186,304,896 | 1,105,665 | Key: org.apache.pig.data.BinSedesTuple @ 0xe2b568b8 + Value: java.util.ArrayList @ 0xe2b56968 | 72 + 496 | main | map |

### User objects => Threads and code() 

[java.util.HashMap @ 0xbe264c40] =>

	|------ in map() in main ------|
	at org.apache.pig.backend.hadoop.executionengine.physicalLayer.relationalOperators.POFRJoin.setUpHashMap()V (POFRJoin.java:347)
		java.util.HashMap @ 0xbe264c40 [17981628]

	at java.util.HashMap.resize(I)V (HashMap.java:462)
		java.util.HashMap @ 0xbe264c40 [17981628]


