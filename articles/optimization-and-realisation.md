---
authorName: Igor Spasić
authorGithubUsername: igr
issue: 105
title: Optimization and Realization
---
# {{page.title}}

There is no developer that haven't heard the famous Donald Knuth's saying: "Premature optimization is the root of all evil." Often this sentence is understood in the context of the performance: speed of the software execution. However, it talks more about something else instead.

It's about _the value_ that some code brings into the product.

During the development, the programmer's goal is to write the code that effectively meets the required functionality. However, often from the good intentions to write the quality code, a programmer goes too far and introduces complexity that is greater than its real worth (over-engineering). In the other words, the value of the code decreases because of the unnecessary complexity increases. Similarly, sometimes the development focuses on the features that are not critical and do not give the essential value to the product. Instead, development tackles less-relevant features.

In this context, premature optimization is all the work that was not spent on the production of the real value. The opposition of the optimization is _realization_: a work that actually brings the value. Now the Knuth's sentence is more meaningful.

Balancing between optimization or realization is not reserved only for planning and top-level architecture. It make sense to put the work on every-day code in this perspective. No matter it is a feature or a code block, try to determine if it is an optimization or realization. If it is an optimization, figure if it is premature or not. Are you working on something that brings none or little value at the moment? Are you introducing the unnecessary complexity? Are you adding more edge cases than actually needed?

The virtue is to avoid the complexity, Detect it on time by thinking about the premature optimization.

*By {{page.authorName}}*