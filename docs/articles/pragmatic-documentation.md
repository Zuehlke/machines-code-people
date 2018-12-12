---
authorName: Ognjen Blagojević
authorGithubUsername: ognjen-blagojevic-zuehlke
issue: 86
title: Pragmatic documentation
---
# {{page.title}}

Writing documentation is a task that most programmers find tiresome. The pattern I see is that they are asked to write documentation without understanding:
* for whom the documentation is being written
* why the documentation is being written
* how the documentation should be written
* where the documentation is written

By asking yourself these questions, the documentation can end up having a completely different form than originally expected.

## For whom is the documentation being written?
  
With regard to the first question - _For whom am I writing this documentation?_ - you should have a clear answer before you even start writing. Sometimes these are particular people you know, sometimes they are existing users that you don't know, and sometimes it is not yet known who the readers will be.

If you have access to at least some of the people who will read your documentation, talk to them about the documentation you are writing. Explain to them that you are doing something they should use and that you want to do it in the best possible way. They will surely help you, because it is in their interest. After all, they are the ones who will eventually read the documentation.

If your users are not yet known, it's best to try to imagine a future reader and try to put yourself in his/her shoes. It's not always easy, but thinking from the perspective of other readers - albeit fictitious - will help you decide what to write.

## Why is the documentation being written?

To the second question - _Why?_ - the answer is: to explain to the reader things they don't know. Remember this. If you explain to the reader what they already know, your documentation will be boring and will not be read. It is therefore important that you understand what the reader does not know before starting to write the documentation. If the intended audience have varying degrees of background knowledge, this makes things a bit more complicated. You need to know which things most of your readers don't know, and which only certain individuals don't, and organize the documentation accordingly.

## How should the documentation be written?

When you have answers to the questions for whom and why you are writing documentation, the third question - _How to write it_ - can be a little easier to answer. Put yourself in the role of a person who needs help. Why? Because, people value their own time. They try to be efficient, and prefer to switch to action as soon as possible, instead of reading up front about what to do and how to do it. Therefore, most of the people won't even read the documentation until they need help. Try to imagine a very concrete thing that your reader might fail to do or fail to understand by themselves. If you already have potential future readers, you can create a list of questions for which they would like to have an answer. It is good if the questions are very specific, e.g.:

1. How do I add a new user who is simultaneously in Role A and Role B?
2. Does the magnifying glass mean a search of data or a detailed overview?
3. How do I recover the object that I just deleted?

If the short answers to the collected questions are sufficient for your readers, then write them down, and call the documents FAQ or Q&A or something like that. 

Sometimes, the gathered questions might indicate that there is something that could be done better regarding the user interface. For the three questions stated above, you could, instead of writing answers, actually create UI changes that will naturally lead the user to the answer (a principle known in UI design as "Don't make me think"), e.g.:

1. Instead of the label "Role", use "Role(s)", and when the user adds one role, immediately display a plus sign (+) to indicate that more roles can be added.
2. Add "Search" as tooltip text to the magnifier glass icon.
3. After deletion, open an (unintrusive) infobox informing the user of the procedure for undeleting an object.

Often, through the questions of future readers, you will understand that the problem is that the reader lacks some knowledge to understand your answer. In that case it will be necessary to help them acquire that knowledge. One way is to add introductory chapters in which you explain the necessary concepts. Other way is to provide links in your documentation where the reader can supplement their knowledge.

When you have a text in which you explain the concepts, links to external materials, and the answers to questions that are troubling your readers, you should use this material to group and organize documentation so that it has a logical and easily understandable structure. As with programming, try to adhere to the principle of least surprise, that is, try to put each chapter in the place where most of the readers would expect to find it.

## Where is the documentation written?

The final question: _Where should you publish the documentation?_ Answer: Where most readers will look first. Help to log on to the system should be located as a link on the Login page. Help for compiling and running an application can be a file (for example, RUNNING.md) in the root of your project. Help for certain functionality of your software is best if it can be available in the user interface where this functionality is (see previously given example for undelete), and HowTo article for DevOps - on the corporate wiki / knowledge base.

So, the methodology is always the same - putting yourself in the reader's shoes. It is a powerful technique that can be used in various business and private situations, and is especially useful when writing documentation.

*By {{page.authorName}}*
