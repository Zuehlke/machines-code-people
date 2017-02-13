# Zühlke Book

This is still a working title - ideas for better titles appreciated: see [Find a title](https://github.com/Zuehlke/zuehlke-book/issues/14).

*CURRENT STATUS:  
This project is still in progress to setup, content is not yet ready for publishing, but first pilot articles can be contributed.*

## TLDR - Basic Process to Contribute

Contribute to this collection of articles and share you most valued experiences:

1. Propose a new article by opening an [Issue in our Backlog](https://github.com/Zuehlke/zuehlke-book/issues/new?labels=article&title=Article:%20%3Cput%20topic%20title%20here%3E).  
Please check before that there is no similar article yet in the [Backlog](https://github.com/Zuehlke/zuehlke-book/issues?q=is%3Aopen+is%3Aissue+label%3Aarticle).

2. Create a new article file `/articles/my-article-title.md` in a fork of this repository:  
 [You can simply use this link](https://github.com/Zuehlke/zuehlke-book/new/develop/articles).

3. Use content of [Example Article as Template](https://raw.githubusercontent.com/Zuehlke/zuehlke-book/master/articles/_example.md) to write your article.

4. Link your article in the `/SUMMARY.md` file on your fork.

5. Create a pull request to get your article reviewed.

6. Assign it to one of the [Lead Authors](#lead-authors) for publishing.

*Not experienced with using git or github or markdown syntax or having problems?*  
Just read our more detailed [Contribution Guide](#contribution-guide) for how to work with git and this repo or contact one of the [Lead Authors](#lead-authors) in case of problems to help you.

In any case we recommend to follow all our detailed guidelines in this readme file.

## Vision

We create a collection of articles containing advices we'd like to share with our collegues at Zühlke and with the world of Engineering in general (e.g. potential new colleagues and customers).

We write for all engineers at Zühlke and outside of Zühlke - from professional engineers to distinguished consultants - and from future engineers to alumnis.

Through our articles, the Zühlke culture manifests itself: they contain practicaly proven concepts, best practices, cultural philosophies and great ides, they are technically interesting, they motivate you to reflect about the work and they encourage you to share your knowlege and experiences. 

## Lead Authors

The following lead authors are responsible to create, organize, administrate and moderate this book:

* Christian Abegg (@abeggchr)
* Rolf Bruderer (@bruderol)
* maybe more later (to be defined)

You can contact them if you need help to get your contribution into this book.

## Contribution Guide

This section describes the process and guidelines to follow for contributing an article in all details with additional explanations. Please read and follow it carefully.

### Prerequisites

1. Get a Github Account if you not yet have one
   
2. Make sure you are properly registered as a public member of the "Zühlke Github Community":
    * Follow these instructions: https://github.com/Zuehlke/core/issues/6
    * If you can not access this issue: 
      * send your github username to one of the admins, e.g. Rolf Bruderer
      * after you received the invitation, accept it
      * then proceed as described on https://github.com/Zuehlke/core/issues/6
      
    
### Propose and Discuss a New Article

1. **Check for Duplicates:** Is there already an article about your topic?
  
   * Please check our [Backlog of Articles](https://github.com/Zuehlke/zuehlke-book/issues?q=is%3Aissue+label%3Aarticle) whether there is already an article existing or planned for similar topic. 
  
   * If there is already a similar article, you can contact the author and find a solution (leave the subject to the author, offer your help as reviewer or co-author, take the subject over, or write a second article in response or extension to the first article, ...). 
   
2. **Propose a Topic:**
  
   * Open a [New Issue for your Article](https://github.com/Zuehlke/zuehlke-book/issues/new?labels=article&title=Article:%20%3Cput%20topic%20title%20here%3E)
  
   * Describe roughly the idea you have in mind, what the article should be about, such that others can challenge or discuss about it.
  
   * Assign yourself or the ones that you want to nominate to write about this topic to the issue.

3. **Discuss about your idea:** 
  
   * Start to discuss with your colleagues, maybe they have some valuable input, before you start to write.
  
   * Discussion can be done directly on the issue, as comments.
  
   * Sometimes it might be a good idea to put the article idea into yammer for this purpose.

### Add the Article

We are using this Git repository, so contributing an article is as easy as contributing source code in any project. Every article will be written in your personal fork of the repository as a simple markdown (*.md) file and reviewed and published by using Pull Requests. 

If this sounds complicated to you, just carefully follow these very easy steps to create a new article directly on the github web page:

  * Use this link to [create new article file in article directory on a fork](https://github.com/Zuehlke/zuehlke-book/new/develop/articles)

  * Enter a unique name for your article file, in kebap style, Example: `my-funny-article.md`
    
  * Copy content of [Article Example as template to start with](https://raw.githubusercontent.com/Zuehlke/zuehlke-book/develop/articles/_example.md).
    
  * Write initial article version (no worries, it does not have to be perfect or finished yet!).
    
  * Adjust `authorName` and `authorGithubUsername` at the top of the file
    
  * Commit the new file: Please use the issue number prefixed with `#` in the commit comment, before submitting the new file, e.g. `#15 initial version of My Funny Article`.
    
  * Submit the new article as a pull request, such that others can already see your draft and could start to give feedback on it: again use the issue number of your article prefixed with `#` and followed by the article name as a name for the pull request, e.g. `#15 My Funny Article`. 
  
  * Continue to work on your article incrementally on your fork, as described in next section: [Write the Article](#write-the-article).

If you prefer your own text editor: feel free to use your own "clone-edit-commit-push"- workflow with your local git client.

### Write the Article

You can work on your article in your personal forked repo, which you will find in your personal github repositories after you followed the steps as described in [Add the Article](#add-the-article).

**How to finalize your article:**

  * In all your commits you should use the issue number of your article prefixed with `#` .  
   Example: `#15 add article to Table of Content`.
      
  * Link your article in the `/SUMMARY.md` file on your fork.

  * Write your article in your article's markdown file using the Markdown syntax.  
   The syntax used is similar to the [GitHub Flavored Markdown Syntax](https://guides.github.com/features/mastering-markdown/).

**Conventions / Guidelines for Article Content:**

* written in English

* short enough to be read in 10 minutes: size should be less than 2 A4 pages long in printout PDF version.

* reflects on a single subject only (better make several articles, if you have too much material / ideas to write about)

* matches our [Vision](#vision): it is about practicaly proven concepts, best practices, cultural philosophies or great ideas that we use in our daily work in Software Engineering Projects at Zühlke.

* the subject is related to our work and the advice concrete enough to consider.

* the subject is something you have experience on in some real projects and not just theoretical ideas

### Review and Publish

To get your article published you have to go through this review and publishing process:

1. Open a pull request with your article to get it reviewed and receive and discuss feedback (if not already done right from the start when you added the article, which we recommend to get feedback as early as possible).

2. Find some colleagues (at least one!) that will review your article and assign him to the Pull Request.

3. Assign your Pull Request to one of the [Lead Authors](#lead-authors) for final review and publication.

4. Your colleagues will review the Pull Request and maybe give you some feedback (comments). Take the feedback serious, discuss with them and do some corrections or improvements, where needed.

5. The assigned lead author will finally merge your pull request, when all the review comments are resolved.

6. Once published, you can still correct or improve it, by doing new pull requests from your fork of the repository.

7. Do not forget to close the issue of your article, once it is published.

### Oppinionated Articles and Controversial Discussions

If you find an article in progress too opinionated or controversial, then ...

* Do not forget this is an open community and that we should respect all other oppinions and be open for discussion about our ideas with each other in a resspectful kind. This is also what we want to advertise in this book, that we as Zühlke are open for our colleagues ideas and opinions and value each other, even in controversial discussions.
* Do not hesitate to contact the author and discuss with him (e.g. on the issue of the article or for more controversial discussions maybe better face to face or via non-public communication channels)
* Do not forget that the original author was maybe writing the article with another context in mind.
* Consider to plan and write a counter article to pick up the point where you disagree with the original article or add your own view or aspect concerning that topic.
* We motivate to also write about controversial topics and in some cases it might even make sense to have two articles, one with the arguments pro, another with the arguments contra. See also following example: in the book "Lessons Learned in Software Testing" there are two articles, one that recommends using the "IEEE-829-Standard" and right on the next page there is the next article that recommends to not use this standard (this was mentioned in https://www.heise.de/developer/artikel/Neuer-Test-Standard-ISO-29119-pro-und-contra-2429610.html).
* If you can not agree on a topic and there is a conflict that you think needs some help with resolution, you can contact the [Lead Authors](#lead-authors), they will try to moderate in the conflict situation and help you to decide how to proceed with the article(s) in question.
* Also relax and bare in mind that not all articles might find place in a printed edition of this collection.

## Licence

All content is licensed under the [Creative Commons Attribution Non Commercial Share Alike 4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/) license.