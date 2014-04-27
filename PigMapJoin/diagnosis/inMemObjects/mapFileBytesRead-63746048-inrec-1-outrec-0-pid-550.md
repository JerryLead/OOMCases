## Objects in Map Stage


### Framework Objects



### User Objects

| User object | shallow heap | retained heap | length | inner object | inner size | threads | code() |
|:------------| ------------:| -------------:| ------:|:------------ | ----------:| :------ | :------|
| java.util.HashMap @ 0xbe5b39a0 | 48 | 521,211,128 | 519,917 | Key: org.apache.pig.data.BinSedesTuple @ 0xba39ba90 + Value: java.util.ArrayList @ 0xba39bb10 | 72 + 552 | main | map |

### User objects => Threads and code() 

[java.util.HashMap @ 0xbe5b39a0] =>

	|------ in map() in main ------|
	at org.apache.pig.backend.hadoop.executionengine.physicalLayer.relationalOperators.POFRJoin.setUpHashMap()V (POFRJoin.java:345)
		java.util.HashMap @ 0xbe5b39a0 [18038107]


