---
authorName: Adrian Herzog
authorGithubUsername: adiherzog
issue: 21
title: Coding On Purpose
---
# {{page.title}}

When I do a project, it's essential to know what for I'm doing it. And usually we start our projects exactly there, with some sort of *mission statement*, defining the *goal* of our endavour. But it's all too easy to loose sight of this goal in the daily struggle of solving the hard nitty gritty problems. That's why, many methodologies in software development try to support us to keep the project aligned with it's *purpose*.

* In **RUP**, one tries to establish traceability from lower level items to higher level goals
* If you work with **Use Cases** each Use Case represents a goal on a certain abstraction level and you can show how lower level Use Cases support higher level Use Cases in a use case diagram.
* **User Stories** are usually formulated according to a template that also includes a *goal* and a *benefit* (e.t. "as a &lt;role&gt; I want to &lt;goal&gt; so that &lt;benefit&gt;").
* With a **User Story Map** we can create a hierarchy of these *User Stories*, ordering them by how important they are in fulfilling the purpose.
* An **Impact Map** traces down the high level goals to actors, impacts and finally deliverables
* **Design Thinking** has a strong focus on *identifying and understanding customer needs*
* The idea of the **Minimal Viable Product** makes the point that we should only build as much as is necessary for fulfilling the desired goal.

If you've read up to here and have not thought of Simon Sinek yet, this can only be because you don't know him yet. He's currently the loudest voice when it comes to telling everybody to [Start with Why!](https://startwithwhy.com/). Look up his name if you have time for a YouTube night.

Unfortunately there are many areas that bear no relation to the purpose. Some examples:

* **Code** (and most other models of software, like UML diagrams), which is mostly imperative in it's nature, does just declare *how* something is achieved but it does not state *why*. So while the purpose was hopefully clear to the one writing the code, it is likely to be unknown to the poor coder maintaining the code years later.
* I've seen too many **bad user stories** that either don't state a goal and benefit or if they do, it's just a wild guess by somebody who wanted to satisfy the template structure. And worse: higher level items like *epics* miss the *purpose* even more often.
* **BDD (Behaviour Driven Design)** typically uses the *Given, When, Then* pattern which only describes what the software does, but not why.
* Many consulting companies **get told *what* to build** instead of *what problem to solve* or *what outcome to achieve*.
* **Bad managers / leaders** might tell you *what* to build instead of *what outcome to strive for*.

## When The Solution Becomes The Problem

Sometimes you're stuck deep down in a tricky problem. While some people might just give up, you're passion for problem solving lets you breed over the puzzle for hours and days, maybe even weeks. While working on the solution for your customers problem, the solution suddenly turned into the problem. Or as [Paul Watzlawick says](https://www.youtube.com/watch?v=7etsh4HwG78):

> By searching for solutions we restrict ourselves with constraints which don't exist in the original problem.

When you're stuck in such a situation it's worth taking one or two steps back and asking: *what again was the goal we wanted to achieve?* And then again: *why did we want to achieve this goal in the first place*? This helps you opening up the space for possible solutions and hopefully let's you discover that the problem you're trying to solve does not even need solving but instead you find a simpler, less problematic solution to the initial *why*. If you ask *why* five times, this approach even has a name: [The five whys technique](https://en.wikipedia.org/wiki/5_Whys).

## Measure Impact, Not Output

Think about how you track achievement of desired outcome in your project. In the end, it's the job of your *Product Owner* or *Product Manager*, but if you think they could use some inspiration, they are probably greatful for some ideas. As an example, [John Cutler proposes](https://twitter.com/johncutlefish/status/775523444385382400) to add a column to your task board called *Achieved desired outcome*. Or [Gregor Ilg says](https://twitter.com/_gregorilg/status/884663883172110336):

> Don't celebrate when you launched a product. Celebrate once you've learned from it.

Instead of measuring how many story points we can deliver per sprint, we should apply our math skills much more to measuring and tracking whether we achieve the desired outcomes in production. Do we get the desired user adoption? Is the desired percentage of business done on the new platform? Do we save the desired amount of manual work using the new system? And what do our end users tell us?

## Empathize With The People That Matter

Empathy and good collaboration with the end users is of course important in order to build a good user experience. But listening to the users is not enough.

You might hear a lot of different goals from different people in the project. Especially if there's a lack of official goals, people might fill them up with their own hidden or not so hidden agenda. Try to figure out who spends money for the project and try to understand what outcomes they hope to achieve through this investment.

## Lead Through Purpose

When leading a team, put a strong focus on communicating the *why* of the things they ask you or a team to do and also judge your success by whether the *why* is fulfilled and not whether you built exactly *what* they asked for and did it *how* they expected you to do it.

## Coding Tips

* If you get told *what* to do it's usually good to ask back *what for*, as this gives you more flexibility in finding an economic solution for the desired outcome.

* When coding, be aware that code does not document the *why* well. So be nice to your fellow coders and leave meaningful comments explaining the *why* or pointing to the relevant documentation.

* When asking somebody for help, tell them what problem you are trying to solve, not just what problem you have with your current solution approach (see [The XY Problem](http://xyproblem.info/)).

## Wrap Up

If all of this was a bit much, here's one simple tip to implement right away: no matter how minimalistic you want to keep your user stories, make sure they contain at least the desired impact.

*By {{page.authorName}}*