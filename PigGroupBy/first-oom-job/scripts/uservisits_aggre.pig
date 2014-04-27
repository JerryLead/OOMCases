SET default_parallel $reducers 

SET child.monitor.jstat.seconds 2

SET io.sort.mb $io_sort_mb
SET mapred.child.java.opts '$mapred_child_java_opts' 

SET mapred.job.reuse.jvm.num.tasks 1
SET job.name '$name $mapred_child_java_opts $io_sort_mb $reducers'


SET mapred.job.shuffle.merge.percent 0.9
SET mapred.job.shuffle.input.buffer.percent 0.95


rmf output/pig_bench/uservisits_aggre;
a = load '/data/uservisits-double' using PigStorage('|') as (sourceIP,destURL,visitDate,adRevenue,userAgent,countryCode,languageCode,searchWord,duration);
a1 = foreach a generate sourceIP, adRevenue;
b = group a1 by sourceIP;
c = FOREACH b GENERATE group, SUM(a1. adRevenue);
store c into 'output/pig_bench/uservisits_aggre';

