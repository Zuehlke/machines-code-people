---
authorName: Romano Roth
authorGithubUsername: romanoroth
issue: 7
title: CYA: Cover your ass
---
# {{page.title}}

Imagine on a Monday morning you are coming into the office start up your computer and ba-bam a manager stands beside you and tells you to follow him into a escalation meeting. 

There is a problem with the software you are building in production. In the meeting there is the CIO, your line manager, the technology line manager, the operation line manager, the central architect line manager and you. 

There is a problem with an library you have introduced one year ago in your software which is causing crashes of the software in production and the company is losing money because the users cannot work.

The managers want to know why you have chosen to use this library who has given you the sign off to use this library. 
There are now two possibilities: 

A)	You start like hmmmm, this was one year ago and hmmm, actually I don’t know, but this is not from interest now let me go and fix the problem….
very bad idea! Your screwed…

B)	You take the laptop and navigate to the list of architecture decisions, you show them the architecture decision with the evaluation and the approval. And now you say: “Can you excuse me? I have a problem to fix.”

Of course: All characters and events in this article are entirely fictional ;-).

Look I now you hate to document things and I know that you think you will remember anything. But just take my advice for your career.
Use CYA = Cover your ass. 
CYA has one simple rule: Document EVERY Decision => DED

Yes, document every decision. Wether you are a Software Architect, Business Analyst, Consultant, Engineer, Developer, Manager or a fluffy unicorn dancing on a rainbow. 

Now how are you documenting a decision? 

You are creating a decision log in a tabular form in a suitable medium (Git, wiki, SharePoint, word, excel, …).

Number: Every Decision has an id or number. Which can be referred to. 

What: What is the decision that was taken

Why: Here we document the reasoning and arguments, constraints, implications and references. 

-	Context: In this part we document the context of the decision. We give the reader some extra information, so he can understand the context of the decision. 
-	Problem: Here we document the problem or the challenge in which leads to this decision. 
-	Decision: Here we document the decision which has been made. Document here the evaluation you have done which have led to this decision.
-	Consequences: Here we document the consequences of the decision.

When: When has the decision been taken?

Who: Who was involved in taking this decision? Hint: The more people agreed on a decision the better. 

| No.| What | Why | When | Who  |
| -- | --------------------------- | --------------------------------------------------------------------| ----------------------------| --------------------------------- |
| D-1| We will use a decision log in our project | Context:<br>-	Decisions need to be documented so that everyone knows why a decision was made.<br> Problem:<br>- Not everyone remembers after a more than a year why a decision was made.<br>- Knowledge drain: People are leaving the project<br>Decision:<br>- We will introduce a decision log.<br>Consequences:<br>- Every decision is documented in the decision log|01.01.2020 | Hans Muster Simon Stucki|

What happens if a decision is revoked? Strikethrough the decision and define a new decision where you document why the decision No. X has been revoked. 

CYA = Cover your ass will make your life easy and everybody in your team will know where to look to see why a decision was taken so that you can move to the next project without being hunted by unknown old decisions from the past. 


*By {{page.authorName}}*

