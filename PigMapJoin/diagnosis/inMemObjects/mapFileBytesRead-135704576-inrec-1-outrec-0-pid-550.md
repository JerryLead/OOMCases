## Objects in Map Stage


### Framework Objects



### User Objects

| User object | shallow heap | retained heap | length | inner object | inner size | threads | code() |
|:------------| ------------:| -------------:| ------:|:------------ | ----------:| :------ | :------|
| java.util.HashMap @ 0xbe5b39a0 | 48 | 693,551,104 | 758,589 | Key: org.apache.pig.data.BinSedesTuple @ 0xc456a490 + Value: java.util.ArrayList @ 0xc456a548 | 72 + 520 | main | map |

### User objects => Threads and code() 

[java.util.HashMap @ 0xbe5b39a0] =>

	|------ in map() in main ------|
	at org.apache.pig.backend.hadoop.executionengine.physicalLayer.relationalOperators.POFRJoin.setUpHashMap()V (POFRJoin.java:337)
		java.util.HashMap @ 0xbe5b39a0 [18023248]


