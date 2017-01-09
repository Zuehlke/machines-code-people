# zuehlke-book

Open Source Book about practicaly proven concepts, best practices, cultural philosophies and great ideas that we use in our daily work in Software Engineering Projects at Zühlke.

CURRENT STATUS: *We are starting with a pilot and are currently setting up the tooling. We are not yet ready for contributions.*

## Vision

We create a collection of articles containing advices we'd like to share with our collegues at Zühlke and with the world of Software Engineering in general (e.g. potential new colleagues and customers).

We write for all software engineers at Zühlke and outside of Zühlke - from professional engineers to distinguished consultants - and from future engineers to alumnis.

Through our articles, the Zühlke culture manifests itself: they are technically interesting, they motivate you to reflect about the work and they encourage you to share your knowlege and experiences. 

## Lead Authors

The following lead authors are responsible to create, organize, administrate and moderate this book:

* Christian Abegg (@chrabeg)
* Rolf Bruderer (@bruderol)
* maybe more (to be defined)

You can contact them if you need help to get your contribution into this book.

## Contribution Guide

This section describes the process and guidelines to follow for contributing an article. Please read and follow it carefully.

### Propose and Discuss a New Article

1. **Check for duplicates:** Is there already an article about your topic?  
   * Please check the existing [Table of Content](SUMMARY.md) carefully.
   * Please check the open issues whether a similar article is planned already: https://github.com/Zuehlke/zuehlke-book/issues
   * If there is already an article planned, you can contact the author and find a solution (leave the subject to the author, offer your help as reviewer or co-author, take the subject over, ...). 
   
2. **Propose a topic:**
   * Open an issue here: https://github.com/Zuehlke/zuehlke-book/issues
   * Describe roughly the idea you have in mind, what the article should be about, such that others can challenge or discuss about it.
   * Assign yourself or the ones that you want to nominate to write about this topic to the issue.

3. **Discuss about your idea:** 
   * Start to discuss with your colleagues, maybe they have some valuable input, before you start to write.
   * Discussion can be done directly on the issue, as comments.
   * Sometimes it might be a good idea to put the article idea into yammer for this purpose.

### Add the Article

We are using this Git repository, so contributing an article is as easy as contributing source code in any project.

Every article is writen in a feature branch inside this repository as a simple markdown file, as follows:

1. Fork this repository
2. Create a new feature branch for your article with following naming scheme: `feature/#<issue-number>-<title> (so e.g. `feature/#128-test-driven-requirements-engineering` just as an example)
3. Copy the template file `/articles/template/template.md` to the articles sub folder where your article belongs under a meaningful name (e.g. `articles/testing/requirements-driven-test-engineering.md`) 
     * TODO to be discussed: maybe some subfolders for common major chapter topics might make sense? (as proposed in current example) 
4. Link your article in the SUMMARY.md file in an appropriate place.
5. Commit your first draft and push to your feature branch
6. Work on your article incrementaly (see also [Write the Article](#write-the-article) below)  and do more commits and pushes (this might be helpful also if you work with colleagues on the article or to get some early feedback).
7. See later: how to get your article reviewed and merged/published

If you are not familiar with using git or github then just contact one of the [Lead Authors](#lead-authors) for help.

### Write the Article

Write your article in your article's markdown file using the Markdown syntax. The syntax used is similar to the [GitHub Flavored Markdown syntax](https://guides.github.com/features/mastering-markdown/).

Your article should follow the following conventions:
* written in English
* short enough to be read in 10 minutes (minimum chars: ..., maximum chars: ...)
* reflects on a single subject only (better make several articles, if you have too much material / ideas to write about)
* matches our [Vision](#vision): it is about practicaly proven concepts, best practices, cultural philosophies or great ideas that we use in our daily work in Software Engineering Projects at Zühlke.
* the subject is related to our work and the advice concrete enough to consider.
* the subject is something you have experience on in some real projects and not just theoretical ideas

~Replace the `author.jpg` image with an image of you. The image must be a quadratic *.jpg file and it should be in high resolution~
TODO
I think the last point about profile pictures is not needed, we can use the github profile pictures, and everybody is just responsible to set a useful github profile picture into his profile.
Later when we really make a printed form, we can check to use better pictures, if this is not good enough, but for a start I vote to go with this, to not loose time with profile pictures in the start.

### Review and Publish

To get your article published you have to go through this review and publishing process:

1. We recommend to get feedback as early as possible. So better not hesitate to ask colleagues for feedback as early as possible.
2. When you think your article is ready to be published then make a Pull Request.
3. Find some colleagues (at least one!) that will review your article and assign him to the Pull Request.
4. Also at least one of the [Lead Authors](#lead-authors) will review your article.
5. Your colleagues will review the Pull Request and maybe give you some feedback (comments). Take the feedback serious, discuss with them and do some corrections or improvements, where needed.
6. One of the [Lead Authors](#lead-authors) will finally merge your pull request, when it is good to be published.
7. Once published, you can still correct or improve it, by doing new pull requests from the feature branch.
8. Do not forget to close the issue of your article, once it is published.

### Quality Control

TODO Maybe rename to "Oppinionated Articles and Controversial Discussions" ??

If you find an article in progress too opinionated, then ...

* Do not forget this is an open community and that we should respect all other oppinions and be open for discussion about our ideas with each other in a resspectful kind. This is also what we want to advertise in this book, that we as Zühlke are open for our colleagues ideas and oppinions and value each other, even in controversial discussions.
* Do not hesitate to contact the author and discuss with him (e.g. on the issue of the article or for more contraversal discussions maybe face to face or via non-public communication channels)
* Do not forget that the original author was maybe writing the article with another context in mind.
* Consider to plan and write a counter article to relativate the original article or add your own view on it.
* Also relax and bare in mind that not all articles might find place in a printed edition of this collection.

Lectorate ?

TODO
define more quality control recommendations? or what you mean with "Lectorate"? Maybe we should list that the [Lead Authors](#lead-authors) will moderate in difficult situations and decide how to proceed with the article in question.
I thought that we should maybe even motivate to have oppinionated articles and then motivate to write a counter article if somebody disagrees for some too oppinionated articles? This might be interesting for the reader as well. I recently stumbled about a very good and nice example of such a case: "Beispielsweise raten Cem Kaner, James Bach und Bret Pettichord in "Lessons Learned in Software Testing" – einem Schlüsselwerk der Community – in Lektion 145, den IEEE-829-Standard für Testdokumentation zu verwenden. Lektion 146 auf der gleichen Seite rät dazu, IEEE 829 nicht zu nutzen. Natürlich beleuchten die Autoren die jeweiligen Umständen, unter denen der Einsatz sinnvoll ist und wo nicht." - see: https://www.heise.de/developer/artikel/Neuer-Test-Standard-ISO-29119-pro-und-contra-2429610.html
I think that is a very nice example of how to deal with such contraversial topics and that is why I added the above points about it. Is this well enough? We could also even mention that example and clarify a little bit more about this idea. What you think?

## Licence

All content is licensed under the [Creative Commons Attribution Non Commercial Share Alike 4.0](https://creativecommons.org/licenses/by-nc-sa/3.0/) license.

TODO
I am not sure whether this is a good idea to put this license here? why this license? shouldnt we keep the Copyright for us? 
and why does the link mention version 4.0 but points to version 3.0 ?
