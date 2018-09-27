---
authorName: Stephan Janisch, Christian Eder, Alexander Derenbach
authorGithubUsername: sjanisch
title: Architectural Programming
---
# {{page.title}}


Architectural Programming (APRG) is a programming discipline for architectural elements and structures like services, data sinks and sources, communication channels. With this scope it abstracts from infrastructure and marks a distinction to infrastructure as code. The approach requires APIs for architectural elements to create and evolve an architecture model using code. For instance Azure, Google or AWS all provide such APIs with services ranging from IaaS, CaaS to PaaS.

With the first implementation of the APRG approach we extended Structurizr, an executable Architectural Description Language (ADL), with an explicit and coded relation to the cloud infrastructure that is actually needed to implement and execute the system. This bridges a gap that nowadays still exist in most software development projects, a gap between models and code.

The coded model is the very basis for an envisioned overall development workflow that allows the validation of architectural decisions by executable quality attribute scenarios similar to the validation of acceptance criteria by automated functional tests. 

## Architecture Models in the Product Lifecycle
Architecture modeling takes user and business requirements into account to provide a guiding structure and decisions for implementation and operation of a system, ultimately delivered as a product to the customer.

Such a model comprises at least

- System Architecture for tiers, infrastructure and connectors between tiers
- Application Architecture(s) as a grey-box view of the different parts of the system architecture. This view details components and connectors between components 
- Quality Attribute Requirements specifying the qualities required from the resulting system
- Architectural Decisions as a record of options and explicit decisions to fulfil the given requirements


## Architectural Erosion and the Model-Code Gap
Architectural erosion is the divergence of the architecture model from the source code and infrastructure that actually implements the model. It results in a model-code gap and usually happens stepwise during iterative and incremental development and maintenance of a system. The code and infrastructure evolves, but the architecture model is not kept in sync. After some time we end up with a model that describes the system as it was meant in the beginning but not as it is actually implemented and delivered. 

Such a system is often called "historically grown". It is difficult to maintain and to evolve further since decisions are often implicit, based on local knowledge and are not comprehendable after some time any more. Fulfilment of quality attribute requirements is getting harder and harder to achieve.

## Towards Architecture as Code 
Our approach is one step towards closing the model-code gap. It combines Architecture as Code with APIs for Infrastructure within the same code base. As an example consider the following simplified architecture of a software steering a monkey factory:

(TBD add the sys and app architecture sketch here)
	
The frontend tier initially integrates directly with the database. After some development iterations it is decided to separate the persistence logic into a repository component acting as a facade to the database. An update of the diagram according to this new component is necessary and if not done leads to architectural erosion. 

Instead of modelling the architecture in a diagram we may use code like the following:

(TBD add the example code here)
	
Now, when this gets executed the corresponding infrastructure and connectors are created and the system is ready to be used according to its description in the code.

Note that the implementation is based on Structurizr, an executable ADL which also allows to generate architectural diagrams. Therefore we may additionally generate up-to-date views of our current models as needed in the system's Architecture Guidebook, for instance.

In case we need to evolve or refactor the architecture we must work directly with the code. Only by this means we are able to modify the actual system and hence the model is always in sync with code and infrastructure. Of course we could also change the system directly, but this is similar to changing something in a running system without modifying the underlying source code in the repository. 

## Envisioned Development Workflow

(TBD section is still too long > einfach als 2.ter Artikel?) 

How does the APRG approach integrate in the development workflow of a software product? We think the first important step is to have the model managed in the same repositories like the source code that implements the functionality of the system. This provides the very basis towards an approach of system development that allows to validate and test architectural decisions similar to BDD [todo link BDD] for functional acceptance.

### Version Control and Executability

Most development teams document everything in a wiki (e.g. Confluence). As this wiki is often the central place for documentation, it feels natural to store the architectural documentation next to the business documentation. In many cases this documentation needs to be delivered also to the customer, so having it in one place seems a meaningful approach. But from the view of evolving architecture, it makes much more sense to store the documentation with your source code. It might be stored on the same branches and tags as the source code without any need of extra housekeeping. Additional less distance between them will support keeping the gap small.

Architecture is often expressed in diagrams. On the one hand they can give an overview of the system while on the other hand you can dig as deep as required into the details of a system without writing dozens of documents no one ever reads. Many current tools use already an XML or JSON format which could be checked into VCS. But anyone who ever merged conflicts in an XML document, knows that this is not the best you can do. Additionally XML or JSON format do not provide any (or at least less) semantic which could be executed. And often multiple diagrams show the different views on the same model. Every change of the model requires a change in all views. 

Using architecture as code benefits here in all cases. Merging the code is much more intuitive, as the language can be the same as the source code itself. Also changes in the model are type safe (depending on the language you use eventually at execution time), so all views will be taken into account. 

And finally code can be executed and tested. Architectural requirements which are expressed by code can be verified. The code can be processed by a CI/CD pipeline. After running the tests, the architecture can be deployed in a dedicated environment. 

### Decisions, Scenarios and Tests

A further step to bring the complete architecture model and the code together, is storing your architectural decision records (ADR) with your code. ADRs are short text records in a defined format. This helps to keep the decision simple but informative. See [ADR] for details about it.

ADRs are made to fulfill quality attribute requirements for a system. When we now see our ADRs as the user stories of the architecture then the quality attribute requirements are acceptance criteria for these stories. 

We could write tests against these requirements similar to the BDD approach für functional acceptance testing [todo BDD link]. As described in [EVOL] writing these tests can be a challenge, since there will not be the one recipe to rule them all. One could be an execution of a performance test in a special environment set up by the architecture as code scripts to test performance requirements. Another can be automated penetration tests for security or resilience tests following the principles of chaos engineering. 

Important is that the architecture of the test system is setup using architecture code. Only then it is possible to automatically verify that the system to be delivered continuously still fits to all requirements. Since the effort for testing as usual must be balanced against the actual value it creates, it is advisable to follow a risk-driven approach to create ADRs and tests only for the parts of the system where the potential risk indeed requires it [RISK]. 

## Conclusion and Outlook

(TBD section still needs revision)

The current state already provides a good base for storing architecture as code with your source code. With ADRs you can store the important decisions versioned and the approaches regarding architecture as code get more and more mature. Implementing the architecture gives you the full spectrum of software engineering techniques for your architecture, starting with version control, CI & CD pipelines and testing against given acceptance criteria. Parts of this idea already exists, others must be developed and some still sound like fiction.



*By {{page.authorName}}*

{% include "./aprg.resources.md" %}
