---
authorName: Milan Milanovic
authorGithubUsername: milanm
issue: 59
title: Clean and cleaner code
---
# {{page.title}}

Being a developer in these days means to develop features and fix bugs for a customer sometimes in a fast pace, which may result in a badly maintainable code. On the other hand, we also want to make the most elegant solutions to some problems. This can produce code that machine can understand but people cannot so well. Such code can become a mayor issue for a company to maintain and use in a long run. 
Our objective should be to write maintainable, understandable, simple and readable code, and we need to make an extra effort for this to happen. Code should be easy to change and understand to our colleagues, however this is not an easy task to achieve, especially on large projects. So we need to practice writing nice code and fail, fix it and repeat again until we achieve clean code. 
This is the main way to create clean code, but we can achieve it  by applying some guidelines, principles and techniques, which will be shown below.
*	Clearness - As a main guideline, the problem developer needs to solve is of the critical importance, however that must be understandable by a developer, often who didn’t write that code. 
*	Focus - Good code should follow the Single responsibility principle (SRP), so that the code we write should only have one reason to change and to be small, or to say that is responsible of a single part of functionality. 
*	Simplicity - We should always try to apply DRY (Don’t repeat yourself) rule. What this means is to reduce repetition of code, so that a single change does not produce many changes in code. In addition, we should follow the KISS principle (Keep It Simple Stupid), which force us not to complicate things unnecessary.
*	Readability - In order to make code readable as much as we can, we can follow the YAGNI principlen(You Ain’t Gonna Need It), which implies that we shouldn’t write code upfront that is not currently needed.
*	Naming - Naming things is one of the most important things in software development. Names should be expressive enough and clear that we immediately know what concept represents. This also represent a self-documenting approach.
*	Commenting - As comments usually represent an anti-pattern we should be careful with them. If we have many comments, this usually means that the code is not self-documenting. We need to tend to focus on more clear and readable code and not to have many comments which explains code.
*	Formatting - We always first tend to make a working software, but in the long run, we will need to have good readability. To achieve this, our code needs to have a coding style understandable by a team, because without it maintainability can be seriously affected, especially on large projects. 
Along with these guidelines a developer should use “code sense” when looking at code, according to Robert C. Martin [1], the creator of Clean code approach. This let people to see different options and that they can select the best variation of it, to make value-added and clean code. To do that, we must practice coding and explore different dimensions of programming languages. 
It is also important reminder that we need to write nice and clean code, but also the code that solves the problem. The professional thing is to deliver code with or without clean code, than not to deliver it at all. However, we always must go back and clean the code before delivery. 

1. Clean Code: A Handbook of Agile Software Craftsmanship (Robert C. Martin), Prentice Hall, 2008.


*By {{page.authorName}}*

{% include "./_example.resources.md" %}