---
authorName: Wolfgang Giersche
authorGithubUsername: smurve
issue: 55
title: When machine learning meets software engineering
---
# {{page.title}}

Software engineering (SWE) and machine learning (ML) have recently become neighbours in academics as well as in professional services. They are so closely adjacent, indeed, that some authors dare to conclude that SWE and ML are simply different ways to achieve the same result, at least within the boundaries of particularly well-defined problems such as rule-centred functional problems, for example. The thinking goes like this:

1.	Software developers encode domain knowledge into explicit, executable rules, such as if-then statements. ML practitioners, on the other hand, take a sufficient number of input data examples and attach the intended results as so-called labels. Hence: labelling is the new programming.

2.	Software developers compile their software artefacts to create executable binaries. ML practitioners automatically adjust the thousands or even millions of parameters of a chosen standard algorithm until that algorithm returns the intended output for their labelled input data. This so-called training procedure is the new compilation.

3.	Software developers (hopefully) write a lot of tests to prove correctness and provide a stability harness for their code. ML practitioners closely observe key statistical properties of their input and output data.

It should be obvious from the above, though, that we intentionally ignore the not so subtle differences that are still relevant if you want to understand the whole picture. For example, machine learning cannot (yet) be used to devise or even create attractive and effective user interfaces; and rule-based systems, such as those to transcribe human speech for example, can no longer catch up with the performance of modern neural networks. So, there are differences. There is room for both professional practices. 

And to meet the modern consumer's ever-growing appetite for smart applications, practitioners of both fields need to unite. Unfortunately, this sometimes turns out to be not so easy as the naive observer might expect. Indeed, if you think back, the difficulties should not even come as a surprise. If you are a seasoned developer, you may remember hearing sentences like “I’m a software developer, not a database admin” or “I’m a software developer, not a system operator”. If you are new to the field, though, you may not have heard any such thing, and the reason is probably that there is already a cure for this problem. It’s called DevOps and it appears to be a very satisfactory common field for all participants; that's probably why they met there in peace. DevOps has effectively managed to unite software engineering and the classical related fields. 

Nowadays you may hear “I’m a data scientist, not a software engineer”. While that may be perfectly accurate, the need to emphasize the fact unfortunately implies the claim: “I don’t need to care what it takes to use my results in production”. On the other side, typical enterprise developers faced with the need to understand, write or simply integrate Python code find it hard to overcome their acquired resentment towards scripting languages. 

The point is that data science, being exploratory by nature, requires an extremely expressive, interpreted language to effectively deal with the underlying uncertainty. Python has become the most popular language choice precisely because of its unrivalled expressiveness. Since the problem space is mostly of a functional nature, object-oriented design is rarely applied.
Enterprise software development, on the other hand, typically deals with critical applications embodying deterministic complexity. And developers need to consider the fact that their systems need to be changed frequently, while a high-quality level must be maintained at all times. That almost certainly mandates a strongly typed, compiled language and some form of object-oriented design.

So, when we now hear people saying things like “I’m a data scientist, not a software engineer” (imagine the associated disgusted facial expression...), we can either wait for someone to come up with another buzzword like DevLearn or MLDev - or rather simply remind ourselves that we’re all on the same mission: to deliver ever better, smarter solutions to our clients and their respective customers. By simply embracing diversity in both technical choices and practices and saving a good lump of openness and curiosity for our professional neighbours, we software engineers and machine learning practitioners can meet as friends and prosper!


*By {{page.authorName}}*

