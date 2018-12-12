---
authorName: Rolf Bruderer
authorGithubUsername: bruderol
issue: 31
title: Rules are dangerous
---
# {{page.title}}

Rules followed blindly in a dogmatic way do a lot of harm. This is an uncomfortable truth especially for us, as engineers. As such we are used to looking at the world in terms of rigid rules, true and false, if and otherwise. We like to have crystal clear and exact definitions, guidelines or best practices on how to do something. This is not a bad thing in itself. But we all must be very careful that we do not fall into the trap of just following such rules blindly without giving careful thought to consequences. 

## Examples of rules from software projects

Here are some examples of rules in software engineering that I know from experience can cause troubles in projects:
* The famous rule “working software over comprehensive documentation" from the agile manifesto is often used as an excuse not to write any documentation and deny putting any effort into it. In the long run this is not very helpful in the context of a complex software system where a minimal and helpful documentation is needed to efficiently maintain, extend or operate these systems. Not to write any documentation at all was probably not the intention of the authors of the agile manifesto. 
* The dependency inversion principle says “Abstractions should not depend on details. Details should depend on abstractions". I have seen projects that tried to follow this principle very strictly and everywhere in their software. They therefore totally avoided directly using any concrete class as much as possible. As a result, there were a lot of interfaces with only one implementation class each and many factories to create instances of those classes. This resulted in a code base that is much more complex than needed. It makes the software difficult to understand and maintain without bringing any benefit of much- needed flexibility into that software. 
* People read the book about “Clean Code” that says that many code comments can be avoided by writing self-explaining code instead. While this is true for many cases, the rule is often misused by developers for arguing that they do not need to write any comments at all in the source code. But there are many things that you cannot explain by using good method or variable names only, e.g. why you had to implement something like that. For this purpose, good comments are still very valuable and should not be denied. I would say that a well-expressed comment can explain much more than a hundred good variable names.
* An article by Martin Fowler about the “Page Object Pattern” stated that one should never put assertions into page objects. Someone read that article and wanted to convince the whole project team that it was very important to follow this rule very strictly. The arguments for the rule in the blog post were not very convincing to me. I brought up many examples where breaking that rule caused much more benefit than sticking to it. Nevertheless, I was not taken seriously. Because it was written by Martin Fowler, it counted as if it was written in the bible. Nobody wanted to constructively argue about it anymore. Fun fact: in the meantime, Martin Fowler changed his article to mention both opinions on this topic. This at least leaves the option open to the reader to decide what works best in their concrete context. Unfortunately, not all famous technical opinion-makers are as wise as Mr. Fowler.

Please, do not get me wrong: I like the Agile Manifesto, the SOLID Principles, Clean Code, Martin Fowler in general, and even his article about the Page Object Pattern. Those are all practices that I appreciate a great deal and that have influenced my way of thinking and working. But, nevertheless, all these things also come with the danger of undesired side-effects, if they are just followed blindly in a dogmatic manner.

## The problems with rules

The problems I often see in projects with such rules are as follows:
* Applying rules in the wrong context might not have the desired effect at all
* Using rules more strictly than they were intended to be used causes adverse effects
* Applying rules without really understanding them can result in more harm than good to the project 
* Treating rules as God-given, causes people not to reason about these rules anymore. This can cause a destructive discussion culture and lead to bad decisions without real arguments.

## Recommendations

Here are my recommendations on how to mitigate the problems with such rules in your projects:

* We must all be always willing to explain ourselves, why we do something in a particular way and what the arguments are for applying a rule in a particular context. Something like “just because our process manual says so” or “because I’ve read it in that article” is usually not a good answer.
* Don’t try to replace critical thinking and adaptive methods with exact and rigid rules that people must follow strictly. 
* Do not read my recommendations here in a dogmatic way. Doing so would be to conclude: “Rolf said rules are bad and harmful, so let’s trash all the rules in our project and not follow the Scrum Guide, our Definition of Done, Clean Code and similar things anymore”. This was not my message at all! 
* Instead: Discuss, write down and live these rules in your team, but see them more as a guide than as precise rules to be 100% rigidly followed in every case.
* Note down not just the rules you use in your project, but also the arguments why a rule should be applied. 
* Be open to discussing and re-explaining rules in your projects with your team members and to adjusting the rules to changes in the context (e.g. growing software, growing team, shorter release cycles, different team members, new ideas, etc.)
* Be critical of existing rules, but also respect and try to understand them in the first place.

## Conclusion

There are a lot of clever rules or ideas out there on the World Wide Web, in books, in courses or in your projects, as well as in this collection of articles by my brilliant co-workers. Such rules can help you when applied wisely in the right context. But don't let your teams suffer from dictatorship by dogmatic rules and therefore follow my recommendations.

{% include "./rules-are-dangerous.resources.md" %}
  
*By {{page.authorName}}*
