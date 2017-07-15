---
authorName: Adrian Herzog
authorGithubUsername: adiherzog
---

# Coding On Purpose

&copy; 2017 Adrian Herzog

## Purpose Is Not A Modern Luxury

I'm born 1986, so I'm definitely a member of the infamous *Generation Y* a.k.a. *Millenials*, which includes everybody born between roughly 1980 and 2000. Generation Y is often characterized as *Gerneration Why*: as a generation that questions everything. When it comes to jobs we supposedly are not happy with a good salary and nice colleagues, no, we want a job that serves a higher purpose. We do not just want to work, we want to make an impact, they say.

No matter whether all this talk is true, one thing is clear: making an impact is an economical necessity if your business wants to survive in the long run. Or as Paul Graham of *Y Combinator* - note the Y in their name - says:

> Make something people want.

By the way: Justin Bieber - born 1994 - is a millenial too. And so it's no surprise that his current (2017) world tour is titled the *Purpose World Tour*.

When building software, the *why* or better the *what for* question is a very important one. I'm aware that this is nothing new for you. But this is what makes it easy to forget and to lose the focus on it. We usually start our projects with a more or less clear vision of what we want to achieve - how the world will be better when we're done. Then we start building. We start setting milestones, and soon reaching the milestone becomes our highest goal. In order to meet milestones we need to deliver a certain amount of user stories per sprint (or so we think...) and soon estimating effort in story points and tracking velocity become our way of steering the project. Or we might be busy optimizing the hourly rate of our sub-contractors from another continent. Whenever our focus drifts away from achieving the original purpose, we need to remind ourselves:

> When we build software, our success is measured by whether the software can make the impact for which the customer is ready paying a certain amount of money.

You don't need to be a millenial to understand this. This was true long before millenials were even born.

## Purpose in Software Development Methodologies

As long as there has been a professional software industry people in this industry have invented methods for approaching software development. There's one theme that shows up again and again in all methods: *managing purpose*.

* In *RUP*, one tries to establish traceability from lower level items to higher level goals
* If you work with *Use Cases* each Use Case represents a goal on a certain abstraction level and you can show how lower level Use Cases support higher level Use Cases in a use case diagram.
* *User Stories* are usually formulated according to a template that also includes a *goal* and a *benefit* (e.t. "as a &lt;role&gt; I want to &lt;goal&gt; so that &lt;benefit&gt;").
* With a *User Story Map* we can create a hierarchy of these *User Stories*.
* An *Impact Map* traces down the high level goals to actors, impacts and finally deliverables
* *Design Thinking* has a strong focus on *identifying and understanding customer needs*
* The idea of the *Minimal Viable Product* makes the point that we should only build as much as is necessary for fulfilling the desired goal.

And even beyond software develpment, the *why* topic seems to be very popular. One of the most famous representatives of the modern *why* movement is probably [Simon Sinek who tells us](https://startwithwhy.com/): *Start with Why!*

## A Vacuum Of Purpose

Let's go back to software again. Even though there's a lot of talk about impact, purpose and so on, there are also many areas with a vacuum of purpose. Some examples:

* Code, which is mostly imperative in it's nature, does just declare *how* something is achieved but it does not state *why*. So while the purpose was hopefully clear to the one writing the code, it is likely to be unknown to the poor coder maintaining the code years later.
* I've seen too many user stories that either don't state a goal and benefit or if they do, it's just a wild guess by somebody who wanted to satisfy the template structure. And worse: higher level items like *epics* miss the *purpose* even more often.
* BDD (Behaviour Driven Design) typically uses the *Given, When, Then* pattern which only describes what the software does, but not why.
* Many consulting companies get told *what* to build instead of *what problem to solve* or *what outcome to achieve*.
* Inexperienced managers might tell you *what* to build instead of *what outcome to achieve*.

## Everyday Tips

### When The Solution Becomes The Problem

Sometimes you're stuck deep down in a tricky problem. While some people might just give up, you're passion for problem solving lets you breed over the puzzle for hours and days, maybe even weeks. While working on the solution for your customers problem, the solution suddenly turned into the problem. Or as [Paul Watzlawick says](https://www.youtube.com/watch?v=7etsh4HwG78):

> By searching for solutions we restrict ourselves with constraints which don't exist in the original problem.

When you're stuck in such a situation it's worth taking one or two steps back and asking: *what again was the goal we wanted to achieve?* And then again: *why did we want to achieve this goal in the first place*? This helps you opening up the space for possible solutions and hopefully let's you discover that the problem you're trying to solve does not even need solving but instead you find a simpler, less problematic solution to the initial *why*. If you ask *why* five times, this approach even has a name: [The five whys technique](https://en.wikipedia.org/wiki/5_Whys).

### Measure Outcome, Not Output

Think about how you track achievement of desired outcome in your project. In the end, it's the job of your *Product Owner* or *Product Manager*, but if you think they could use some inspiration, they are probably greatful for some ideas. As an example, [John Cutler proposes](https://twitter.com/johncutlefish/status/775523444385382400) to add a column to your task board called *Achieved desired outcome*. Or [Gregor Ilg says](https://twitter.com/_gregorilg/status/884663883172110336):

> Don't celebrate when you launched a product. Celebrate once you've learned from it.

Instead of measuring how many story points we can deliver per sprint, we should apply our math skills much more to measuring and tracking whether we achieve the desired outcomes in production. Do we get the desired user adoption? Is the desired percentage of business done on the new platform? Do we save the desired amount of manual work using the new system?

### Empathize With The People That Matter

Empathy and good collaboration with the end users is of course important in order to build a good user experience. But listening to the users is not enough.

You might hear a lot of different goals from different people in the project. Especially if there's a lack of official goals, people might fill them up with their own hidden or not so hidden agenda. Try to figure out who spends money for the project and try to understand what outcomes they hope to achieve through this investment.

### Lead Through Purpose

Managers should put a strong focus on communicating the *why* of the things they ask you or a team to do and also judge your success by whether the *why* is fulfilled and not whether you built exactly *what* they asked for and did it *how* they expected you to do it. Simon Sinek would agree that communicating the *why* effectively increases the engagement of the team.

### Coding Tips

* If you are unsure whether what you are currently working on is actually needed for something meaningful, ask the relevant person (e.g. product owner) for the purpose of your work. It might turn out that it's not so important after all and that the stress you are experiencing is actually artificial and does not benefit anybody.

* If you get told *what* to do it's usually good to ask back *what for*, as this gives you more flexibility in finding an economic solution for the desired outcome.

* When coding, be aware that code does not document the *why* well. So be nice to your fellow coders and leave meaningful comments explaining the *why* or pointing to the relevant documentation.

* When asking somebody for help, tell them what problem you are trying to solve, not just what problem you have with your current solution approach (see [The XY Problem](http://xyproblem.info/)).

* And last but not least: no matter how minimalistic you want to keep your user stories, make sure they contain at least a goal and the desired benefit.


## Thoughts On Customer And Supplier

If you're building software, you are usually building it for a customer. This could be an internal department or another company. In an ideal world I would model the responsibilities regarding *what for* (purpose, goal), *what* (product, features) and *how* (development methodology, technology) like this:

* The customer is responsible for knowing *what for* they want to do the project. They need an idea how to measure whether the desired outcome is achieved. And they need to be able to communicate the *purpose* to the supplier.

* The supplier comes with a toolbox of skills. The know *how* to build software. They need to communicate to the customer what is hard and what is easy to build with this toolbox.

* Now the customer and the supplier meet in the middle, one coming from the *what for* side and one from the *how* side. Together they need to agree on *what* they want to build. They optimize the *what* so that it achieves the customer goals (*what for*) while effectively utlizing the suppliers skills *how* to build it.