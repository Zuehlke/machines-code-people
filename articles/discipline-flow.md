---
authorName: Stephan Janisch
authorGithubUsername: sjanisch
title: Discipline Flow
---

# {{page.title}}
The Discipline Flow sketches relations between software engineering disciplines in a general product lifecycle context. There are a number of different application scenarios, but its general key application is to get a comprehensive overview of disciplines and flows required for product discovery, development and delivery - from user needs over business goals to the product as delivered by operations to the user.

## Basic Model
Products should take user as well as business goals into account. Relations between the disciplines Business (BIZ), Customer Experience (CX), User Experience (UX), Requirements (REQ), Architecture (ARCH), Implementation (IMPL) and Operations (OPS) aim to establish the basic flow to achieve this.  

![Discipline Flow](./discipline-flow/dflow-sketch.jpg)

The three major parts each have a slightly different focus: (1) Understand what is needed (2) Develop what is needed (3) Deliver what is needed. We then incorporate feedbacks and research from what was delivered and start again to improve and extend. The disciplines need to work on discipline-specific essentials: 

- BIZ: Business, organisational and societal goals
- CX: Customer's overall journey
- UX: User and his goals
- REQ: Product features and acceptance criteria
- ARCH: Quality attributes and architecture
- IMPL: Components and connectors
- OPS: Infrastructure and monitoring

If the product is delivered to a customer instead of the final user(s) we get a number of variations in part one and three.  As an extreme, these two parts might end up as blackbox for the development, getting input from the cutomer's own user research and then just delivering the results. However, we may assume that in this case the customer instantiates disciplines and flow relations similar to the one sketched above. 

## Views on the Model
There are three basic views on the model, each with a certain notion of excellence.

### Discipline Experts
The disciplines and relations described above form the core elements of an abstract product delivery machinery. However, the machinery is only the basic structure. It needs to be implemented by people who are experts in their disciplines, and at the same time have general knowledge of all other disciplines in order to be able to put specific work always into context of the overall product lifecycle. Only then we may avoid silos and waterfall-like delivery processes.

The more direct the disciplines are related, the more this knowledge is required. For instance working on the architecture requires a solid understanding of all the requirements, both the functional requirements as well as the requirements for quality attributes. And in the downstream flow we need a thourough understanding which infrastructure is needed for effective operations. This holds not only for production but also for development and test environments.

### Project Excellence
We need people working together as a team often facilitated by somebody in the team taking care of collaboration topics like establishing and customizing an agile process, enabling appropriate levels of self-organisation but also considering individual personal development goals. At Zühlke this is typically done by a Collaboration Owner, elsewhere this might be a Scrum Master. Additionally somebody taking care of project budget and risk is needed within the team. Typically this is done by a team member from the project management domain.

Both roles, the collaboration owner and the project manager (PM) are not part of the sketch above, since both are somewhat always concerned with the complete flow on a meta level and not so much with the product flow directly. At least in some parts, the PM has some stakes in the business discipline, but his responsibility is usually more related to the project delivery than to the business case of the project.

Both roles together ensure that not only some features are delivered, but that they are also delivered in time and in budget with appropriate quality by a team that sees purpose individually as well as on level of the product development as a whole.

### Successful Product(s)
Even if we have achieved project excellence we usually do not yet have delivered a successful product. Excellent products require additionally that user and business needs and goals are explicitly taken into account from early on. We need to develop and deliver incrementally and incorporate feedback and learnings continuously. Each discipline has its specific contribution:

- BIZ: models with statements about value and impact
- CX: overarching product(s) delivery and experience concept
- UX: statements about user value and specific concepts for user needs
- REQ: concrete requirements and metrics for the product development
- ARCH: feasable technical context for development and production
- IMPL: adaptable, maintanable and operatable implementation of what is needed
- OPS: concrete environments, pipelines and monitoring for development and production

One key aspect to achieve product excellence is to track and monitor product features (or increments) as they make their way through the complete cyclical flow in order to learn and improve continuously within and from each discipline. That is all the way from CX/UX to delivery in production systems, including the tracking and monitoring of the product's usage and business performance.

## Use Cases for the Model
There are a number of application scenarios for the basic model, for instance:

- Define essentials and their relation for your project: What are the discipline-specific contributions for this project? 
- Clarify roles and staffing for your project: Who is needed, doing what and interacting with whom?
- Explain the role of architecture in your development project, technically and organisationally: This role is again and again a particular challenge.
- Measure lead and cycle times for feature delivery: How long do we need for a full cycle? This is one of the core metrics for Continuous Delivery.
- Explain personal development paths: Usually one starts at Zühlke within a single discipline and then develops further, for instance from IMPL to ARCH and OPS who would then be a "Coding architect with operations skills".
- Explain the evolution of the Zühlke business model: From development service provider to partner for business innovation and/or to AMS (Application Management Services).

In general the Discipline Flow makes the big picture of disciplines and their relations a first class citizen and allows to explain what we sometimes call 'Operational Excellence'. This kind of excellence is a result of discipline experts working together within a lean project organisation and for a product delivery that focuses on user and market needs from the very beginning on. 

*By {{page.authorName}}*

{% include "./discipline-flow.resources.md" %}
