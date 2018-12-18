---
authorName: Stephan Janisch, Christian Eder, Alexander Derenbach
authorGithubUsername: sjanisch
issue: 80
title: Architectural programming in the development workflow
---
# {{page.title}}


## Envisioned development workflow

How does the architectural programming (APRG) approach fit into the development workflow of a software product? We think the first important step is to have the model managed in the same repositories as the source code that implements the functionality of the system. This provides the very basis of a system development approach that allows architectural decisions to be validated and tested in a similar fashion to the way in which behaviour-driven development [BDD] works for functional acceptance.

### Version control and executability

Most development teams document everything in a wiki (e.g. Confluence). As this wiki is often the central place for documentation, it feels natural to store the architectural documentation next to the business documentation. In many cases, this documentation also needs to be delivered to the customer, so having it in one place seems a meaningful approach. But from the perspective of evolving architecture, it makes much more sense to store the documentation with your source code. It could be stored on the same branches and tags as the source code without the need for any extra housekeeping. In addition, less distance between them will support keeping the gap small. 

Architecture is often expressed in diagrams. On the one hand, they can give an overview of the system while, on the other hand, you can dig as deep as required into the details of a system without writing dozens of documents no one ever reads. Many current tools already use an XML or JSON format which could be checked into a VCS. But anyone who has ever merged conflicts in an XML document knows that this is not the best thing you can do. Additionally XML and JSON formats provide no (or at least less) semantics which could be executed. And often multiple diagrams show different views on the same model. Every change of the model requires a change in all views. 
 
Using architecture as code is beneficial here in all cases. Merging the code is much more intuitive, as the language can be the same as the source code itself. Also changes in the model are type-safe (depending on the language you eventually use at execution time), so all views will be taken into account. 

And, finally, code can be executed and tested. Architectural requirements which are expressed by code can be verified. The code can be processed in a CI/CD pipeline. After running the tests, the architecture can be deployed in a dedicated environment. 

### Decisions, scenarios and tests

A further step towards bringing the complete architecture model and the code together is to store your architectural decision records (ADR) with your code. ADRs are short text records in a defined format. This helps to keep decisions simple but informative. See [ADR] for further details.

ADRs are made to fulfil quality attribute requirements for a system. So ADRs are the architectural stories of the system and quality attribute requirements are the acceptance criteria of these stories. 

We could write tests based on these acceptance criteria to prove which ADRs are fulfilled. As described in [EVOL], writing these tests can be a challenge, since there will be no one recipe to rule them all. One test could involve the execution of a performance test in a special environment set up by the architecture code to test performance requirements. Another could involve automated penetration tests for security or resilience tests following the principles of chaos engineering. 

The important thing is for the test system to be set up using architecture code. Only then is it possible to prove that the system still satisfies all requirements. Since the effort for testing must, as usual, be balanced against the actual value it creates, it is advisable to follow a risk-driven approach and create ADRs and tests only for the parts of the system where the potential risk indeed requires it [RISK]. 

## Conclusion and outlook
The current state already provides a good basis for storing architecture as code with your source code. With ADRs you can already store the important decisions under version control. Additionally the approaches regarding architecture as code get increasingly mature. Implementing the architecture gives you the full spectrum of software engineering techniques for your architecture, starting with version control, CI & CD pipelines and testing against given acceptance criteria. Parts of this idea already exist, others must be developed and some still sound like fiction.

*By {{page.authorName}}*


{% include "./aprg-workflow.resources.md" %}
