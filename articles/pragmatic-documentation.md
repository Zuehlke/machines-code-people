---
authorName: Ognjen Blagojević
authorGithubUsername: ognjen-blagojevic-zuehlke
issue: 86
title: Pragmatic documentation
---
# {{page.title}}

Writing documentation is a task that most programmers find
tiresome. The pattern I see is that they are asked to write documentation 
without understanding:
* for whom is this documentation written
* why is this documentation written
* how is this documentation written
* where is this documentation written


## For whom is this documentation written?
  
The first question - _Whom do I write for this documentation?_ - you should
have a clear answer before you even start writing. Sometimes these are exactly
certain people you know, sometimes they are existing users that you don't 
know, and sometimes it is not yet known who the readers will be.

If you are able to reach at least a certain portion of people who will read
your documentation, talk to them about the documentation you are
writing. Explain to them that you are doing something they should use and that
you want to do it in the best possible way. It will surely help you, because
it is in their interest. After all, they are the ones who will eventually read
the documentation.

If your users are not yet known, it's best to try to imagine a future reader
and try to put yourself in his/her shoes. It's not always easy, but thinking
from the perspective of other readers -- albeit fictitious -- will help you
decide what to write.

## Why is this documentation written?

To the second question - _Why?_ - The answer is as follows: to explain to the
reader what he dosn't know. Remember this. If you explain to the reader what
he already knows, your documentation will be boring and will not be read. It
is therefore important that you understand what the reader does not know
before starting to write the documentation. If the intended audience have
different background knowledge, this makes things a bit more complicated.
You need to know which
things most of your readers do not know, and which only individuals don't,
and accordingly organize the documentation.

## How is this documentation written?

When you have answers to the questions for who and why you are writing
documents, the third question - _How to write it?_ -
can be a little easier to answer. Put yourself in
the role of a person who needs of help. Why? Because, people value their own
time. They try to be efficiant, and prefer to start using product or service,
as soon as possible, instead of reading up front how they suppose to use it.
Therefore, most of the people will won't evenr read the documentation
until they need help. Put yourself as a user and try to
imagine a very concrete thing that he fails to do or fails to
understand by himself. If you already have existing users, you can create
a list of questions that they would like to have an answer. It is good if the
questions are very specific, e.g.:

1. How do I add a new user who is simultaneously in Role A and Role B?
2. Does the magnifying glass mean a search of data or a detailed overview?
3. How do I recover the object that I just deleted?

If the short answers to the collected questions are sufficient for your
users, then write them down, and call the documents FAQ or Q & A or something
like that. 

Sometimes the gathered questions would indicate that there is something that 
could be done better regarding user interface. For three previously stated
questions, you could, instead of writing answers, actually create UI changes
that will naturally lead user to the answer (principle known in UI design as
"Don't make me think"), e.g.:

1. Instead of "Role" label, use "Role(s)", and when user add one role,
immediately show visible plus sign (+) to indicate that more roles can be 
added.
2. Add tooltip text "Search" for magnifier glass icon.
3. After deletion open an (unitrusive) infobox informing user what is the
procedure to undelete an object.

Often, through the questions of future readers, you will understand that the
problem is that the reader lacks some knowledge in order to understand your
answer, in which case it will sometimes be necessary to help him acquire that
knowledge. One way is to add introductory chapters in which you will explain
the necessary concepts. Other way
is to provide links in your documentation where the reader can supplement his
knowledge.

When you have a text in which you explain the concepts, links to external
materials, and the answers to questions that are troubling your users, you
will use this material to group and organize documentation so that it has a
logical and easily understandable structure. As with programming, try to
adhere to the principles of least surprise, that is, to put each chapter in
the place where most of the users first search it.

## Where is this documentation written?

Final question: _where to publish the documentation?_ Answer: Where most readers
will first look. Help to log on to the system should be located as a link on
the Login page. Help for compiling and running an application can be a file
(for example, RUNNING.md) in the root of your project. Help for certain
functionality in your software is best if it can be available to the user
interaface where this functionality is (see previously given example for 
undelete), and HowTo article for DevOps - on the
corporate wiki / knowledge base.

So, the methodology is always the same -- putting yourself in eader's
shoes. It is a powerful technique that can be used in various business and
private situations, but one of the best uses, in my opinion, is exatcly --
writing documentation.

*By {{page.authorName}}*

