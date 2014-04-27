## Objects in Map Stage


### Framework Objects



### User Objects

| User object | shallow heap | retained heap | length | inner object | inner size | threads | code() |
|:------------| ------------:| -------------:| ------:|:------------ | ----------:| :------ | :------|
| java.util.HashMap @ 0xbe238548 | 48 | 1,221,481,328 | 1,334,341 | Key: org.apache.pig.data.BinSedesTuple @ 0xaa0c6fc8 + Value: java.util.ArrayList @ 0xaa0c7058 | 72 + 1,048 | main | map |

### User objects => Threads and code() 

[java.util.HashMap @ 0xbe238548] =>

	|------ in map() in main ------|
	at org.apache.pig.backend.hadoop.executionengine.physicalLayer.relationalOperators.POFRJoin.setUpHashMap()V (POFRJoin.java:348)
		java.util.HashMap @ 0xbe238548 [17978342]


