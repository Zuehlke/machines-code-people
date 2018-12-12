---
authorName: Peter Gfader
authorGithubUsername: peitor
issue: 149
title: 'What’s wrong with: “I don’t write any tests, since I am not a tester”?'
---
# {{page.title}}

"Not a tester, so what are you then?" you might ask.  
Causing offence in this way is generally not helpful.  
Unless you are trying to attract attention, which is what I am doing in this article 😉  
Let’s digest the situation in detail.

A friend of mine attended my Scrum Developer class and became very enthusiastic during the "Testing" module where we talked about code quality, testing, test-first approaches, TDD and more.
Boom! After that class he was on a mission to convince everyone that TDD is the only way to do things.

The first day back at work he talked about improving the team and trying TDD, and was on the receiving end of the following statement from his colleague:
"I don’t write any tests, since I am not a tester".

I know he handled the situation quite well, but he asked me for advice.

One thing to consider is the underlying question to this, which might be:
"How do we get people to change their behaviour?"
So here are my thoughts.

## **Consider your own conduct first**   
First of all, think about how you deal with things yourself:
* Why is the practice or tool that you are suggesting any better than the current way of doing things?
* Can you explain the value of the proposed change?
* Can you lead by example?
* Do you have enough patience and skills to teach others?
I would try to work on yourself before trying to change others.
    
 
## **Roles?**  
I see that a lot of people are focused on their own role, forgetting the bigger picture of the team and the purpose of the work they are doing.
I would ask these questions:
* Are we one team that focuses on the Sprint Goal?
  In a Scrum context there is no “tester”, “programmer” or “architect”, we are all professional engineers who deliver value through collaboration.
* No matter what, do we stand together and support each other?
* Are we doing whatever is necessary to deliver a usable product every Sprint?
 

## **Done?**  
Colleague: "I don’t write any tests, since I am not a tester".  
Ask: "How do you know when you are done?"  
  
What is on our Definition of Done?
How can we build a usable, tested and fully integrated product increment every Sprint?
Are we doing that already? Why not?
   
   
## **Fast, automated feedback**
Tests send you a message. They send you a message now and in five years from now. They tell you:   
**Is the code working as it is expected to or not?**  
This fast feedback is very valuable if you are working on your product, whether changing it, fixing a bug or adding a new feature. 
Think of these tests as development support. They guide your development efforts and make sure your development doesn't derail, allowing you to go faster.
And the additional benefit you get in the future is an answer to the question:   
"Did we break something?"
  


## **Tests are an important kind of documentation**  
Documentation is needed, and one good way to document how software **must** work are tests. I emphasize **must**, since written documentation only documents how the software **might** work.  
We have too often learnt that documentation can easily get out of sync.  
  




## **Quality**  
Quality is everyone’s responsibility in a scrum team. There is no QA team in a scrum context, which means the whole scrum team is responsible for delivering high-quality software that works and is fully tested.  
  
Quality attributes that are important:
* Does it work at all?  
  Huh!
* Does it work well?
* Is it deployed and usable?  
  Are the users able to access it?
* Is it useful? 
* Is it successful?
* Does it make the impact we wanted to achieve?  
   -> Yes! Value is key

   
## **Tests are code**  
Are you a coder?? Yes?   
Tests are code. Don't wait for the "test automator" to test your code. It’s more efficient if you write tests that drive your production code and test your work.
With those tests you get the benefit of fast feedback and your code gets tested and checked on every push. Additionally, over time, you will know that you have not broken anything and you will be able to sleep better at night.  
  
  
  
## **Still not willing to write tests?**  
Ask: 
* How can **You** help? 
* What can You do?  
  
You can always get them coffee.
  
Show support. We are in this together.  
  
*By {{page.authorName}}*

