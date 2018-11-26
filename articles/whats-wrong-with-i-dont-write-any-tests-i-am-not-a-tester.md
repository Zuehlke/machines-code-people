---
authorName: Peter Gfader
authorGithubUsername: peitor
issue: 149
title: 'What’s Wrong With: “I don’t write any tests since I am not a tester”?'
---
# {{page.title}}

"Not a tester, so what are you then?" you might ask.  
Being that offending is generally not helpful.  
Unless you try to catch the attention as I do in this article 😉  
Let’s digest the situation in detail.

A friend of mine attended my Scrum Developer class and caught fire during the "Testing" module where we talk about Code Quality, Testing, Test-First approaches, TDD and more.
Boom! After that class he was on a mission to convince everyone that TDD is the only way to do things.

The 1st day back at work he talked about improving the team and trying TDD and got the following statement from his colleague:
"I don’t write any tests since I am not a tester".

I know he handled the situation quite well, but he asked me for advice.

One thing to consider is the underlying question to this, which might be:
"How do we get people to change their behavior?"
So here are my thoughts.

## **Yourself First**   
First of all, think about things to consider for yourself:
* Why is the practice or tool that you are suggesting any better than the current way of doing things?
* Can you explain the value in the proposed change?
* Can you lead by example?
* Do you have enough patience and skills to teach others?
I would try to work on yourself before trying to change others.
    
 
## **Roles?**  
I see that a lot of people are focused on their role, forgetting the bigger picture of the team and purpose of the work they are doing.
I would ask these questions:
* Are we one team that focuses on the Sprint Goal?
  In a Scrum context there is no “tester”, “programmer” or “architect”, we are all professional engineers that deliver value through collaboration.
* No matter what, do we stand together and support each other?
* Are we doing whatever is necessary to deliver a usable product every Sprint?
 

## **Done?**  
Colleague: "I don’t write any tests since I am not a tester".  
Ask: "How do you know when you are done?"  
  
What is on our Definition of Done?
How can we build a usable, tested and fully integrated product increment every Sprint?
Are we doing that already? Why not?
   
   
## **Fast Automated Feedback**
Tests send you a message. They send you a message now and in 5 years from now. They tell you:   
**Is the code working as it is expected or not?**  
This fast feedback is very valuable if you are working on your product, either by changing it, fixing a bug or by adding a new feature. 
Think of these tests as development support. These tests guide your development efforts and make sure your development doesn't derail and lets you go faster.
And the additional benefit you get in the future is the answer to the question:   
"Did we break something?"
  


## **Tests are an important kind of documentation**  
Documentation is needed, and one good way to document how software **must** work are tests. I emphasize **must**, since written documentation only documents how the software **might** work.  
We learned too often that documentation gets out of sync too easily.  
  




## **Quality**  
Quality is everyone’s responsibility in a Scrum Team. There is no QA Team in a Scrum context, which means the whole Scrum team is responsible for delivering high quality software that works and is fully tested.  
  
Quality attributes that are important:
* Does it work at all?  
  Huh!
* Does it work well?
* Is it deployed and use-able?  
  Are the users able to access it?
* Is it useful? 
* Is it successful?
* Does it make the impact we wanted to achieve?  
   -> Yes! Value is key

   
## **Tests are code**  
Are you a coder?? Yes?   
Tests are code. Don't wait for the "Test Automator" that tests your code. Its more efficient if you write tests that drive your production code and test your work.
With those tests you get the benefit of fast feedback and your code gets tested and checked on every push. Additionally over time you will know you have not broken anything and now you can sleep better at night.  
  
  
  
## **Still not willing to write tests?**  
Ask: 
* How can **You** help? 
* What can You do?  
  
You can always get them coffee.
  
Show support. We are in this together.  
  
*By {{page.authorName}}*

