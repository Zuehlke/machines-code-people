---
authorName: Stephan Janisch, Christian Eder
authorGithubUsername: sjanisch
title: Towards Architectural Programming
---
# {{page.title}}


We understand Architectural Programming (APRG) as a programming discipline for architectural elements and structures. APRG requires infrastructure APIs, like for instance those provided by Azure or AWS, to create and evolve the architectural components for a given system.

By this means APRG extends approaches like Structurizr which is an executable Architectural Description Language, with an explicit and coded relation to the infrastructure that is actually used to execute the system. This in fact bridges a gap that even nowadays still exist in most software development projects between architecture models and code. 

## Architecture Models in the Product Lifecycle

- what is an architecture model, essentially?
- what is its role in the life cycle

## Architectural Erosion and the Model-Code Gap

- what is erosion?
- why is it a problem?
- how does APRG solves (parts of) the problem?

Our approach is one step further towards closing the model-code gap. It combines Architecture as Code with APIs for Infrastructure within the same code base, hence making it easier to keep the architectural model of a system in sync with the code and the infrastructure which actually implements this model. 

## Towards Architecture as Code 

- example architecture
- example code
- architectural refactoring -> no erosion


## Development Workflow

- how does this APRG integrate to a development workflow?
- conclusion and outlook? 




*By {{page.authorName}}*

{% include "./aprg.resources.md" %}
