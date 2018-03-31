---
authorName: Stephan Janisch
authorGithubUsername: sjanisch
title: Discipline Flow and Operational Excellence
---
# {{page.title}}

idea of this article: use discipline flow to describe what we mean with operational excellence

- we do projects, aim at op excellence > deliver value to customer > customer success = zühlke success
- operational excellence achieved by excellence on three levels: discipline, project and product
- discipline flow helps to explain these level and how they are related to each other

## Discipline Flow
The Discipline Flow is a method that relates software engineering disciplines in context of a digital product lifecycle. The lifecycle includes discovery, development and delivery of a product, from user needs and business goals to the product as delivered by operations to the user.

![Disciplines and Flow Relations](./discipline-flow/dflow.jpg)

Disciplines 

- BIZ: Business/Organisation/Society goals and impacts 
- UX: User and his goals 
- REQ: Product features and acceptance criterias 
- ARCH: Quality attributes and architecture
- IMPL: Components and connectors
- OPS: Infrastructure and monitoring 

Flow Relations
Discipline specific elements are connected by relations. For instance the features specified by the requirements discipline are related to corresponding parts of the implementation. These in turn are related to parts of the artefacts deployed, operated and provided as a product to the user by the operations discipline. 


## Discipline and Project Excellence
The disciplines and relations described above form the core elements of an abstract product delivery machinery. However, the machinery is only the basic required structure. It needs to be filled by people who are experts in their disciplines, and at the same time have a general knowledge of all other disciplines in order to be able to put specific work always into context of the overall product lifecycle. Only then we may avoid silos and waterfall-like delivery processes.

The more direct the disciplines are related, the more is this knowledge required. For instance working on the architecture requires a solid understanding of all the requirements, both the functional requirements as well as the required quality attributes. On the other hand it requires also a thorough understanding of what needs to be implemented and which infrastructure is needed for effective operations. 

Only then it is possible to sketch system, application and infrastructure  architectures which are concrete enough to be a useful starting point and framework for implementation and operations, and on the other hand are abstract enough to be maintained over the whole lifecycle and evolution process of a product.

add User > CX/UX > REQ ...

fin This is Discipline Excellence.

Project excellence needs people working together as a team often facilitated by somebody in the team taking care of collaboration topics. 

And finally somebody taking care of project budget and risk, typically this is done by someone with knowledge from the project management domain.

Both are not part of the sketch above, since both are somewhat always concerned with the complete flow on a meta level and not so much with the product flow directly.

However both are strictly required to go from Discipline Excellence to Project Excellence. The difference is to ensure that not only an excellent product is delivered, but that it is also delivered in time and in budget with appropriate quality by a team that sees 

... purpose of the product development (work together as a team) as well as purpose individually (personal development...)

-> Zühlke Tech leads and Project leads


## Products and Feedback Loops
Zusammenhang zu value streams? 

what is the Flow unit? 

Disciplines and their contribution to product excellence 

- BIZ: Business/Organisation/Society goals and impacts → statements about value
- UX: User and his goals → insights about user needs
- REQ: Product features and acceptance criterias → concrete requirements and metrics for the product development
- ARCH: Quality attributes and architecture → technical context for development and production
- IMPL: Components and connectors → concrete implementation in context of ARCH and REQ
- OPS: Infrastructure and monitoring → concrete environments for development and production

Flow relation between Business (BIZ), User Experience (UX), Requirements Engineering (REQ), Architecture (ARCH), Implementation (IMPL) and Operations (OPS) to deliver a product that satisfies user and business goals.


One key aspect to achieve product excellence is to track and monitor product features or increments as they make their way through the complete cycle in order to learn and improve continuously within and from each discipline. That is all the way from UX to delivery in production systems, including the tracking and monitoring of the product's usage and business performance, for instance by taking into account user and market feedback.

## Operational Excellence

- Discipline Flow makes the big picture first class citizen and allows to explain how we aim to achieve OpEx for our projects
- -> OpEx is a result of discipline excellence, lean project delivery and customer/user and market focus from the very beginning on. 

*By {{page.authorName}}*

{% include "./discipline-flow.resources.md" %}
