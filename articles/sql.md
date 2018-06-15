---
authorName: Ognjen Blagojević
authorGithubUsername: ognjen-blagojevic-zuehlke
issue: 85
title: Do something about that slow SQL query
---
# {{page.title}}

Solving the problem of poor database performance is the topic on which the
books are written, but we will here briefly describe the procedure.

First of all, you need to understand the cause of the problem. Do not optimize
blindly. Find a way to monitor all processes on a troublesome server. Be sure
that there is no other process that suffocates the server, i.e. that the
slowness of the database is not caused by some external factor.

If the database is the one that exhausts most server resources, you need to
find out why that happens. Database essentially responds to a set of queries
sent by clients, using the data that are stored in the tables. You need to
have an insight into these queries to know which one of them exactly is
problematic. The database, or the ORM framework, usually has the ability to
record all the queries in the log file, as well as the timing of their
execution. It is vital that you are able to search the log files, find the
number of queries at a certain time interval, find the slowest queries and
frequently repeated queries. Sometimes for these things there is sufficient to
manualy review a log files, and sometimes you will use tools (like pgBadger
for the PostgreSQL database) that will dig and visualize this information.

If database is slow because of an unexpectedly large number of small but quick
queries, then it is usually necessary to:
1. Change the client so as not to send an unreasonably large number of
queries, but to join more queries into one. A typical problem with ORM
framework is unnecessary lazy loading. Carefully selected eager loading
(either as part of query using "fetch join" construct, or declerative) can
significantly reduced the number of queries and improve performance.
1. If a smaller queries are really necessary caching can be a solution that
will speed up all such queries dramatically.

If the database has one very slow query, or several of them, then they need to
be analyzed individually and possibly accelerated by those means:
1. Create indexes over appropriate columns (primary keys, foreign keys,
columns in JOINs, columns for search / selection)
1. Create partial indexes (e.g. over active records, or over records of a
particular type)
1. Avoid selecting unnecessarily large amounts of data (e.g. selecting all
rows from big table when user might view only first couple of pages, or
selecting all columns when only some of them are presented to the user)
1. Optimize correlated subqueries
1. Check the plan for query execution and database statistics, and update
statistics if necessary

Finally, if the number of queries is within the expections, and the execution
of each query is slower than expected, there may be a systemic problem and the
solution is in checking the the configuration. E.g:
1. Not using the connection pool can slow down any query, because establishing
a TCP connection takes time
1. Incorrectly configured memory allocations can contribute to unwanted
swapping of virtual memory between RAM and disk, which is disastrous for
performance
1. Wrong file system
1. Wrongly selected storage. For example: NAS and SAN, despite similar
acronyms, are very different storage solutions with completely different
performance.
1. Not enough RAM. If the entire database (together with indexes) exceeds the
available memory, performance may be poor. In the case of large databases that
can not be completely stored in memory, it must be unavoidable, but in the
case of smaller databases, the biggest performance jump is obtained if the
whole database is in the memory.
1. Bad hardware. Sometimes you just need to get a better one.

That would be database performance debugging crash course, that you can, I
hope, use as a starting point for your personal optimization conquest.

*By: {{page.authorName}}*
