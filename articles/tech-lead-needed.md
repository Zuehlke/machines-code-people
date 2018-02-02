---
authorName: Daniel Mölle
authorGithubUsername: dmlfra
title: Your team needs a Tech Lead, not a Lead Techie
---
# {{page.title}}

In what follows, let us just assume that a tech lead is an experienced software engineer who is simultaneously (a) supposed to lead the development team and (b) responsible for the entire technical solution.

I know that this is not the only valid interpretation. In the same way that different organizations have different habits with respect to setting up project teams, there is no universal definition for project roles such as **tech leads** or **software architects**. Moreover, I am well aware of the fact that many agile methodologies even discourage us from assigning such singular roles to individual team members (even though they often exist implicitly in that case). However, I can only write about my personal experience -- more than ten years in device development projects at Zühlke Frankfurt, all of which had a tech lead in the very sense outlined above.

## The Lead Shock

There are several points that tend to come up when you ask tech leads about their career experiences, but the most fundamental one seems to be that they were overwhelmed the first time they worked in that role (cf. **Talking with Tech Leads** by Patrick Kua). Why is that?

In my humble opinion, there are two key factors.

Firstly, stepping into the tech-lead role implies an explosion of responsibilities that a software engineer has never experienced beforehand (say, when being promoted from junior to senior developer, or whatever grades the organization defines, a few years earlier). And it gets worse: Many of these new responsibilities are non-technical and thus often very hard to grasp for someone with an engineering background. Being a tech lead does not only include obvious and natural shifts such as switching from **programming in the small** to **programming in the large** or switching from implementation work to concept work; it also includes switching from 90% hard facts to 70% soft subjects (YMMV).

Secondly, since the new responsibilities are mostly non-technical and regard soft subjects such as collaboration, communication, long-term risk management et cetera, they are also particularly hard to teach. That is why most organizations are not very good in preparing engineers for a tech-lead role.

Let us explore these two factors a bit more thoroughly.

## Responsibilities

Many authors claim that a good tech lead should spend at least, say, 30% of their time writing code. That may be helpful in many setups, but it certainly isn't in the ones I'm talking about. The reason is straightforward: In the projects I am involved in, writing code is a thing that the team already knows how to do well. As a tech lead, I wouldn't help them by doing more of the same, part-time or otherwise. On the other hand, each hour I spend writing code is an hour I cannot invest into issues beyond coding -- issues that need to be resolved in order for the team to make the most of their working hours. To put it arithmetically: A tech lead should be a multiplier for the team, and adding code to the repository does not do the job. It makes much more of a difference to help all your developers be 30% more effective than to contribute a mere 0.3 full-time equivalents of coding power.

The question, hence, is this: How can the tech lead enable the team, id est, make them more productive? This is important stuff, so allow me to elaborate.

### Developer Productivity

For the sake of brevity, let us simplify things a good bit by saying this:

* The project manager and the tech lead define the development process, documentation guidelines, and other general constraints.

* The tech lead takes in the product vision, plus high-level requirements and cross-cutting concerns, and outputs a definition of the big picture, namely how the system is decomposed into components, what responsibilities these components have, and how these components are supposed to collaborate.

* Each developer is responsible for a couple of components. She or he takes in requirements that affect these components, plus architectural decisions, and outputs implementations of the respective features that adhere to the architecture as well as all the other constraints.

This may be a crude simplification, but it suffices to understand a crucial point: The productivity of developers depends significantly on the quality of their input, that is, on the quality of requirements, the quality of architectural decisions, and the quality of the general constraints such as process definitions and documentation guidelines. Therefore, a tech lead can make one hell of a difference by making sure that the quality of this input is high.

Here are three specific corollaries of this rule:

* The tech lead needs to team up with the project manager in order to help them define processes and guidelines that have a good balance between formal needs and everyday applicability.

* The tech lead needs to team up with the business analysts and requirements engineers in order to help them produce output that will enable developers to process it efficiently.

* The tech lead needs to define an architecture that allows developers to reason about the system despite its overall complexity (a complexity that, in its raw form, exceeds the capabilities of any single human being's mind, cf. Dijkstra's 1972 Turing Award lecture).

Since these corollaries may sound very abstract, let me exemplify things:

* There is a human tendency when it comes to specification and documentation, namely a tendency to describe trivial and blatantly obvious things in minuscule detail while hardly even mentioning the complex stuff (because it hurts in the head). A good tech lead will watch out for this anti-pattern and countersteer accordingly.

* Software documentation in particular is often very unpopular because developers are (a) forced to work with inappropriate templates, (b) asked to document low-level details that are obvious from the code, and (c) not guided to document the overarching design decisions and calling conventions that are NOT obvious from the code (and that are thus really worth documenting). A good tech lead will make sure that the templates -- say, the templates for the software design documents for the individual components -- encourage documenting the relevant, non-obvious information.

* It often happens that processes and templates are defined by people who do not have to work with them. That is a recipe for disaster since efficient applicability is not controlled; instead, the overhead for useless work induced by the definitions can be arbitrarily large. A good tech lead will therefore intervene with all their might when they spot bad processes or templates.

* Business analysts and requirements engineers may be good at judging the benefit of a feature, but they cannot be expected to be good at judging the implementation or maintenance costs. A good tech lead will help them understand the cost/benefit ratio by explaining the technical complexity in a comprehensible fashion.

* In the same way, a good tech lead will act as an interpreter between the customer and the development team.

* As for the architecure of the software system, a tech lead should keep the following rule of thumb in mind: Developers implement features, and implementation always is a bottom-up process. Architecture, on the other hand, is a top-down issue: Starting from the product vision, it defines a technical breakdown of the system into components and conventions that result in a uniform, intellectually manageable whole. Hence, there is a sweet spot: The tech lead needs to define the architecture down to a level that the developers can work against, but no further. If the architecture definition is too shallow (underspecified), that is, if it ends on too high an abstraction level, then the developers will struggle because they don't know what to do. If the architecture definition goes too far (overspecified), that is, if it ends on too low an abstraction level, the developers will struggle because they suffocate in constraints that forbid them to solve their problems in their own way.

* Moreover, a good tech lead will be aware of the following fact: Developer work is about depth, not breadth. For example, imagine a developer who has the task of developing a robust UART driver for a new microcontroller with poorly specified peripherals. This task requires the developer to dive into the silicon for hours on end. Each distraction has terrible consequences because it interrupts the focused work, forcing the developer to sort their mind and dive into the issue from scratch. The tech lead's job, on the other hand, is about breadth, not depth. Therefore, the tech lead needs to provide guidance on the overarching aspects (what should the UART driver's interface look like, how should other components use it, how should the underlying resources be managed, et cetera). The boundary -- what can the developer provide, what does the tech lead need to supplement -- depends on the seniority of the developer, and the tech lead needs to be aware of that.

* Similarly, a good tech lead will foresee the concerns that the developers might overlook in their in-depth work of implementing compenents. This includes multi-threading issues such as reentrance and locking, integration with other components, dealing with version incompabilities between components, lifecycle aspects, and so on.

* Furtherwise, a good tech lead will have a sixth sense for technical risks and unexpected effort. For example, the software upgrade mechanisms and the configuration management for distributed systems are usually underestimated, and a tech lead will keep that in mind when estimating a project's cost.

In all modesty, I could go on endlessly. However, since this is supposed to be an article rather than a textbook, we should now head on to the second key factor:

## Preparing a Tech Lead

In didactics (the theory of teaching and learning), there is a common ground rule: It is relatively easy to teach formal knowledge (such as linear algebra or physical laws, for example), but it is close to impossible to teach experience. That is why reading a book on software engineering, however wise it may be, cannot turn a junior developer into a tech lead. Similarly, you cannot fully prepare a software engineer for a tech-lead role by sending them, say, to an ISAQB course -- no matter how excellent the trainers are.

How, then, can we prepare them instead? The answer is quite simple: We need to take them by the hand and lead them through incremental challenges in which they can experience the new responsibilities bit by bit.

In practice, this can look as follows:

* If you feel that some senior developer has the potential to become a true tech lead, give them the responsibility for a subsystem in a large project (or the entire system in a small project) for starters.

* Provide mentoring or coaching. The larger the gap between the candidate's previous responsibilities and the new challenge, the more intense the mentoring/coaching needs to be.

* Encourage new tech leads to network with established tech leads as well as other newcomers. Give them some room to reflect on their often overwhelming impressions in a circle of trustful peers.

* Do not officially advance an engineer to a tech lead position before they had a chance of proving themselves in that role (because if you do so, this will seem noncredible to the team and consequently undermine the newcomer's standing).

## Final Remarks
 
Leadership is a very complex subject, and hence, it is a bold undertaking to try and describe how it works in a single article. Moreover, I need to point out again that this article was written from my perspective, which certainly is quite specific. Most certainly, my view does not represent all projects ever conducted by the Zühlke Technology Group. I sincerely hope that my perceptions contain something that you can work with, anyway, and that I managed to resolve the mystery of the tech lead question by at least a significant bit.

*By {{page.authorName}}*
