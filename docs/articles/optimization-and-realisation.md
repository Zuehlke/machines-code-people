---
authorName: Igor Spasić
authorGithubUsername: igr
issue: 105
title: Optimization and realization
---
# {{page.title}}

There is no developer that hasn’t heard the famous Donald Knuth quote: "Premature optimization is the root of all evil." Often this sentence is understood in the context of performance, i.e. the speed of the software execution. However, it refers more to something else.

It's about _the value_ that some code brings into the product.

During the development, the programmer's goal is to write the code that effectively meets the required functionality. However, often in the desire to write a high-quality code, a programmer goes too far and introduces complexity that is greater than its real worth (over-engineering). In other words, the value of the code decreases because of the unnecessary increases in complexity. Similarly, sometimes the development focuses on features that are not critical and do not give the product essential value. Instead, development tackles less relevant features.

In this context, premature optimization is all the work that was not spent on the production of real value. The alternative to optimization is realization: work that actually brings value. Now the Knuth sentence is more meaningful.

Striking the balance between optimization and realization is not reserved for planning and top-level architecture. It make sense to view work on everyday code from this perspective. No matter whether it is a feature or a code block, try to determine if it is an optimization or a realization. If it is an optimization, work out whether it is premature or not. Are you working on something that brings little value, or even no value, at the moment? Are you introducing unnecessary complexity? Are you adding more edge cases than actually needed?

The virtue is to avoid complexity. Detect it on time by thinking about premature optimization.

*By {{page.authorName}}*
