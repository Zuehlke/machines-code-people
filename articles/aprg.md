---
authorName: Stephan Janisch, Christian Eder, Alexander Derenbach
authorGithubUsername: sjanisch
title: Architectural Programming
---
# {{page.title}}


Architectural Programming (APRG) is a programming discipline for architectural elements and structures like servers, databases, load balancers or network components. Our approach requires APIs for architectural elements or at least for infrastructure to create and evolve an architecture model using code. For instance Azure, Google or AWS all provide such APIs with services ranging from IaaS, CaaS to PaaS.

With our first implementation of the APRG approach we extended Structurizr, an executable Architectural Description Language, with an explicit and coded relation to the cloud infrastructure that is actually needed to implement and execute the system. This bridges a gap that nowadays still exist in most software development projects, a gap between models and code.

The coded model is the very basis for an envisioned development workflow that allows for validating architectural decisions by implementing tests as executable quality attribute scenarios. Both, the decisions as well as the scenarios might also be stored in the same repositories like the code for functional components, architecture and infrastructure, hence further reducing the risk of architectural erosion due to the system's evolution during its development and lifetime.

## Architecture Models in the Product Lifecycle
Architecture modelling takes user and business requirements into account to provide guiding structure and decisions for implementation and operation of a system ultimately delivered as a product to the customer.

Such a model comprises at least

- System Architecture for tiers, infrastructure and connectors between tiers
- Application Architecture(s) as a grey-box view of the different parts of the system architecture. This view details components and connectors between components 
- Quality Attribute Requirements specifying the qualities required from the resulting system
- Architectural Decisions as a record of options and explicit decisions to fulfil the given requirements


## Architectural Erosion and the Model-Code Gap
Architectural erosion is the divergence of the architecture model from the source code and infrastructure that actually implements the model. It results in a model-code gap and usually happens stepwise by iterative and incremental development and maintenance of a system. The code and infrastructure evolves, but the architecture model is not kept in sync. After some time we end up with an architectural model that describes the system as it was meant in the beginning but not as it is actually implemented and delivered. 

Such a system is often called "historically grown". It is difficult to maintain and to evolve further since earlier decisions were implicit, based on local knowledge and are not comprehendable any more. Fulfilment of quality attribute requirements is getting harder and harder to achieve.

## Towards Architecture as Code 
Our approach is one step towards closing the model-code gap. It combines Architecture as Code with APIs for Infrastructure within the same code base, hence making it easier to keep the architectural model of a system in sync with the code and the infrastructure which actually implements this model. 

As an example consider the following simplified architecture of an eShop:

<sys arch here> <app arch here>
	
The frontend tier initially integrates directly with the database. After some development iterations it is decided to separate the persistence logic into a repository component acting as a facade to the database. An update of the diagram according to this new component is necessary and if not done leads to architectural erosion. 

Instead of modelling the architecture in a diagram we may use code like the following:

<example code here>
	
Now, when this gets executed the corresponding infrastructure and connectors are created and the system is ready to be used according to its description in the code.

Note that the implementation is based on our extension of Structurizr, an executable ADL which also allows to generate architectural diagrams. Therefore we may additionally generate up-to-date views of our current models as needed in the system's Architecture Guidebook, for instance.

In case we need to evolve or refactor the architecture we must work directly with the code. Only by this means we are able to modify the actual system and hence the model is always in sync with code and infrastructure. Of course we could also change the system directly, but this is similar to change something in a running system without modifying the underlying source code in the repository.

## Envisioned Development Workflow

Architecture model in code ... typesafe, merge, testable

QARs modelled with scenarios implemented by tests stored with code, similar to BDD for acceptance testing

ADRs stored with in code, linked to scenarios and tests

Risk-driven approach to prioritize test/impl effort

Most development teams document everything in a wiki (i.e. Confluence). As this wiki is often the central place for documentation, it feels natural to store next to the business documentation also the technical documentation. In many cases this documentation needs to be delivered  also to the customer, so having it in one place seems a meaningful approach. 

But from the view of evolving architecture, it makes much more sense to store the technical documentation with your source code. The architectural documentation is stored on the same branches and tags as the source code without any need of extra housekeeping. Additional less distance between them will support keeping the gap small.

Architecture is often expressed in diagrams. On the one hand they can give an overview of the system while on the other hand you can dig as deep as required into the details of a system without writing dozens of documents no one ever reads. While storing ADRs in the VCS is very easy, it gets more difficult when it comes to architecture diagrams. Many current tools use already an XML or JSON format which could be checked in to VCS. But anyone who ever merged conflicts in an XML document, knows that this is not the best you can do.
Additionally XML or JSON format do not provide any (or at least less) semantic which could be executed. 
And often multiple diagrams show the different views on the same model. Every change of the model requires a change in all views. 

Using architecture as code benefits here in all cases. Merging the code is much more intuitive, as the language can be the same as the source code itself. Also changes in the model are type safe (depending on the language you use eventually at execution time), so all views will be taken into account. 

And finally code can be executed and tested. Architectural requirements which are expressed by code can be verified. The code can be processed by a CI and CD pipeline. After running the tests, the architecture can be deployed in a dedicated environment. 

A further step to bring the complete architecture model and the code together, is storing your architectural decisions (ADR) with your code. ADRs are short text records in a defined format. This helps to keep the decision simple but informative. See [ADR] for details about it.

ADRs are made to fulfill the important quality attribute requirements which were set up for a software system. When we now see our ADRs as the user stories of the architecture then the quality attribute requirements are the acceptance criteria mentioned above. 

We could write tests against these requirements to validate which stories (ADRs) are still fulfilled. Something similar is described in [EVOL] as "Fitness Function". Writing these tests can be a challenge, as there will not be the one recipe to rule them all. One could be an execution of a performance tests in a special environment set up by the architecture as code scripts to test performance requirements. Another can be automated penetration tests for security or chaos engineering for availability. 

Coupling can be tested by tracing the requests in a microservice environment and matching this against bounded context borders [DDD].

Important is that the architecture of the test system is setup by the architecture code, to verify that the current version still fits to all constraints.
Some quality attributes like modifiability will require more creative testing implementations, but it is imaginable to measure the sprint velocity for that. 

To reduce the amount of tests required, it is helpful to follow the risk driven approach, to create ADRs and tests only for the parts of the system where the potential risk requires it [RISK]. 

## Conclusion and Outlook

The current state already provides a good base for storing architecture as code with your source code. With ADRs you can store the important decisions versioned and the approaches regarding architecture as code get more and more mature. Implementing the architecture gives you the full spectrum of software engineering techniques for your architecture, starting with version control, CI & CD pipelines and testing against given acceptance criteria. Parts of this idea already exists, others must be developed and some still sound like fiction.



*By {{page.authorName}}*

{% include "./aprg.resources.md" %}
