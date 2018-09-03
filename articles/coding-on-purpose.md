---
authorName: Adrian Herzog
authorGithubUsername: adiherzog
issue: 21
title: Coding On Purpose
---
# {{page.title}}

When I carry out a project, it is essential to know its ultimate goal. And usually we start our projects exactly there, with some sort of *mission statement*, defining the *goal* of our endeavour. But it is all too easy to lose sight of this goal in the daily struggle of solving specific issues along the way. That's why many methodologies in software development try to help us by keeping the project aligned with its *purpose*.

* In **RUP**, one tries to establish traceability from lower level items to higher level goals.
* **Use cases** represent a goal at an abstracted level and it can be show how lower level use cases support higher level use cases in a use case diagram.
* **User stories** are formulated according to a template that includes a *goal* and a *benefit* (e.g. "as &lt;role&gt; I want to &lt;goal&gt; so that &lt;benefit&gt;").
* With **user story maps** we sort *user stories* by how important they are in achieving a goal.
* An **impact map** traces down the high level goals to stakeholders, impacts and finally deliverables.
* **Design thinking** has a strong focus on *identifying and understanding customer needs*.
* The idea of the **minimal viable product** makes the point that we should only build as much as is necessary in order to achieve the desired goal.

If you've read up to here and have not thought of Simon Sinek yet, this can only be because you don't know him yet. He's currently the loudest voice when it comes to telling everybody to [Start with Why!](https://startwithwhy.com/). Look up his name if you have time for a YouTube evening.

Unfortunately, there are many areas that make no reference at all to the goal. Some examples:

* **Code** (and most other models of software, like UML diagrams), which is mostly imperative in its nature, just declares *how* something is achieved but does not state *why*. Although the purpose was hopefully clear to the person writing the code, it is likely to be unknown to the poor coder maintaining the code years later.
* I've seen too many **bad user stories** that either don't state a goal and benefit or if they do, it's just a wild guess by somebody who wanted to satisfy the template structure. And worse: higher level items like *epics* fail to mention the *purpose* even more often.
* **BDD (Behaviour Driven Design)** typically uses the *Given, When, Then* pattern, which only describes what the software does, but not why.
* Many consulting companies **get told *what* to build** instead of *what problem to solve* or *what outcome to achieve*.
* **Bad managers / leaders** might tell you *what* to build instead of *what outcome to strive for*.

## When the solution becomes the problem

Sometimes you are immersed in a tricky problem. While some people might just give up, your passion for problem solving results in you pondering over the puzzle for hours and days, maybe even weeks. While working on the solution for your customer's problem, the solution suddenly turned into the problem. Or as [Paul Watzlawick says](https://www.youtube.com/watch?v=7etsh4HwG78):

> By searching for solutions we restrict ourselves with constraints that don't exist in the original problem.

When you're stuck in such a situation it's worth taking one or two steps back and asking: *what was the goal we wanted to achieve?* And also: *why did we want to achieve this goal in the first place*? This helps you increase the scope for possible solutions and hopefully allows you to discover that the problem you're trying to solve does not even need solving but instead you find a simpler, less problematic solution to the initial *why*. If you ask *why* five times, this approach even has a name: [The five whys technique](https://en.wikipedia.org/wiki/5_Whys).

## Measure impact, not output

Think about how you track the achievement of the desired outcome in your project. In the end, it's the job of your *Product Owner* or *Product Manager*, but if you think they could use some inspiration, they would probably be grateful for some suggestions. As an example, [John Cutler proposes](https://twitter.com/johncutlefish/status/775523444385382400) to add a column to your task board called *Achieved desired outcome*. And [Gregor Ilg says](https://twitter.com/_gregorilg/status/884663883172110336):

> Don't celebrate when you have launched a product. Celebrate once you've learned from it.

Instead of measuring how many story points we can deliver per sprint, we should apply our maths skills much more to measuring and tracking whether we have achieved the desired outcomes in production. Do we achieve the desired user adoption? Has the desired percentage of business shifted to the new platform? Do we save the desired amount of manual work using the new system? And what do our end users tell us?

## Empathise with the people that matter

Empathy and good collaboration with end users is certainly important for building a good user experience. But listening to the users is not enough.

You might hear a lot of different goals from different people in the project. Especially if there's a lack of official goals, people might fill them up with their own hidden or not so hidden agenda. Try to figure out who is incurring expense for the project and try to understand what outcomes they hope to achieve with this investment.

## Lead through purpose

When leading a team, you should put a strong focus on communicating the *why* of the things that you or your team are asked to do, and judging your success by whether the *why* is fulfilled and not whether you built exactly *what* was asked for or whether you did it *how* it was expected that you should do it.

## Coding tips

* If you get told *what* to do it's usually good to ask *what for*, as this gives you more flexibility in finding an economic solution for the desired outcome.
* When coding, be aware that code does not document the *why* particularly well. So be nice to your fellow coders and leave meaningful comments explaining the *why* or pointing to the relevant documentation.
* When asking somebody for help, tell them what problem you are trying to solve, not just what problem you have with your current solution approach (see [The XY Problem](http://xyproblem.info/)).

## Wrap up

If all of this was a bit much, here's one simple tip for coding the right away: no matter how minimalistic you want to keep your user stories, make sure they contain at least the desired impact.

*By {{page.authorName}}*