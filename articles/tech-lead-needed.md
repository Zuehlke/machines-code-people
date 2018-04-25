---
authorName: Daniel Mölle
authorGithubUsername: dmlfra
title: Your team needs a Tech Lead, not a Lead Techie
---
# {{page.title}}

In what follows, let us just assume that a tech lead is an experienced software engineer who is simultaneously supposed to lead the development team and responsible for the entire technical solution.

## The Lead Shock

There are several points that tend to come up when you ask tech leads about their career experiences, but the most fundamental one seems to be that they were overwhelmed the first time they worked in that role. Why is that?

In my humble opinion, there are two key factors.

Firstly, stepping into the tech-lead role implies an explosion of responsibilities that a software engineer has never experienced beforehand (say, when being promoted from junior to senior developer). And it gets worse: Many of these new responsibilities are non-technical and thus often very hard to grasp for someone with an engineering background. Being a tech lead does not only include obvious and natural shifts such as switching from *moderate-scale thinking* to *large-scale thinking* or switching from implementation work to concept work; it also includes switching from 90% hard facts to aspects like collaboration, communication, long-term risk management, expectation management, relationship management, et cetera.

Secondly, the skills required for these new responsibilities are particularly hard to obtain. That is because skills like technical foresight or the ability to detect misunderstandings before they cause damage come from experience. And in the same way that "experience is a hard teacher because she gives the test first, the lesson afterwards" (Vernon Law), it is also true that experience is hard to teach because no student in the world can really comprehend the abstract lesson without having felt the concrete situations from which it arose. As a consequence, many organizations fail in preparing engineers for a tech-lead role.

The recipe for dealing with the second factor is rather simple: Experience is key, but experience can be gained by assigning a future tech lead additional responsiblity in small steps or by providing coaching, mentoring and networking possibilities.

Let us now explore the first factor: responsibilities.

## Responsibilities

Many authors claim that a good tech lead should spend at least, say, 30% of their time writing code. That may be helpful in many setups, but it certainly isn't in the ones I'm talking about. The reason is straightforward: In the projects I am involved in, writing code is a thing that the team already knows how to do well. As a tech lead, I wouldn't help them by doing more of the same, part-time or otherwise. On the other hand, each hour I spend writing code is an hour I cannot invest into issues beyond coding -- issues that need to be resolved in order for the team to make the most of their working hours. To put it arithmetically: A tech lead should be a multiplier for the team, and adding code to the repository does not do the job. Ater all, it makes much more of a difference to help ten developers be 10% more effective than to contribute a mere 0.3 full-time equivalents of coding power.

The question, hence, is this: How can the tech lead enable the team, id est, make them more productive? This is important stuff, so allow me to elaborate.

### Developer Productivity

For the sake of brevity, let us simplify things an enormous bit by saying this:

* The project manager and the tech lead define the development process, documentation guidelines, and other general constraints.

* The tech lead takes in the product vision, plus high-level requirements and cross-cutting concerns, and outputs a definition of the big picture, namely how the system is decomposed into components, what responsibilities these components have, and how these components are supposed to collaborate.

* Each developer is responsible for a couple of components. She or he takes in requirements that affect these components, plus architectural decisions, and outputs implementations of the respective features that adhere to the architecture as well as all the other constraints.

This may be a crude simplification (for example, many teams are mature enough to define proper guidelines on their own), but it suffices to understand a crucial point: The productivity of developers depends significantly on the quality of their input, that is, on the quality of requirements, the quality of architectural decisions, and the quality of the general constraints such as process definitions and documentation guidelines. Therefore, a tech lead can make one hell of a difference by making sure that the quality of this input is high.

### Garbage In, Gold out?

The last sentence can be put as a rule, too: The tech lead needs to act when the team is continuously supposed to produce high-quality output from low-quality input. Please note that I use the term *input* in a very broad sense here, namely in a sense that entails aspects such as processes, guidelines, and even the general conditions under which the team is supposed to work.

Here are three corollaries to this rule:

* The tech lead needs to team up with the project manager in order to help them define processes and guidelines that have a good balance between formal needs and everyday applicability.

* The tech lead needs to team up with the business analysts and requirements engineers in order to help them produce output that will enable developers to process it efficiently.

* The tech lead needs to define an architecture that allows developers to reason about the system despite its overall complexity (a complexity that, in its raw form, exceeds the capabilities of any single human being's mind, cf. Dijkstra's 1972 Turing Award lecture).

### Drill-Down

Since the above rules and corollaries are quite abstract, let me make things clearer by listing some specific learnings:

* There is a human tendency when it comes to specification and documentation, namely a tendency to describe trivial and blatantly obvious things in minuscule detail while hardly even mentioning the complex stuff (because it hurts in the head). A good tech lead will watch out for this anti-pattern and countersteer accordingly.

* Software documentation in particular is often very unpopular because developers are (a) forced to work with inappropriate templates, (b) asked to document low-level details that are obvious from the code, and (c) not guided to document the overarching design decisions and calling conventions that are NOT obvious from the code (and that are thus really worth documenting). A good tech lead will make sure that the templates -- say, the templates for the software design documents for the individual components -- encourage documenting the relevant, non-obvious information.

* It often happens that processes and templates are defined by people who do not have to work with them. That is a recipe for disaster since efficient applicability is not controlled; instead, the overhead for useless work induced by the definitions can be arbitrarily large. A good tech lead will therefore intervene with all their might when they spot bad processes or templates.

* Business analysts and requirements engineers may be good at judging the benefit of a feature, but they cannot be expected to be good at judging the implementation or maintenance costs. A good tech lead will help them understand the cost/benefit ratio by explaining the technical complexity in a comprehensible fashion.

* In the same way, a good tech lead will act as an interpreter between the customer and the development team.

* As for the architecure of the software system, a tech lead should keep the following rule of thumb in mind: Developers implement features, and implementation always is a bottom-up process. Architecture, on the other hand, is a top-down issue: Starting from the product vision, it defines a technical breakdown of the system into components and conventions that result in a uniform, intellectually manageable whole. Hence, there is a sweet spot: The tech lead needs to define the architecture down to a level that the developers can work against, but no further. If the architecture definition is too shallow (underspecified), that is, if it ends on too high an abstraction level, then the developers will struggle because they don't know what to do. If the architecture definition goes too far (overspecified), that is, if it ends on too low an abstraction level, the developers will struggle because they suffocate in constraints that forbid them to solve their problems in their own way.

* Moreover, a good tech lead will be aware of the following fact: Developer work is about depth, not breadth. For example, imagine a developer who has the task of developing a robust UART driver for a new microcontroller with poorly specified peripherals. This task requires the developer to dive into the silicon for hours on end. Each distraction has terrible consequences because it interrupts the focused work, forcing the developer to sort their mind and dive into the issue from scratch. The tech lead's job, on the other hand, is about breadth, not depth. Therefore, the tech lead needs to provide guidance on the overarching aspects (what should the UART driver's interface look like, how should other components use it, how should the underlying resources be managed, et cetera). The boundary -- what can the developer provide, what does the tech lead need to supplement -- depends on the seniority of the developer, and the tech lead needs to be aware of that.

* Similarly, a good tech lead will foresee the concerns that the developers might overlook in their in-depth work of implementing compenents. This includes multi-threading issues such as reentrance and locking, integration with other components, dealing with version incompabilities between components, lifecycle aspects, and so on.

* Furtherwise, a good tech lead will have a sixth sense for technical risks and unexpected effort. For example, the software upgrade mechanisms and the configuration management for distributed systems are usually underestimated, and a tech lead will keep that in mind when estimating a project's cost.

In all modesty, I could go on endlessly. For example, we didn't even begin to investigate interpersonal matters.

## Final Remarks
 
Leadership is a very complex subject, and hence, it is a bold undertaking to try and describe how it works in a single article. Nonetheless, I hope that my perceptions contain something that you can put to use, and that I managed to resolve the mystery of the tech lead question by at least a tiny bit.

*By {{page.authorName}}*
