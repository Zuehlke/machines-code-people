---
authorName: Matthias Meid
authorGithubUsername: matthias-meid
issue: 98
title: You always have time for a proper root cause analysis
---
# {{page.title}}

A production issue will pop up, even in solid software. Don't panic.

We, as software engineers, are more than eager to resolve the issue quickly. We should be, yet we should never stop being careful and analytical. Otherwise we might deploy another embarrassing bug or suppress the problem without solving it, making everything worse.

Investing an hour in analysis is always worth it.

## People will describe the symptoms

Keep in mind that users will report _symptoms_. This has nothing to do with a lack of understanding or skill. They have an outside view.

What you need to find, and then fix, is the _problem_ (or, more precisely, its _cause_).

Don't jump to conclusions. Listen to all the clues. Analyse. Reproduce. Rethink. Refine (or create) the ticket. Remember that every bug is a strong indicator of a missing test, so think of test cases which are explicit about expected and actual results. And write tests to cover your findings.

Don't have someone else do the analysis for you; you need to be part of the thought process. This might very well take longer than the coding. But if you don't do this slowly and deliberately, you might fix only half the problem or even make it worse. Don't be that cowboy.

## Can we be more specific?

Absolutely!

Let's have a look at some of the painfully obvious yet all too common pitfalls.

### Not really fixing the issue. Or: Not fixing the real issue.

Do you feel some guilt reading through the three examples below? I do.

* Added a fix in the wrong place. Didn't solve the problem, optionally introduced another one?
* Fixed a `NullReferenceException` by adding another `if`, ended up with no exception but a wrong result?
* Divided an `x` through `total` to make it relative, deployed to production, got an "unexpected" `DivideByZeroException` the day after?

Things are often more subtle and not that silly. What the three examples have in common though is that we didn't think it through all the way. We knew what _shouldn't_ happen, but didn't find out _why_ it did and what _should_ happen.

### "We cannot reproduce this!" or "It's expected behaviour."

It's a chance to improve the error message.

You couldn't find customer #316 in the DB, because it actually doesn't exist? A `NullReferenceException` with a stack trace is still a bug. Tell them what's wrong, in their language, so everyone can understand the problem without a debugger.

Also do this when you cannot reproduce a problem. Don't try to solve it based on assumptions; refine your error handling and use it to find the problem.

### ... This might have happened somewhere else

"I think we might divide by `total` there, there and there too. We should check if that also throws a `DivideByZeroException`."

It's great to think about it. The problem might be a pattern. But fix that separately. Equally carefully!

Does this happen too often? That's what the DRY principle is about.

### There's a "real solution" and a "quick solution" (and a "workaround")

After understanding the problem, there might be multiple options to solve or work around it:

1. adding another `if` in method x
2. refactoring the accounting system interface to support zero totals
3. breaking down the system into different microservices

It's fine to add an `if` to get an imminent problem out of the way - after you have thought it through! In any case, keep all the options in your backlog. After adding the 5th `if`, another solution could be increasingly compelling.

## Conclusion

All issues, even seemingly trivial ones, demand careful and thorough analysis. The problem might seem obvious, but it's always worth double-checking. You always have time for that.

Having said that, be pragmatic with the fix. Don't over-engineer. Decide what's needed _now_ to put out the fire, and what should be done _later_ to prevent further blazes.

But let it be an educated decision. And always test thoroughly.

*By {{page.authorName}}*