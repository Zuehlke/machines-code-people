---
authorName: Matthias Meid
authorGithubUsername: matthias-meid
issue: 98
title: You Always Have Time for a Proper Root Cause Analysis
---
# {{page.title}}

Eventually, there will be an issue in production, even in the best piece of software. Since people are blocked from getting their stuff done, pressure rightfully rises a bit (or a lot). Hence, we're more than eager to resolve the issue quickly. That's noble, yet skipping careful analysis is never worth it. You might very well deploy another embarassing bug to production, maybe making everything worse. More importantly though, you might suppress the symptoms without solving the problem.

## People Will Describe the Symptoms

Keep in mind that users - and to some extent also Ops teams - can only tell you _what_ happens, but not _why_. Not necessarily because they lack the skills, but they only have the outside view of your software. Hence, don't jump to conclusions.

Listen to all the clues. Then analyse. Re-produce. Re-think. Write down the problem in a ticket, including test cases, which are explicit about expected and actual results. Don't have the BA do it for you, you need to be part of the thinking. Even if it's [PEBKAC](https://en.wikipedia.org/wiki/User_error) or an external system failure, it's professional to help and teaches you _something_.

If you don't do this slowly and deliberately, you might only see the tip of the iceberg and not realise there's more than meets the eye.

**TODO:** good way to phrase: sounds obvious, so getting more specific

## Can We Be More Specific?

Absolutely!

Let's have a look at some of the pitfalls which are painfully obvious in hindsight, yet painfully common too.

### Issue Not Really Fixed

You might simply add a fix in the wrong place. You might even add a new bug, but certainly haven't done anything about the problem at hand.

Assuming you're working on the right piece of code, has any of this happened to you?

* Fixed a `NullReferenceException` by adding a null-check, ended up with an incomplete calculation?
* Divided an absolute value `x` through `total` to make it relative, deployed to production, got a `DivideByZeroException` the day after?

While both sounds silly, it's real, albeit not always as simple as this example. What we need to do here is find out what should happen. Chances are you're working on an edge case no one has thought of before ("The total cannot be null. I don't know how that happened!"), so some refinement is needed.

### It's Actually a Feature. Or: We Cannot Re-Produce This!

However, it may be a chance to improve the error message.

You couldn't find customer #316 in the DB? A `NullReferenceException` with a stack trace is always a bug. "User not found." is the very least you should offer.

Remember that everyone but you needs to understand the error without the code and a debugger. Give them all the information they need to understand the problem and act accordingly.

Being unable to re-produce an error is a change to improve error messages too. Don't try to solve a problem based on assumptions. Clear error messages, however, might make it easy to find the very same problem quickly next time.

### ... this Might Have Happened Somewhere Else

The problem might be a pattern. Multiple classes and methods might make the same or similar assumptions (e.g. "the `total` from the accounting system is never zero").

It's great to include this in your analysis! Scrutinise and prioritise every occurrence separately though.

Does this happen too often? Maybe the [DRY priciple](https://en.wikipedia.org/wiki/Don%27t_repeat_yourself) can help your project.

### There's a "Real Solution" and a "Quick Solution" (and a "Workaround")

As mentioned above, the analysis probably taught you something about the problem. The solution could be anything like

1. adding another `if` to handle this case
1. refactoring the accounting system interface service so support zero totals
1. breaking down the system into different microservices that can scale individually
1. ... let 3rd level support handle it until the next release

I encourage to hotfix what is needed _immediately_, but writing everything down for the backlog. Adding the `if` can very well be good enough to get you out of the reactive bug-fixing mode, which gives you time to shape the microservices with your team. After adding the 5th `if` though, think about the medium-size solution. Use your judgement, but get the data first.

## Wrapping Up

Careful analysis is imperative with any production issue. Don't let yourself trick you into thinking you don't have time for analysis or you know the issue already. Take that time.

Don't strive for unnecessary perfection though when implementing a fix. Don't overengineer, be pragmatic. Decide what's needed _now_, what's needed _later_. But let it be an educated decision.

*By {{page.authorName}}*

{% include "./_example.resources.md" %}