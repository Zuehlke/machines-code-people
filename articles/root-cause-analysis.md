---
authorName: Matthias Meid
authorGithubUsername: matthias-meid
issue: 98
title: You Always Have Time for a Proper Root Cause Analysis
---
# {{page.title}}

Production will pop up, even in solid software. [Don't panic.](https://en.wikipedia.org/wiki/Phrases_from_The_Hitchhiker%27s_Guide_to_the_Galaxy#Don't_Panic)

We're more than eager to resolve the issue quickly. We should be, yet we should never stop being careful and analytical. Otherwise we might deploy another embarassing bug or suppress the problem without solving it, making everything worse.

Saving an hour of analysis is not worth it.

## People Will Describe the Symptoms

Keep in mind that users will report _symptoms_. This has nothing to do with a lack of understanding or skill. They have an outside view.

What you need to find, and then fix, is the _problem_ (or more precisely its _cause_).

Listen to all the clues. Then analyse. Re-produce. Re-think. Refine (or create) the ticket. Think of test cases, which are explicit about expected and actual results.

Don't have the BA do it for you, you need to be part of the thinking. This might very well take longer than the coding. But if you don't do this slowly and deliberately, you might eliminate only half the problem or even make it worse. Don't be that cowboy.

## Can We Be More Specific?

Absolutely!

Let's have a look at some of the painfully obvious yet all too common pitfalls.

### Not Really Fixing the Issue. Or: Not Fixing The Real Issue.

Do you feel some guilt reading through the three examples below? I do.

* Added a fix in the wrong place. Didn't solve the problem, optionally introduced another one?
* Fixed a `NullReferenceException` by adding another `if`, ended up with no exception but a wrong result?
* Divided an `x` through `total` to make it relative, deployed to production, got an "unexpected" `DivideByZeroException` the day after?

Things are often more subtle and not that silly. What they have in common though is that we didn't think it through all the way. We knew what _shouldn't_ happen, but didn't find out _why_ and what _should_.

### "It's a Feature." Or: "We Cannot Re-Produce This!"

It's a chance to improve the error message.

You couldn't find customer #316 in the DB? A `NullReferenceException` with a stack trace is a bug. Tell them what's wrong, in their language, so they can understand the problem without a debugger.

Also try this when you cannot re-produce a problem. Don't try to solve it based on assumptions; refine your error handling and use it to find the problem.

## ... This Might Have Happened Somewhere Else

"I think we might divide by `total` there, there and there too. We should check if that also throws a `DivideByZeroException`."

It's great to think about it. The problem might be a pattern. But analyse and fix it separately.

Does this happen too often? That's what the [DRY priciple](https://en.wikipedia.org/wiki/Don%27t_repeat_yourself) is about.

### There's a "Real Solution" and a "Quick Solution" (and a "Workaround")

After understanding the problem there might be multiple options to solve or work around it:

1. adding another `if` in method x
1. refactoring the accounting system interface to support zero totals
1. breaking down the system into different microservices

It's fine to add an `if` to get the production issue out of the way - if you have thought it through first! By all means write all the options down and prioritise. After adding the 5th `if`, another solution could be increasingly compelling.

## Conclusion

Every issue needs careful and thorough analysis. The problem might seem obvious, but it's always worth double-checking. You always have that much time.

Having said that, be pragmatic with the fix. Don't overengineer. Decide what's needed _now_ to put out the fire, and what should be done  _later_ to prevent further blazes.

But let it be an educated decision.

P.S. Whatever you do. Test, test, test!

*By {{page.authorName}}*

{% include "./_example.resources.md" %}