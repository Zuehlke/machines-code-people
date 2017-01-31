# zuehlke-book

## TLDR

Contribute to this collection of articles and share you most valued opinions!

1. Propose a new article by opening an [issue](https://github.com/Zuehlke/zuehlke-book/issues/new?labels=article&title=Article:%20%3Cput%20topic%20title%20here%3E) (check for duplicates as well).
2. Fork [this repository](https://github.com/Zuehlke/zuehlke-book).
3. Create a new file `/articles/my-title.md` in the forked repository.
4. Write your article, start with the [article template](https://raw.githubusercontent.com/Zuehlke/zuehlke-book/master/articles/_example.md).
5. Link your article in the `/SUMMARY.md` file.
6. Create a pull request to get your article published.

## Vision

We create a collection of articles containing advices we'd like to share with our collegues at Zühlke and with the world of Engineering in general (e.g. potential new colleagues and customers).

We write for all engineers at Zühlke and outside of Zühlke - from professional engineers to distinguished consultants - and from future engineers to alumnis.

Through our articles, the Zühlke culture manifests itself: they contain practicaly proven concepts, best practices, cultural philosophies and great ides, they are technically interesting, they motivate you to reflect about the work and they encourage you to share your knowlege and experiences. 

## Lead Authors

The following lead authors are responsible to create, organize, administrate and moderate this book:

* Christian Abegg (@abeggchr)
* Rolf Bruderer (@bruderol)
* maybe more (to be defined)

You can contact them if you need help to get your contribution into this book.

## Contribution Guide

This section describes the process and guidelines to follow for contributing an article. Please read and follow it carefully.

### Propose and Discuss a New Article

1. **Check for duplicates:** Is there already an article about your topic?  
   * Please check our backlog of articles whether there is already an article or was planned already: https://github.com/Zuehlke/zuehlke-book/issues?q=is%3Aissue+label%3Aarticle
   * If there is already an article planned, you can contact the author and find a solution (leave the subject to the author, offer your help as reviewer or co-author, take the subject over, ...). 
   
2. **Propose a topic:**
   * Open an issue: https://github.com/Zuehlke/zuehlke-book/issues/new?labels=article&title=Article:%20%3Cput%20topic%20title%20here%3E
   * Describe roughly the idea you have in mind, what the article should be about, such that others can challenge or discuss about it.
   * Assign yourself or the ones that you want to nominate to write about this topic to the issue.

3. **Discuss about your idea:** 
   * Start to discuss with your colleagues, maybe they have some valuable input, before you start to write.
   * Discussion can be done directly on the issue, as comments.
   * Sometimes it might be a good idea to put the article idea into yammer for this purpose.

### Add the Article

We are using this Git repository, so contributing an article is as easy as contributing source code in any project. 
Every article is writen in a forked repository as a simple markdown (*.md) file.

The following steps describe how to add and write your article directly on the Github Website:

1. Fork this repository
1. Create a new file in the `\articles` folder of your forked repository
1. Paste the content of the [template file](https://raw.githubusercontent.com/Zuehlke/zuehlke-book/master/articles/_example.md) to your new file
1. Name the file something like `my-title.md`
1. Adjust `authorName` and `authorGithubUsername` at the top
1. "Commit to master" to save your file
1. Work on your article incrementaly (see also [Write the Article](#write-the-article) below)  and do more commits and pushes (this might be helpful also if you work with colleagues on the article or to get some early feedback).

When you are ready to publish:

1. Edit the `SUMMARY.md` file and link your article
1. Click on 'pull request' on the Gitub page and create a pull request

If you prefer your own text editor: feel free to use your own "clone-edit-commit-push-pull request" workflow. 
If you are not familiar with using git or github: contact one of the [Lead Authors](#lead-authors) for help.

### Write the Article

Write your article in your article's markdown file using the Markdown syntax. The syntax used is similar to the [GitHub Flavored Markdown syntax](https://guides.github.com/features/mastering-markdown/).

Your article should follow the following conventions:
* written in English
* short enough to be read in 10 minutes (minimum chars: ..., maximum chars: ...)
* reflects on a single subject only (better make several articles, if you have too much material / ideas to write about)
* matches our [Vision](#vision): it is about practicaly proven concepts, best practices, cultural philosophies or great ideas that we use in our daily work in Software Engineering Projects at Zühlke.
* the subject is related to our work and the advice concrete enough to consider.
* the subject is something you have experience on in some real projects and not just theoretical ideas

### Review and Publish

To get your article published you have to go through this review and publishing process:

1. We recommend to get feedback as early as possible. So better not hesitate to ask colleagues for feedback as early as possible.
2. When you think your article is ready to be published then make a Pull Request.
3. Find some colleagues (at least one!) that will review your article and assign him to the Pull Request.
4. Also at least one of the [Lead Authors](#lead-authors) will review your article.
5. Your colleagues will review the Pull Request and maybe give you some feedback (comments). Take the feedback serious, discuss with them and do some corrections or improvements, where needed.
6. One of the [Lead Authors](#lead-authors) will finally merge your pull request, when it is good to be published.
7. Once published, you can still correct or improve it, by doing new pull requests from your repository.
8. Do not forget to close the issue of your article, once it is published.

Althought most of the authors are not native English speakers, there is currently no translation service or lectorate foreseen.

### Oppinionated Articles and Controversial Discussions

If you find an article in progress too opinionated, then ...

* Do not forget this is an open community and that we should respect all other oppinions and be open for discussion about our ideas with each other in a resspectful kind. This is also what we want to advertise in this book, that we as Zühlke are open for our colleagues ideas and oppinions and value each other, even in controversial discussions.
* Do not hesitate to contact the author and discuss with him (e.g. on the issue of the article or for more contraversal discussions maybe face to face or via non-public communication channels)
* Do not forget that the original author was maybe writing the article with another context in mind.
* Consider to plan and write a counter article to relativate the original article or add your own view on it.
* Also relax and bare in mind that not all articles might find place in a printed edition of this collection.

## Licence

All content is licensed under the [Creative Commons Attribution Non Commercial Share Alike 4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/) license.