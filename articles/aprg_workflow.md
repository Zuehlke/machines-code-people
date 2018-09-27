---
authorName: Stephan Janisch, Christian Eder, Alexander Derenbach
authorGithubUsername: sjanisch
title: Architectural Programming in the developement workflow
---
# {{page.title}}


## Envisioned Development Workflow

How does the APRG approach integrate in the development workflow of a software product? We think the first important step is to have the model managed in the same repositories like the source code that implements the functionality of the system. This provides the very basis towards an approach of system development that allows to validate and test architectural decisions similar to Behavior-driven development [BDD] for functional acceptance.

### Version Control and Executability

Most development teams document everything in a wiki (e.g. Confluence). As this wiki is often the central place for documentation, it feels natural to store the architectural documentation next to the business documentation. In many cases this documentation needs to be delivered also to the customer, so having it in one place seems a meaningful approach. But from the view of evolving architecture, it makes much more sense to store the documentation with your source code. It might be stored on the same branches and tags as the source code without any need of extra housekeeping. Additional less distance between them will support keeping the gap small.

Architecture is often expressed in diagrams. On the one hand they can give an overview of the system while on the other hand you can dig as deep as required into the details of a system without writing dozens of documents no one ever reads. Many current tools use already an XML or JSON format which could be checked into VCS. But anyone who ever merged conflicts in an XML document, knows that this is not the best you can do. Additionally XML or JSON format do not provide any (or at least less) semantic which could be executed. And often multiple diagrams show the different views on the same model. Every change of the model requires a change in all views. 

Using architecture as code benefits here in all cases. Merging the code is much more intuitive, as the language can be the same as the source code itself. Also changes in the model are type safe (depending on the language you use eventually at execution time), so all views will be taken into account. 

And finally code can be executed and tested. Architectural requirements which are expressed by code can be verified. The code can be processed by a CI/CD pipeline. After running the tests, the architecture can be deployed in a dedicated environment. 

### Decisions, Scenarios and Tests

A further step to bring the complete architecture model and the code together, is storing your architectural decision records (ADR) with your code. ADRs are short text records in a defined format. This helps to keep the decision simple but informative. See [ADR] for details about it.

ADRs are made to fulfill quality attribute requirements for a system. When we now see our ADRs as the user stories of the architecture then the quality attribute requirements are acceptance criteria for these stories. 

We could write tests against these requirements similar to the BDD approach für functional acceptance testing. As described in [EVOL] writing these tests can be a challenge, since there will not be the one recipe to rule them all. One could be an execution of a performance test in a special environment, set up by the architecture code to test performance requirements. Another can be automated penetration tests for security or resilience tests following the principles of chaos engineering. 

Important is that the architecture of the test system is setup using architecture code. Only then it is possible to automatically verify that the system to be delivered continuously still fits to all requirements. Since the effort for testing as usual must be balanced against the actual value it creates, it is advisable to follow a risk-driven approach to create ADRs and tests only for the parts of the system where the potential risk indeed requires it [RISK]. 

## Conclusion and Outlook
The current state already provides a good base for storing architecture as code with your source code. With ADRs you can store the important decisions versioned and the approaches regarding architecture as code get more and more mature. Implementing the architecture gives you the full spectrum of software engineering techniques for your architecture, starting with version control, CI & CD pipelines and testing against given acceptance criteria. Parts of this idea already exists, others must be developed and some still sound like fiction.


*By {{page.authorName}}*

{% include "./aprg_workflow.resources.md" %}

