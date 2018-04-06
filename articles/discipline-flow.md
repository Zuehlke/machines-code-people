---
authorName: Stephan Janisch
authorGithubUsername: sjanisch
title: Discipline Flow and Operational Excellence
---

>| Note: in this draft, comments and leading questions which will be removed are labeled by one indent and |

# {{page.title}}

>| idea of this article: use discipline flow to describe what we mean with operational excellence. By this means also introduce and explain the abstract idea and reasoning behind it.

>| we do projects, aim at op excellence > deliver value to customer > customer success = zühlke success

>| operational excellence achieved by excellence on three levels: discipline, project and product

>| discipline flow helps to explain these level and their relation to each other

## Discipline Flow
Discipline Flow is a method that relates software engineering disciplines in context of a digital product lifecycle. The lifecycle includes discovery, development and delivery of a product, from user needs and business goals to the product as delivered by operations to the user, customer respectively.

![Disciplines and Flow Relations](./discipline-flow/dflow-sketch.jpg)

### Disciplines 

- BIZ: Business/Organisation/Society goals and impacts 
- UX: User and his goals 
- REQ: Product features and acceptance criterias 
- ARCH: Quality attributes and architecture
- IMPL: Components and connectors
- OPS: Infrastructure and monitoring 

### Flow Relations

Discipline specific elements are connected by relations. For instance the features specified by the requirements discipline are related to corresponding parts of the implementation. These in turn are related to parts of the artefacts deployed, operated and provided as a product to the user by the operations discipline. 

The key part of the whole Discipline Flow is to instantiate it in a given project in such a way that the relations indeed establish flow across the disciplines, for the complete lifecycle. This flow is the very basis of continuous improvement cycles for the development and evolution of a digital product.

## Discipline and Project Excellence
The disciplines and relations described above form the core elements of an abstract product delivery machinery. However, the machinery is only the basic required structure. It needs to be filled by people who are experts in their disciplines, and at the same time have a general knowledge of all other disciplines in order to be able to put specific work always into context of the overall product lifecycle. Only then we may avoid silos and waterfall-like delivery processes.

The more direct the disciplines are related, the more is this knowledge required. For instance working on the architecture requires a solid understanding of all the requirements, both the functional requirements as well as the required quality attributes. On the other hand it requires also a thorough understanding of what needs to be implemented and which infrastructure is needed for effective operations. 

Only then it is possible to sketch system, application and infrastructure  architectures which are concrete enough to be a useful starting point and framework for implementation and operations, and on the other hand are abstract enough to be maintained over the whole lifecycle and evolution process of a product.

> | TODO add discovery part of the flow User > CX/UX > REQ and then conclude "This is Discipline Excellence."

Coming from Discipline to Project Excellence we need people working together as a team often facilitated by somebody in the team taking care of collaboration topics like establishing and customizing a Kanban based process, enabling appropriate levels of self-organisation but also considering individual personal development goals. Only if we succeed to connect individual purpose with project purpose we will arrive indeed wat delivering Project Excellence. Finally, of course, somebody taking care of project budget and risk is needed in team. Typically this is done by a team member with knowledge and experience in the project management (PM) domain.

Both roles, the collaboration owner and the project manager are not part of the sketch above, since both are somewhat always concerned with the complete flow on a meta level and not so much with the product flow directly. At least in some parts the PM has some stakes in the Business Discipline, but his responsibility is more related to the project delivery than the business case of the project.

However both are strictly required to go from Discipline Excellence to Project Excellence. The difference is to ensure that not only an excellent product is delivered, but that it is also delivered in time and in budget with appropriate quality by a team that sees purpose individually as well as on level of the product development as a whole.


## Products and Feedback Loops
> | TODO Zusammenhang project, value and value streams

> | What is the flow unit? What does flow mean in context of the product?

> | How do Disciplines contribute to product excellence, flow respectively? 

- BIZ: Business/Organisation/Society goals and impacts → statements about value
- UX: User and his goals → insights about user needs
- REQ: Product features and acceptance criterias → concrete requirements and metrics for the product development
- ARCH: Quality attributes and architecture → technical context for development and production
- IMPL: Components and connectors → concrete implementation in context of ARCH and REQ
- OPS: Infrastructure and monitoring → concrete environments for development and production

> | OPS: One key aspect to achieve product excellence is to track and monitor product features or increments as they make their way through the complete cycle in order to learn and improve continuously within and from each discipline. That is all the way from UX to delivery in production systems, including the tracking and monitoring of the product's usage and business performance, for instance by taking into account user and market feedback.

> | Where and how does "pull" come into play? Pull as the ultimate enabler for delivering what is actually needed - for both Business (pull from Market) and User (pull from individual goals)

> | finally "seek perfection"? Connected flow relations and feedback between Business (BIZ), User Experience (UX), Requirements Engineering (REQ), Architecture (ARCH), Implementation (IMPL) and Operations (OPS), Market, User to deliver a product that satisfies user and business goals.


## Operational Excellence

> | How does OpEx emerge from the model above?

> | What is the role of Discipline Flow then? Discipline Flow makes the big picture first class citizen and allows to explain how we aim to achieve OpEx for our projects - -> OpEx is a result of discipline excellence, lean project delivery and customer/user and market focus from the very beginning on. 

*By {{page.authorName}}*

{% include "./discipline-flow.resources.md" %}
