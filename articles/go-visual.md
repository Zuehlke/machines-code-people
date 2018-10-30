---
authorName: Gabriel Duss
authorGithubUsername: gabduss
issue: 89
title: Why you need to go visual
---

# {{page.title}}

This article is about why you should sketch more in your daily work and why you should use the power of shapes and colours in your documentation.
Illustrations allow you to transfer knowledge in a way that is quicker and easier to remember and help to prevent misunderstandings.
For instance, if you want to describe the shape of Switzerland in words, you will probably need hundreds of words. The same information in the form of an illustration can be processed by our brain in less than a second and it would still be more precise than the description.

## Our brain handles pictures very well
The ability to see and recognise patterns and movement is millions of years old and has improved over time through evolution. Our ancestors' lives were hugely dependent on it. Writing is a human construct for recording spoken words and is only a few thousand years old. This means that our brain handles pictures much faster than text. In addition, it is also more fun to look at and study pictures than to read text. As an example, let's take an IKEA manual of how to build a wardrobe. The illustration-based manual is more effective than a text-based description could ever be.

| Easier to understand                | Easier to map to the real world         | Easier to prevent errors                |
|-------------------------------------|-----------------------------------------|-----------------------------------------|
|![data flow](./go-visual/manual.png )|![data flow](./go-visual/screws.png )    |![data flow](./go-visual/screw.png )     |
| Less effort to study the pictures than to read a description. Therefore, it's much more likely that people will understand the picture manual. | Easier to map the manual to the real world. E.g. which screw has to be used.| Easier to prevent errors. E.g. the picture clarifies which screw to use. It's less likely that someone will use the wrong screw. |


## Illustrations in software development
The architecture of software is not that different from the architecture of a wardrobe or another piece of furniture. Both consist of a lot of smaller parts where each small part has to fulfil its purpose. That's why if you use illustrations in your software documentation, each of the advantages from the table in the previous chapter will apply as well.
The difference between software architecture and a piece of furniture is that the software architecture is more complex. It has more layers and different life cycle states. Depending on what you want to describe, you will need a different kind of illustration. The following table shows some of the most common diagrams used in software development documentation.


| Use case model                         | Activity diagram                        | Sequence diagram                        |
| -------------------------------------- | --------------------------------------- | --------------------------------------- |
|![data flow](./go-visual/usecase.png )  |![data flow](./go-visual/activity.png )  | ![data flow](./go-visual/sequence.png ) |

| Class diagram                          | Component diagram                       | Deployment diagram                      |
| -------------------------------------- | --------------------------------------- | --------------------------------------- |
|![data flow](./go-visual/uml.png )      |![data flow](./go-visual/comp.png )      |![data flow](./go-visual/deployment.png )|  


## Sketch to understand
If you work on a software development project, you will probably face complex problems on a daily basis. 
Some common ones are: concurrency issues, async data flow, evolutionary architecture, communication to other applications or how to implement a specific part of the business logic.
Sketches can help you to understand and solve many of these issues. Let's take an example. You're a software engineer and have to implement a part of the business logic. A service that creates an overview of all your bank accounts and their credit.
The requirement for the transformation will probably be a list of rules, including how to handle different currencies and their exchange rates.
Drawing a workflow diagram and having it on paper in front of you will help you to understand the data flow and the connection between the rules. It will help you to simplify your workflow diagram. Maybe some conditions are already included in other ones and can be pruned away. Or you can simplify the workflow by changing the order in which the rules are applied.
Manual sketches are first and foremost for you. They should help you to understand a part of your software. So don't be afraid of making a mistake and crossing out part of your sketch.
In comparison to a modelling tool, manual sketching is often much faster and gives you a higher degree of freedom.
Your sketches can also be used for the system documentation. However, if you are illustrating the architecture of a piece of software that is still evolving, it is recommended to use a tool. This is because it’s much easier to adapt your illustration to new changes.

## Conclusion
Visualising your work can save you time and energy and sharpen your thoughts. All you need to do is to grab a pen and paper.
Try to sketch more often during your daily work. And next time you have to explain your system architecture to a new team member, sketch it.

*By {{page.authorName}}*
