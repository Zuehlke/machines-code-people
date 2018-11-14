---
authorName: Stephan Janisch
authorGithubUsername: sjanisch
issue: 79
title: Discipline Flow
---

# {{page.title}}
Product conception, development and delivery is a highly interdisciplinary team endeavour. Anybody who has ever participated in a more or less complete product lifecycle knows that not only the languages each discipline use are quite different, but also that the results of each discipline may sometimes do not fit to each other in the intended way.

The Discipline Flow tackles this by relating the engineering disciplines in a general product lifecycle context. Its core use case is to get a comprehensive overview of disciplines and flows required for product conception, development and delivery - from user needs over business goals to the product as delivered by operations to the final user.

## The Basic Model
The very first step of any kind of meaningful product development must take the user as well as the business goals into account and by this means allow for continuous delivery of product increments. Relations between the Business (BUS), Customer Experience (CX), User Experience (UX), Requirements (REQ), Architecture (ARCH), Implementation (IMPL) and Operations (OPS) define the basic flow model to achieve this.  

![Discipline Flow](./discipline-flow/dflow-sketch.jpg)

The disciplines work on discipline-specific essentials: 

- BUS: Business, organisational and societal goals for the given product(s)
- CX: Customer's overall journey
- UX: User and his goals
- REQ: Product features and acceptance criteria
- ARCH: Quality attributes and architecture
- IMPL: Components and connectors
- OPS: Infrastructure and monitoring

Additionally, one might think of Testing (TST) as a discipline on its own, for instance between IMPL and OPS or OPS and the delivered Product. In some project contexts this would make perfectly sense, however in general we'd more like to think of testing as an integrated activity within each discipline. For instance in BUS we may think about how to test the business model hypothesis, as part of UX we may think about how to do the User Acceptance testing and in ARCH the testing for Quality Attributes is paramount. Of course, all this needs general testing knowledge as a foundation and this is where Testing as a discipline might play an explicit role in your project again.

The different disciplines are grouped into three major parts, each with a different focus on what has to be achieved: (1) Understand what is needed (2) Develop what is needed (3) Deliver what is needed. These three quite different perspectives also provide hints on characteristics and attributes needed in your team.

We then monitor the performance and usage of what was delivered, incorporate feedbacks and start again to develop corresponding improvements and extensions. 


## Discipline Experts 
The disciplines and relations described above form the core elements of an abstract product delivery machinery. However, the machinery is only the basic structure. It needs to be implemented by people who are experts in their disciplines. At the same time they must have general knowledge of all other disciplines in order to be able to put specific work always into context of the overall product lifecycle. Only then we may avoid silos and waterfall-like delivery processes.

The more direct the disciplines are related, the more this knowledge is required. For instance working on the architecture requires a solid understanding of all the requirements, both the functional requirements as well as the requirements for quality attributes. And in the downstream flow we need a thourough understanding which infrastructure is needed for effective operations. This holds not only for production but also for development and test environments.

## Project Excellence 
We need people working together as a team often facilitated by somebody in the team taking care of collaboration topics like establishing and customizing an agile process, enabling appropriate levels of self-organisation but also considering individual personal development goals. At Zühlke this is typically done by a Collaboration Owner (CO), elsewhere this might be a Scrum Master. Additionally somebody taking care of project budget and risk is needed within the team. Typically this is done by a team member from the project management domain.

Both roles, the collaboration owner and the project manager (PM) are not part of the sketch above, since both are often more concerned with the complete flow and not so much with discipline-specifics directly, at least in their roles CO and PM. The PM of course often also considers the ROI of the product in relation to the project's budget and hence is part of the BUS discipline. Similar the CO might be part of a particular discipline. More importantly from flow perspective, both roles together ensure that not only features are delivered, but that they are also delivered in time and in budget with appropriate quality by a team that sees purpose individually as well as on level of the product development as a whole.

## Successful Products
Even if we have achieved project excellence it is not ensured that we have delivered a *successful* product. These require additionally that user and business needs and goals are explicitly taken into account from early on. We need to develop and deliver incrementally and incorporate feedback and learnings continuously. Each discipline has its specific contribution:

- BIZ: models with statements about value and impact
- CX: overarching product(s) delivery and experience concept
- UX: statements about product value and specific concepts for user needs
- REQ: concrete requirements and metrics for the product development
- ARCH: feasable technical context for development and production
- IMPL: adaptable, maintanable and operatable implementation of what is needed
- OPS: concrete environments, pipelines and monitoring for development and production

One key aspect to achieve product excellence is to track and monitor product features (or increments) as they make their way through the complete cyclical flow in order to learn and improve continuously within and from each discipline. That is all the way from CX/UX to delivery in production systems, including the tracking and monitoring of the product's usage and business performance.

## Conclusion
In general the Discipline Flow makes the big picture of disciplines and their relations a first class citizen and allows to explain what we sometimes call 'Operational Excellence'. This kind of excellence is a result of discipline experts working together within a lean project organisation for product delivery that focuses on user and market needs from the very beginning on. The flow comprises only a small number of disciplines and relations, simple enough to sketch it ad-hoc whenenver needed for discussions and complete enough to check the continuous delivery maturity in context of your current project. 

*By {{page.authorName}}*

{% include "./discipline-flow.resources.md" %}
