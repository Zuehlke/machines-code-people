---
authorName: Romano Roth
authorGithubUsername: romanoroth
issue: 72
title: 'CYA: Cover your ass'
---
# {{page.title}}

Imagine on a Monday morning you come into the office, start up your computer and ba-bam a manager is standing beside you, telling you to follow him into a escalation meeting. 

There is a problem with the software you are building in production. In the meeting there is the CIO, your line manager, the technology line manager, the operation line manager, the central architect line manager and you. 

There is a problem with a library you introduced into your software a year ago, which is causing crashes of the software in production and the company is losing money because the users cannot work.

The managers want to know why you have chosen to use this library and who gave you the sign off to use this library. 
There are now two possibilities: 

A)	You start like hmmmm, this was a year ago and hmmm, actually I don’t know, but this is not of interest now, let me go and fix the problem….
very bad idea! You're screwed…

B)	You take the laptop and navigate to the list of architecture decisions, you show them the architecture decision with the evaluation and the approval. And now you say: “Can you excuse me? I have a problem to fix.”

Of course: All characters and events in this article are entirely fictional ;-).

I know you hate to document things and I know that you think you will remember everything. But just take my advice for your career.
Use CYA = Cover your ass. 
CYA has one simple rule: Document EVERY Decision => DED

Yes, document every decision. Whether you are a Software Architect, Business Analyst, Consultant, Engineer, Developer, Manager or a fluffy unicorn dancing on a rainbow. 

So, how do you document a decision? 

You create a decision log in a tabular form in a suitable medium (Git, wiki, SharePoint, Word, Excel, …).

Number: Every Decision has an id or number. Which can be used as a reference. 

What: What is the decision that was taken

Why: The reasoning and arguments, constraints, implications and references. 

-	Context: In this part, we document the context of the decision. We give the reader some extra information, so he/she can understand the context of the decision. 
-	Problem: The problem or the challenge giving rise to this decision. 
-	Decision: The decision that is made. Document the evaluation you have done that has led to this decision here.
-	Consequences: The consequences of the decision.

When: When was the decision taken?

Who: Who was involved in taking this decision? Hint: The more people who agreed on a decision the better. 

| No.| What | Why | When | Who  |
| -- | --------------------------- | --------------------------------------------------------------------| ----------------------------| --------------------------------- |
| D-1| We will use a decision log in our project | Context:<br>-	Decisions need to be documented so that everyone knows why a decision was made.<br> Problem:<br>- Not everyone remembers after more than a year why a decision was made.<br>- Knowledge drain: People leave the project<br>Decision:<br>- We introduce a decision log.<br>Consequences:<br>- Every decision is documented in the decision log|01.01.2020 | Hans Muster Simon Stucki|

What happens if a decision is revoked? Strikethrough the decision and define a new decision, where you document why decision No. X was revoked. 

CYA = Cover your ass will make your life easy and everybody in your team will know where to look to see why a decision was taken, so that you can move on to the next project without being haunted by unknown old decisions from the past. 

*By {{page.authorName}}*