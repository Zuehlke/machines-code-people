# Contribution Guide using Github

This guide describes the process and the conventions for contributing an article using the tools provided by GitHub.

## Prerequisites

1. Get a Github Account if you not yet have one
   
2. Make sure you are properly registered as a public member of the "Zühlke Github Community":
    * Follow these instructions: https://github.com/Zuehlke/core/issues/6
    * If you can not access this issue: 
      * send your github username to one of the admins, e.g. Rolf Bruderer
      * after you received the invitation, accept it
      * then proceed as described on https://github.com/Zuehlke/core/issues/6
    
## Announce

1. **Check for Duplicates:** Is there already an article about your topic?
  
   * Please check our [Backlog of Articles](https://github.com/Zuehlke/zuehlke-book/issues?q=is%3Aissue+label%3Aarticle) whether there is already an article existing or planned for similar topic. 
  
   * If there is already a similar article, you can contact the author and find a solution (leave the subject to the author, offer your help as reviewer or co-author, take the subject over, or write a second article in response or extension to the first article, ...). 
   
2. **Announce a Topic:**
  
   * Open a [New Issue for your Article](https://github.com/Zuehlke/zuehlke-book/issues/new?labels=article&title=Article:%20%3Cput%20topic%20title%20here%3E)
  
   * Describe roughly the idea you have in mind, what the article should be about.
  
   * Assign yourself to the issue.

   * Assign the label "article".

   * If you have a great idea about an article, but would not like to write about yourself? Add your idea to the existing [Ideas for Articles](https://github.com/Zuehlke/zuehlke-book/issues/41) issue!

## Discuss

It proved to be useful to discuss about an articles content before writing the article. Ask your colleagues, maybe they have some valuable input! 

   * Use the [Issues on Github](https://github.com/Zuehlke/zuehlke-book/issues): discuss directly in the issue you created - and don't miss to give feedback to other announced articles.

   * Use Yammer, a coffee break, a team event or similar

## Write 

**Content Conventions:**

* written in English

* short enough to be read in 10 minutes: size should be less than 2 A4 pages long in printout PDF version (that is between 400 and 750 words)

* reflects on a single subject only (better make several articles, if you have too much material / ideas to write about)

* matches our [Vision](./README.md#vision): it is about practicaly proven concepts, best practices, cultural philosophies or great ideas that we use in our daily work at Zühlke.

* the subject is related to our work and the advice concrete enough to consider.

* the subject is something you have experience on in some real projects and not just theoretical ideas

**Language Conventions:**

@Rolf: Please add title guideline

**Work directly with GitHub:**

We are using this Git repository, so contributing an article is as easy as contributing source code in any project. Every article is written in your personal fork of the repository as a simple markdown (*.md) file and reviewed and published by using Pull Requests. 

If this sounds complicated to you, just carefully follow these very easy steps to create a new article directly on the github web page:

  1. Use this link to [fork the Zuehlke/zuehlke-book repository](https://github.com/Zuehlke/zuehlke-book/fork).

  2. Navigate to the `articles` folder in your forked repository. The URL looks something like:
  https://github.com/{username}/zuehlke-book/tree/develop/articles

  3. Enter a unique name for your article file followed by the *.md file extension. Example: `my-funny-article.md` (can be changed later)

  4. Copy the content of [Article Example as template to start with](https://raw.githubusercontent.com/Zuehlke/zuehlke-book/develop/articles/_example.md) into the file
    
  5. Adjust `authorName` and `authorGithubUsername` at the top of the file
    
  6. Commit the new file

Congratulations, you have created the article file in your repository! You can now continue to work on your article incrementally directly in GitHub. If you prefer your own text editor: feel free to use your own "clone-edit-commit-push"- workflow with your local git client.

Please apply the following formal rules:

  * Use [GitHub Flavored Markdown Syntax](https://guides.github.com/features/mastering-markdown/) in the markdown file.

  * In all your commits you should use the issue number of your article prefixed with `#` .  
   Example: `#15 add article to Table of Content`.

Please note that we are using a public repository - everything you commit can be read by everyone.

### Review

To get your article reviewed you have can simply send the URL of your forked repository to a reviewer.

If you'd like to use the review features of Github you can directly skip to the next chapter.

### Publish 

To get your article published you have to go through this review and publishing process:

1. Open a pull request with your article to get it reviewed. 

   Look out for the "New Pull Request" button. The base fork is "Zuehlke/zuehlke-book" and the head fork is "{you}/zuehlke-book".

   Use the issue number of your article prefixed with `#`in the pull request title

2. Find some colleagues (at least one!) that will review your article and assign him to the pull request.

3. As a reviewer you can use [GitHubs Review Feature](https://help.github.com/articles/about-pull-request-reviews/) to give feedback

4. As an author, after receiving feedback, you modify your content (or ignore the feedback) and commit the modified version into your fork. The Pull Request will automatically be updated. And don't forget to thank your reviewer!

5. When the issue is ready to be published, assign your Pull Request to one of the [Lead Authors](./README.md##lead-authors) for final review and publication.

6. The assigned lead author will finally merge your pull request, when all the review comments are resolved.

7. Once published, you can still correct or improve it, by doing new pull requests from your fork of the repository.

8. Do not forget to close the issue of your article, once it is published.