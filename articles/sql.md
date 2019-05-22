---
authorName: Ognjen Blagojević
authorGithubUsername: ognjen-blagojevic-zuehlke
issue: 85
title: Do something about that slow SQL query
---
# {{page.title}}

Please, don't blindly buy more memory, faster disks or CPUs. To start solving database performance problems, first of all, you need understanding. So let's start removing the veil of mystery from the topic of SQL performance. Let's understand what can we can do to make our database run faster.

A typical performance problem would be one large query executing for a long time, or an enormous number of micro-queries bringing the database server to his knees.

First of all, you need to understand the cause of the problem. Do not optimise blindly. Find a way to monitor all the processes on a troublesome server. Be sure that there is no other process that is suffocating the server, i.e. that the slowness of the database is not caused by some external factor.

If the database is what is exhausting most of the server resources, you need to find out why this is happening. The database essentially responds to a set of queries sent by clients, using the data stored in the tables. You need to have an insight into these queries to know which one of them precisely is problematic. The database, or the ORM framework, usually has the ability to record all the queries in the log file, as well as to measure their performance. It is vital that you are able to search the log files, find the number of queries at a certain time interval, and find the slowest and/or frequently repeated queries. Sometimes for these things, it is sufficient to manually review the log files, and sometimes you will use tools (log analysers) to dig and visualise this information.

If the database is slow because of an unexpectedly large number of small but quick queries, then it is usually necessary to: 
1. Change the client so as not to send an unreasonably large number of queries, but to join more queries into one. A typical problem with the ORM framework is unnecessary lazy loading. In case of reading multiple records from the database, this becomes an "N+1 problem": your query will get only basic data for all N rows, and the ORM framework will execute one additional query for every single row. Carefully selected eager loading (either as part of a query using the "fetch join" construct, or declerative) can significantly reduce the number of queries and improve performance.
2. If smaller queries are really necessary, then analyse the queries. It may happen that a lot of queries like ID/username lookup are being repeated over and over again. If that is the case, consider caching the results of frequently executed queries (either by using the ORM cache, a 3rd party cache, or rolling your own). It may speed up total query execution time dramatically.

If the database has one very slow query, or several of them, then they need to be analysed individually and possibly accelerated by the following means:
1. Create indices over appropriate columns (primary keys, foreign keys, columns in JOINs, columns for search / selection)
2. Create partial indices (e.g. over active records, or over records of a particular type)
3. Avoid selecting unnecessarily large amounts of data (e.g. selecting all the rows from a big table when the user might view only the first couple of pages, or selecting all columns when only some of them are presented to the user)
4. Optimise correlated subqueries
5. Check the plan for query execution and database statistics, and update statistics if necessary

Finally, if the number of queries is within expectations, and the execution of each query is slower than expected, there may be a systemic problem and the solution is to check the configuration. E.g.:
1. Not using the connection pool can slow down any query, because establishing a TCP connection takes time
2. Incorrectly configured memory allocations can contribute to unwanted swapping of virtual memory between RAM and disk, which is disastrous for performance
3. The wrong file system and RAID configuration (RAID 10 or several RAID 1 groups perform the best; avoid journalling on log partition file system; avoid RAID 5 as it does not perform very well).
4. Wrongly selected storage. For example: NAS and SAN, despite similar acronyms, are very different storage solutions with completely different performance.
5. Not enough RAM. If the entire database (together with indices) exceeds the available memory, performance may be poor. In the case of large databases that cannot be completely stored in memory, it may be unavoidable, but in the case of smaller databases, the biggest performance jump is obtained if the whole database is in the memory.
6. Bad hardware. Sometimes you just need to get better hardware.

Here, we have introduced some practical solutions for how to tackle database performance issues, and this can be used as a starting point for you personal optimisation quest.

*By {{page.authorName}}*
