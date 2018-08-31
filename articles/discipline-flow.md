---
authorName: Stephan Janisch
authorGithubUsername: sjanisch
title: Discipline Flow
---

# {{page.title}}
The Discipline Flow is a sketch of software engineering disciplines in a general product lifecycle context. There are a number of different application scenarios, but its key application is to get a comprehensive overview of disciplines and flows required for product discovery, development and delivery - from user needs over business goals to the product as delivered by operations to the user.

## Basic Model
The relations aim to deliver a product that satisfies user and business goals. They are defined between Business (BIZ), Customer Experience (CX), User Experience (UX), Requirements Engineering (REQ), Architecture (ARCH), Implementation (IMPL) and Operations (OPS). 

![Discipline Flow](./discipline-flow/dflow-sketch.jpg)

The three major parts each have a slightly different focus: (1) Understand what is needed (2) Develop what is needed (3) Deliver what is needed. We then incorporate feedbacks and research and start again to improve and extend.

In order to implement the flow relation, the disciplines need to work on discipline-specific essentials while having a solid view and understanding of the complete flow, which includes the particular immediate discipline context (for instance like REQ and ARCH for IMPL): 

- BIZ: Business, organisational, societal goals and impacts
- CX: Customer's overall journey
- UX: User and his goals
- REQ: Product features and acceptance criteria
- ARCH: Quality attributes and architecture
- IMPL: Components and connectors
- OPS: Infrastructure and monitoring

If we deliver to a customer instead of the final user(s) we get a number of variations in part one and three of the overall flow.  In fact as an extreme these two parts might end up as blackbox for the development, getting input from market and user research and then just delivering the results of the development part. However, we may assume that the basic discipline flow is unchanged and that the customer instantiates disciplines and flow relations similar to the one sketched above. 

## Views on the Model
There are three basic views on this model, each related to a certain level of excellence.

### Discipline Experts
The disciplines and relations described above form the core elements of an abstract product delivery machinery. However, the machinery is only the basic structure. It needs to be implemented by people who are experts in their disciplines, and at the same time have a general knowledge of all other disciplines in order to be able to put specific work always into context of the overall product lifecycle. Only then we may avoid silos and waterfall-like delivery processes.

The more direct the disciplines are related, the more is this knowledge required. For instance working on the architecture requires a solid understanding of all the requirements, both the functional requirements as well as the required quality attributes. On the other hand it requires also a thourough understanding of what needs to be implemented and which infrastructure is needed for effective operations. 

Only then it is possible, for instance, to model system, application and infrastructure architectures which are concrete enough to be a useful starting point and framework for implementation and operations, and on the other hand are abstract enough to be maintained over the whole lifecycle and evolution process of a product.

### Project Excellence
We need people working together as a team often facilitated by somebody in the team taking care of collaboration topics like establishing and customizing an agile process, enabling appropriate levels of self-organisation but also considering individual personal development goals. This is typically done by a Collaboration Owner. Additionally somebody taking care of project budget and risk is needed in team. Typically this is done by a team member with knowledge and experience in the project management (PM) domain.

Both roles, the collaboration owner and the project manager are not part of the sketch above, since both are somewhat always concerned with the complete flow on a meta level and not so much with the product flow directly. At least in some parts the PM has some stakes in the business discipline, but his responsibility is more related to the project delivery than the business case of the project.

However, both are strictly required for project excellence, that is to ensure that not only features are delivered, but that they are also delivered in time and in budget with appropriate quality by a team that sees purpose individually as well as on level of the product development as a whole.


### Product Delivery
Even if we have achieved project excellence we usually do not yet have delivered a successful product. Excellent products require additionally that user and business needs and goals are taken into account from early on. We need to develop and deliver incrementally and incorporate feedback and learnings continuously. Each discipline has its specific contribution:

- BIZ: models with statements about value and impact
- CX: overarching delivery concept
- UX: statements about user value and specific concepts for user needs
- REQ: concrete requirements and metrics for the product development
- ARCH: feasable technical context for development and production
- IMPL: adaptable, maintanable and operatable implementation of what is needed
- OPS: concrete environments, pipelines and monitoring for development and production

One key aspect to achieve product excellence is to track and monitor product features (or increments) as they make their way through the complete cycle in order to learn and improve continuously within and from each discipline. That is all the way from CX/UX to delivery in production systems, including the tracking and monitoring of the product's usage and business performance, for instance by taking into account user and market feedback.

## Some Use Cases
There are a number of application scenarios for the basic model of the Discipline Flow, for instance:

- Define essentials and their relation for your project: What are the discipline-specific contributions for this project? 
- Clarify roles and staffing for your project: Who is needed, doing what and interacting with whom?
- Explain the role of architecture in your development project, technically and organisationally: This role is again and again a particular challenge.
- Measure lead and cycle times for feature delivery: How long do we need for a full cycle? This is one of the core metrics for Continuous Delivery.
- Explain personal development paths: Usually one starts at Zühlke within a single discipline and then develops further, for instance from IMPL to ARCH and OPS who would then be a "Coding architect with operations skills".
- Explain the evolution of the Zühlke business model: From development service provider to partner for business innovation and/or to AMS (Application Management Services).

In general the Discipline Flow makes the big picture of product delivery a first class citizen and allows to explain how we aim to achieve operational excellence in our projects. In that sense operational excellence is a result of discipline experts, lean project organisation and a product delivery that focuses on user and market needs from the very beginning on. 

*By {{page.authorName}}*

{% include "./discipline-flow.resources.md" %}
