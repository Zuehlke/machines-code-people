---
authorName: Daniel Mölle
authorGithubUsername: dmlfra
issue: 56
title: Your team needs a tech lead, not a lead techie
---
# {{page.title}}

In what follows, let us assume that a tech lead is an experienced software engineer who is simultaneously supposed to lead the development team and be responsible for the entire technical solution.

## The lead shock

There are several points that tend to come up when you ask tech leads about their career experiences, but the most common one seems to be that they were overwhelmed the first time they worked in that role. Why is that?

In my humble opinion, there are two key factors.

Firstly, stepping into the tech lead role brings with it an explosion of responsibilities that a software engineer has never experienced beforehand. In addition, many of these new responsibilities are non-technical and thus often very hard to grasp for someone with an engineering background. Becoming a tech lead not only includes obvious shifts such as switching from *moderate-scale thinking* to *large-scale thinking* or from implementation to concept work; it also includes switching from 90% hard facts to aspects like collaboration, communication, long-term risk management, expectation management, relationship management, etc..

Secondly, the skills required for these new responsibilities are particularly hard to obtain. That is because skills like technical foresight or the ability to detect misunderstandings before they cause damage come from experience. And in the same way that "experience is a hard teacher because she gives the test first, the lesson afterwards" (Vernon Law), it is also true that experience is hard to teach because no student in the world can comprehend the abstract lesson without having felt the concrete situations from which it arose. As a consequence, many organisations fail in preparing engineers for a tech lead role.

The recipe for dealing with the second factor is quite simple. Experience can be gained by assigning a future tech lead additional responsibility in small increments, ideally supported by coaching, mentoring and networking possibilities.

Let us now explore the first factor:

## Responsibilities

Many authors claim that a good tech lead should spend at least around 30% of their time writing code. That may be helpful in many setups, but it certainly isn't in the ones I'm talking about. In the projects in which I am involved, writing code is a thing that the team already knows how to do well. As a tech lead, I wouldn't help them by doing more of the same. On the other hand, each hour I spend writing code is an hour I cannot invest in issues beyond coding -- issues that need to be resolved in order for the team to make the most of their working hours. A tech lead should be a *multiplier* for the team, and *adding* code to the repository does not help in this regard. After all, it makes much more of a difference to help ten developers be 10% more effective than to contribute a mere 0.3 full-time equivalents of coding power.

So how can the tech lead make a team more productive? This is important stuff, so allow me to elaborate.

### Developer productivity

For the sake of brevity, let us simplify things considerably by saying this:

* The project manager and the tech lead define the development process, documentation guidelines and other general constraints.

* The tech lead takes in the product vision, plus high-level requirements and cross-cutting concerns, and outputs a definition of the big picture, namely how the system is broken down into components, what responsibilities these components have, and how these components are supposed to collaborate.

* Each developer is responsible for a couple of components. She or he takes in requirements that affect these components, plus architectural decisions, and outputs implementations of the respective features that adhere to the architecture as well as all the other constraints.

This may be a crude simplification (especially for mature teams), but it suffices to understand a crucial point: the productivity of developers depends to a considerable extent on the quality of their input, that is, on the quality of requirements, architectural decisions, process definitions, documentation guidelines, and so on. Therefore, a tech lead can make a huge amount of difference by making sure that the quality of this input is high.

### Garbage in, gold out?

The last sentence can be put as a rule, too: the tech lead needs to act when the team is expected to produce high-quality output from low-quality input (in the above sense).

Here are three consequences of this rule:

* The tech lead needs to team up with the project manager in order to help him or her define processes and guidelines that have a good balance between formal needs and everyday applicability.

* The tech lead needs to team up with the business analysts and requirements engineers in order to help them produce output that will enable developers to process it efficiently.

* The tech lead needs to define an architecture that allows developers to reason about the system despite its overall complexity (a complexity that, in its raw form, exceeds the capabilities of any single human being's mind, cf. Dijkstra's 1972 Turing Award lecture).

### Drill-down

As the above rules and consequences are quite abstract, let me make things clearer by listing some specific lessons in this regard:

* There is a human tendency when it comes to specification and documentation, namely a tendency to describe trivial and blatantly obvious things in minuscule detail while hardly even mentioning the complex stuff (because it hurts in the head). A good tech lead will watch out for this anti-pattern and react accordingly.

* Software documentation in particular is often very unpopular because developers are (a) forced to work with inappropriate templates, (b) asked to document low-level details that are obvious from the code, and (c) not guided to document the overarching design decisions and calling conventions that are NOT obvious from the code (and that are thus really worth documenting). A good tech lead will make sure that the templates such as the templates for the software design documents for the individual components, encourage documenting the relevant, non-obvious information.

* It is often the case that processes and templates are defined by people who do not have to work with them. That is a recipe for disaster since efficient applicability is not checked; instead, the overhead for useless work induced by the definitions can be arbitrarily large. A good tech lead will therefore intervene with all their might when they spot bad processes or templates.

* Business analysts and requirements engineers may be good at judging the benefit of a feature, but they cannot be expected to be good at judging the implementation or maintenance costs. A good tech lead will help them understand the cost/benefit ratio by explaining the technical complexity in a comprehensible fashion.

* In the same way, a good tech lead will act as an interpreter between the customer and the development team.

* As for the architecture of the software system, a tech lead should keep the following rule of thumb in mind: developers implement features, and implementation is always a bottom-up process. Architecture, on the other hand, is a top-down issue: starting from the product vision, it defines a technical breakdown of the system into components and conventions that result in a uniform, intellectually manageable whole. Hence, there is a sweet spot: the tech lead needs to define the architecture down to a level that the developers can work against, but no further. If the architecture definition is too shallow (underspecified and abstract), then the developers will struggle because they don't know what to do. If the architecture definition goes too far (overspecified and too concrete in nature), the developers will suffocate in constraints that forbid them to solve their problems in their own way.

* Similarly, a good tech lead will be aware of the following fact: a developer's work is about depth, not breadth. Many implementation tasks require the developer to dive into the code or even the silicon for hours on end; each distraction forces the developer to sort their mind and dive into the issue again from scratch. The tech lead's job, on the other hand, is about breadth, not depth. Therefore, the tech lead needs to provide guidance on the overarching aspects (module collaboration, lifecycle aspects, inter-component versioning, system integration, multi-threading issues, etc.). The boundary -- what can the developer provide, what does the tech lead need to supplement -- depends on the seniority of the developer, and the tech lead needs to be aware of that.

* Furthermore, a good tech lead will have a sixth sense for technical risks and unexpected effort. For example, the software upgrade mechanisms and the configuration management for distributed systems are usually underestimated, and a tech lead will keep that in mind when estimating a project's cost.

To be honest, I could go on endlessly, especially because we didn't even begin to investigate interpersonal matters.

## Final remarks

Leadership is a very complex subject, and hence, it is a bold undertaking to try and describe how it works in a single article. Nonetheless, I hope that my perceptions contain something that you can put to use, and that I have managed to resolve the mystery of the tech lead question at least a tiny bit.

*By {{page.authorName}}*

{% include "./tech-lead-needed.resources.md" %}