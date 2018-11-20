---
authorName: Rolf Bruderer
authorGithubUsername: bruderol
issue: 31
title: Rules are Dangerous
---
# {{page.title}}

Rules followed blindly in a dogmatic way do a lot of harm. This is an uncomfortable truth especially for us as engineers. As such we are used to see the world in rigid rules, true and false, if and else. We like to have crystal clear and exact definitions, guidelines or best practices on how to do something. This is not bad in the first place. But we all must be very careful that we do not fall into the trap of just following such rules blindly without thinking well about consequences. 

## Examples of Rules from Software Projects

Here are some examples of rules in Software Engineering that I have seen to cause troubles in projects:
* The famous rule “working software over comprehensive documentation" from the agile manifesto is often used as an excuse not to write any documentation and deny putting any effort into it. In the long run this is not very helpful in the context of a complex software system where a minimal and helpful documentation is needed to efficiently maintain, extend or operate these systems. Not to write any documentation at all was probably not the intention of the authors of the agile manifesto. 
* The dependency inversion principle says “Abstractions should not depend on details. Details should depend on abstractions". I have seen projects that tried to follow this principle very strictly and everywhere in their software. They therefore totally avoided to use any concrete class directly as much as possible. As a result, there were a lot of interfaces with only one implementation class each and many factories to create instances of those classes. This resulted in a code base that is much more complex than needed. It makes the software difficult to understand and maintain without bringing any benefit of really needed flexibility into that software.
* People read the book about “Clean Code” that says that many code comments can be avoided by writing self-explaining code instead. While this is true for many cases the rule is often miss-used by developers for arguing not to write any comments at all in the source code. But there are many things that you cannot explain by using good method or variable names only. E.g. why you had to implement something like that. For this purpose, good comments are still very valuable and should not be denied. I would say that a well put comment can explain much more than hundred good variable names.
* The article by Martin Fowler about the “Page Object Pattern” once said to never put assertions into page objects. Someone read that article and wanted to convince the whole project team that it is very important to follow this rule very strictly. The arguments for the rule in the blog post were not very convincing to me. I brought up many examples where breaking that rule caused much more benefit than sticking to it. Nevertheless I was not taken serious. Since Martin Fowler wrote it, it counts as if it was written in the bible. Nobody wanted to constructively argue about it anymore. Fun fact: In the meantime Martin Fowler changed his article to mention both opinions on this topic. This at least let’s the option open to the reader to decide what fits best in his concrete context. Unfortunately, not all famous technical opinion makers are so wise as Mr. Fowler.

Please, do not get me wrong: I like the Agile Manifesto, the SOLID Principles, Clean Code, Martin Fowler in general and even his article about the Page Object Pattern. Those are all practices I appreciate a lot and that influenced my way of thinking and working. But still all these things also come with the danger of undesired side-effects, if just following them blindly in a dogmatic way.

## The Problems with Rules

The problems I often see in projects with such rules:
* Applying rules in the wrong context might not have the desired effect at all
* Using rules stricter than meant to be, causes adverse effects
* Applying rules without really understanding them can result in more harm to the project than benefits
* Treating rules as god given, causes people not to reason about these rules anymore. This can cause a destructive discussion culture and lead to bad decisions without real arguments.

## Conclusion and Recommendations

Here are my recommendations on how to mitigate the problems with such rules in your projects:

* We all must be always willing to explain ourselves, why we do something like that and what are the arguments to apply a rule in which context. Something like “just because our process manual says so” or “because I’ve read it in that article” is usually not a good answer.
* Don’t try to replace critical thinking and adaptive methods by exact and rigid rules that people must follow strictly. 
* Do not read my recommendations here in a dogmatic way. Which would be: “Rolf said rules are bad and harmful, so let’s trash all our rules in our project and don’t follow the scrum guide, our Definition of Done, Clean Code and similar things anymore”. This was not my message at all! 
* Instead: Discuss, write down and live these rules in your Team, but see it more as a guide than exact rules to be 100% precisely followed in any case.
* Note down not just the rules you use in your project but also the arguments why a rule should be applied. 
* Be open to discuss and reexplain rules in your projects with your team members and to adjust the rules to changes in the context (e.g. growing software, growing team, shorter release cycles, different team members, new ideas, etc.)
* Be critical to existing rules, but also respect and try to understand them in a first place.

Also remember this when reading all the other articles in this book from my brilliant coworkers! 
There are many great rules and ideas in these articles that will help you a lot when applied wisely in the right context.

{% include "./rules-are-dangerous.resources.md" %}
  
*By {{page.authorName}}*
