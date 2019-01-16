---
authorName: Milan Milanović
authorGithubUsername: milanm
issue: 59
title: Clean code best practices
---
# {{page.title}}

Being a developer these days involves sometimes developing features and fixing bugs at a fast pace, which can result in code that is difficult to maintain in the long-term. In other cases, we want to make the most elegant solutions possible to solve some problems. This can produce code that machines can understand but people have more difficulty understanding. Such code can become a major issue for a company to maintain and use in the long run. 

Our objective should be to write maintainable, understandable, simple and readable code, and we need to make an extra effort for this to happen. It should be easy for our colleagues to change and understand the code we create, but this is not an easy task to achieve, especially in large projects. So we need to practice writing tidy code and fail, fix it and repeat again until we achieve clean code. We can do this by re-writing code as we go, rather than waiting for big refactorings. Another good approach is that we try to type out all our code, rather than copying and amending it, as we often do, as the former results in a better understanding of what we are doing, which helps us produce better and cleaner code.

This is the best way of creating clean code, and it also helps to apply some guidelines, principles and techniques, as described below.

* Naming - Naming things is one of the most important things in software development. Names are everywhere in software. We name methods, classes, files, etc. It is important to give meaningful names as they need to indicate the purpose of that part of code. Names should be expressive and clear enough to allow us to immediately know what the code does. This also helps with the implementation of a self-documenting approach.
* Clearness - As a main guideline, the problem that the developer needs to solve is of critical importance, but the software solution must be understandable for a developer who didn't write the original code.
* Focus - Good code should comply with the Single Responsibility Principle (SRP), so that the code we write has one specific purpose and is compact, as well as being responsible for a single part of the functionality.
* Simplicity - We should always try to apply the DRY (Don't Repeat Yourself) rule. What this means is reducing any repetition of code, so that a single change does not require numerous changes in the code. In addition, we should follow the KISS principle (Keep It Simple Stupid), which forces us not to complicate things unnecessarily.
* Readability - In order to make code more readable, we can follow the YAGNI principle (You Ain't Gonna Need It), which implies that we shouldn't write code upfront that is not currently needed.
* Commenting - As comments usually represent an anti-pattern, we should be careful with them. If we insert a lot of comments, this usually means that the code is not self-documenting. We should instead focus on creating more clear and readable code and not having to add numerous explanatory comments in the code.
* Formatting - We always first tend to focus on creating software that works, but in the long run we also need to have good readability. To achieve this, our code needs to have a coding style that is understandable by a team, because otherwise maintainability can be seriously affected, especially in large projects. Although we now have powerful tools that can take care of formatting, teams should still adopt formatting rules and follow them.

Along with these guidelines, a developer should use "code sense" when looking at code. This allows people to see different options, so that they can select the best variation of it, to make value-added and clean code. To do that, we must practice coding and explore different dimensions of programming languages. 

It is also important to remind ourselves that we need to write nice and clean code, but also code that solves the problem. Of course, we need to deliver code, whether it is clean or not, rather than not delivering it at all. However, the creation of clean code should always be a priority, as this will bring more benefits to a project in the future. It should become standard practice to go back and clean the code before moving on to the next task.

*By {{page.authorName}}*
