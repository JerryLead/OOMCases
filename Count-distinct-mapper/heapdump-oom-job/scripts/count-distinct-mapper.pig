SET default_parallel $reducers

SET io.sort.record.percent 0.2

--SET pig.exec.nocombiner true

SET child.monitor.jstat.seconds 2

SET io.sort.mb $io_sort_mb
SET mapred.child.java.opts '$mapred_child_java_opts' 

SET mapred.job.reuse.jvm.num.tasks 1
SET job.name '$name $mapred_child_java_opts $io_sort_mb $reducers'

--SET mapred.min.split.size 134217728

--SET mapred.map.max.attempts 1
--SET mapred.reduce.max.attempts 1

SET heapdump.map.input.records 6,128,490[10] 
SET heapdump.map.combine.input.records '(2,540,389:3,288,321)[10]'

SET heapdump.task.attempt.ids attempt_201404141640_0001_m_000002_0

rmf /user/xulijie/output/distinctOOM;
a = load '/data/rankings-512MB' using PigStorage('|') as (pagerank:int,pageurl,aveduration:int);
--a = load '/syntheticData/brownTables/samples/RankingsFiltered' using PigStorage('|') as (pagerank:int,pageurl,aveduration:int);
b = GROUP a BY pagerank;
c = FOREACH b {
	dRank = DISTINCT a.pageurl;
	GENERATE group, COUNT(dRank), SUM(a.aveduration);
};
store c into '/user/xulijie/output/distinctOOM';
