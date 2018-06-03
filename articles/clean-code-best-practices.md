---
authorName: Milan Milanovic
authorGithubUsername: milanm
issue: 59
title: Clean code best practices
---
# {{page.title}}

Being a developer in these days means to develop features and fix bugs sometimes in a fast pace, which may result in a badly maintainable code. On the other hand, we also want to make the most elegant solutions to some problems. This can produce code that machine can understand but people cannot so well. Such code can become a mayor issue for a company to maintain and use in a long run. 
Our objective should be to write maintainable, understandable, simple and readable code, and we need to make an extra effort for this to happen. Code should be easy to change and understand to our colleagues, however this is not an easy task to achieve, especially on large projects. So we need to practice writing nice code and fail, fix it and repeat again until we achieve clean code. We can do this by re-writing code as we go, and not to wait for big refactorings. Another thing is that we try to type code and not to copy it and change only, as we often do, as this produces better understanding of the what we are doing, and can produce better and cleaner code.

This is the main way to create clean code, but we can achieve it  by applying some guidelines, principles and techniques, which will be shown below.
*	Clearness - As a main guideline, the problem developer needs to solve is of the critical importance, however, the software solution must be understandable by a developer, often who didn’t write that code. 
*	Focus - Good code should follow the Single responsibility principle (SRP), so that the code we write should only have one reason to change and to be small, or to say that is responsible of a single part of functionality. 
*	Simplicity - We should always try to apply DRY (Don’t repeat yourself) rule. What this means is to reduce repetition of code, so that a single change does not produce many changes in code. In addition, we should follow the KISS principle (Keep It Simple Stupid), which force us not to complicate things unnecessary.
*	Readability - In order to make code more readable, we can follow the YAGNI principle (You Ain’t Gonna Need It), which implies that we shouldn’t write code upfront that is not currently needed.
*	Naming - Naming things is one of the most important things in software development. Names are everywhere in software. We name methods, classes, files, etc. It is important to give meaningful names as they need to reveal intent. Names should be expressive enough and clear that we immediately know what concept represents. This also represent a self-documenting approach.
*	Commenting - As comments usually represent an anti-pattern we should be careful with them. If we have many comments, this usually means that the code is not self-documenting. We need to tend to focus on more clear and readable code and not to have many comments which explains code.
*	Formatting - We always first tend to make a working software, but in the long run, we will need to have good readability. To achieve this, our code needs to have a coding style understandable by a team, because without it maintainability can be seriously affected, especially on large projects. Although these days we have powerful tools that can take care of formatting, teams should adopt formatting rules and follow them.

Along with these guidelines a developer should use “code sense” when looking at code. This let people to see different options and that they can select the best variation of it, to make value-added and clean code. To do that, we must practice coding and explore different dimensions of programming languages. 
It is also important reminder that we need to write nice and clean code, but also the code that solves the problem. Certainly, we need to deliver code with or without clean code, than not to deliver it at all. However, the importance of clean code should always be a top priority, as this will bring more benefits to a project in the future. It should become a practice to go back and clean the code before switching to the next task.

*By {{page.authorName}}*