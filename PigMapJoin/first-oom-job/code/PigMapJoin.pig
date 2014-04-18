SET default_parallel $reducers

--SET io.sort.mb 400
--SET io.sort.record.percent 0.15
--SET child.monitor.metrics.seconds 2
--SET child.monitor.counters true


--SET child.monitor.metrics.seconds 2
--SET child.monitor.counters true
--SET child.monitor.jvm.seconds 2
SET child.monitor.jstat.seconds 2

SET io.sort.mb $io_sort_mb
SET mapred.child.java.opts '$mapred_child_java_opts' 

SET mapred.job.reuse.jvm.num.tasks 1
SET job.name '$name $mapred_child_java_opts $io_sort_mb $reducers'
--SET job.name '$name $io_sort_mb $reducers'

--SET mapred.task.profile true
--SET mapred.task.profile.params -agentlib:hprof=cpu=samples,heap=sites,depth=10,force=n,thread=y,verbose=n,file=%s
--SET mapred.task.profile.maps 0
--SET mapred.task.profile.reduces 0
--SET io.sort.record.percent 0.12
--SET mapred.inmem.merge.threshold 54
--SET mapred.reduce.parallel.copies 27
--SET mapred.job.shuffle.merge.percent 0.8
--SET mapred.job.shuffle.input.buffer.percent 0.8
--SET mapred.job.reduce.input.buffer.percent 1.0

--SET mapred.min.split.size 134217728
--SET mapred.task.profile true
--SET mapred.task.profile.params -agentlib:hprof=cpu=samples,heap=sites,depth=3,force=n,thread=y,verbose=n,file=%s
--SET heapdump.map.file.bytes.read 300,000,000[10]
--SET heapdump.task.attempt.ids attempt_201403201617_0015_m_000000_0
--SET task.reporter.update.ms 500



rmf output/pig_bench/html_join;
a = load '/data/rankings' using PigStorage('|') as (pagerank:int,pageurl,aveduration);
b = load '/syntheticData/brownTables/samples/sampleUservisits' using PigStorage('|') as (sourceIP,destURL,visitDate,adRevenue,userAgent,countryCode,languageCode,searchWord,duration);
d = JOIN a by pageurl, b by destURL using 'replicated';
--d = JOIN a by pageurl, b by destURL;
store d into 'output/pig_bench/html_join';