#!/bin/bash
NUM_OF_TRIALS=1 

# variables 
reducers=4
io_sort_mb=400
xmx=1000
xms=1000

# pig all benchmark queries

SCRIPT="uservisits_aggre.pig"
									
      
	  
#	  mapred_child_java_opts=\'"-Xmx"$xmx"m -Xms"$xmx"m"\'
	  mapred_child_java_opts=\'"-Xmx"$xmx"m -Xms"$xms"m -XX:+HeapDumpOnOutOfMemoryError -XX:HeapDumpPath=/tmp -verbose:gc -XX:+PrintGCDetails -XX:+PrintGCTimeStamps"\'
      echo mapred_child_java_opts=$mapred_child_java_opts > jvm.param

      PIG_CMD="$PIG_HOME/bin/pig -param name=$SCRIPT -param_file jvm.param -param io_sort_mb=$io_sort_mb -param reducers=$reducers"
	  
      $PIG_CMD $SCRIPT
	  echo $PIG_CMD $SCRIPT

