# Advanced Contribution Topics

## Structure

We do not require you to follow a certain structure. Nevertheless, a clear structure is very important for every article. 

Here are some structures you could base your article on:

### A Perfect Blog Post

1. Introduction: hooks the reader, draws them in, and sets up the post.
2. Main Body: works through a logical sequence of points, holding the reader’s attention.
3. Conclusion: ends the post decisively and calls the reader to take action.

Source: [a perfect blog post](https://syedbalkhi.com/how-to-structure-a-perfect-blog-post-with-examples/)

### Quick Ideas

1. Tell a story (Situation)
2. What do you suggest
3. Key Benefit
4. How to make it work

This is the structure applied in the [fifty quick ideas](https://leanpub.com/50quickretrospectives) book series.

### Problem Oriented

1. Start with a problem description
2. Present your solution
3. Conclusion

## Lectorate

As most of the authors are not native English speakers, all articles will we professionally lectured before being printed.

## Translation

As an author, you have the possiblity to write the article in your native language and have it translated afterwards.
Please contact a lead author if you plan to use a transation service.

## Table of Contents

The Table Of Contents is in the `/SUMMARY.md` file. The Lead Authors will take care of this.

## Pictures

1. Place images in a folder with same name as your article. Example: The images folder for `my-funny-article.md` is called `my-funny-article`
2. Save the images into this folder
3. Include the images in your article using: 

```
![Alternative Text (will be hidden)](./my-funny-article/picture.jpg)
```

## Resources

To provide resources like links or books:

1. Create a second *.md file and name it like your article file including a ".resources". Example: The resources file for `my-funny-article.md` is `my-funny-article.resources.md`
2. Include the resources at the end of your article using: 

```twig
{% raw %}
{% include "./my-funny-article.resources.md" %}
{% endraw %}
```

Please note: This is a temporary solution. In the future we'd like to auto-detect resources and include them in different ways based on the output. For an electronic format (web, pdf, ebook) the resources are just included. For a printed format (book) the resources might be printed as a QR-Code linking to a website. For more information see https://github.com/Zuehlke/machines-code-people/issues/18

## Zühlke Github Community

To becom a properly registered as a public member of the "Zühlke Github Community":
* Follow these instructions: https://github.com/Zuehlke/core/issues/6
* If you can not access this issue: 
    * send your github username to one of the admins, e.g. Rolf Bruderer
    * after you received the invitation, accept it
    * then proceed as described on https://github.com/Zuehlke/core/issues/6

## Oppinionated Articles and Controversial Discussions

If you find an article in progress too opinionated or controversial, then ...

* Do not forget this is an open community and that we should respect all other oppinions and be open for discussion about our ideas with each other in a resspectful kind. This is also what we want to advertise in this book, that we as Zühlke are open for our colleagues ideas and opinions and value each other, even in controversial discussions.
* Do not hesitate to contact the author and discuss with him (e.g. on the issue of the article or for more controversial discussions maybe better face to face or via non-public communication channels)
* Do not forget that the original author was maybe writing the article with another context in mind.
* Consider to plan and write a counter article to pick up the point where you disagree with the original article or add your own view or aspect concerning that topic.
* We motivate to also write about controversial topics and in some cases it might even make sense to have two articles, one with the arguments pro, another with the arguments contra. See also following example: in the book "Lessons Learned in Software Testing" there are two articles, one that recommends using the "IEEE-829-Standard" and right on the next page there is the next article that recommends to not use this standard (this was mentioned in https://www.heise.de/developer/artikel/Neuer-Test-Standard-ISO-29119-pro-und-contra-2429610.html).
* If you can not agree on a topic and there is a conflict that you think needs some help with resolution, you can contact the [Lead Authors](#lead-authors), they will try to moderate in the conflict situation and help you to decide how to proceed with the article(s) in question.
* Also relax and bare in mind that not all articles might find place in a printed edition of this collection.

## Lead Author Review

Checklist:
- Does the article match the formal conventions defined in the contribution guide?
- Does the article match the language conventions defined in the contribution guide?
- Does the article match the content conventions defined in the contribution guide?
- Are there statements which might harm the Zuhlke brand/name? -> Discuss with jdi
- Do you have input to improve the articles structure and/or readability?
- Spelling and grammar mistakes?

### Template (en):

Playing the perfection game (https://www.benlinders.com/2014/getting-feedback-with-the-perfection-game/), I rate the artice X on a scale from 1-10.
What I liked about it:
- ...
To make it perfect:
- ...
I expect you to:
- ...

### Template (de):

Als "Perfection Game" Feedback (https://www.benlinders.com/2014/getting-feedback-with-the-perfection-game/), gebe ich dem Artikel X Punkte auf der Skala von 1-10.
Das gefällt mir:
- ...
Um den Artikel perfekt zu machen:
- ...
Ich erwarte, dass du noch folgende Änderungen vornimmst:
- ...


## Lectorate

### Prepare

1. Pick the next articles (min. 5), mark them as "sent" in the excel
1. Copy the Markdown files into a folder
1. Execute `dir *.md | rename-item -newname { [io.path]::ChangeExtension($_.name, "txt") }` in the folder (rename from *.md to *.txt)
1. Zip it

Challenge: title

### Feedback

1. Extract ZIP to a folder
1. Execute `dir * | rename-item -newname { $_.name.substring(0,$_.name.length-11) }` to remove postfix
1. Execute `dir * | rename-item -newname { [io.path]::ChangeExtension($_.name, "md") }` for each file
1. Copy the *.md files into to `articles` folder
1. compare and fix markdown related stuff (frontmatter, titles, empty lines between list items, special chars like: &lt;)
1. Generate summary `npm run-script summary`
1. Update SUMMARY.md
1. Create a PDF `gitbook pdf ./ ./wisdomz-dev-2018-07-11.pdf`, perform sanity check
1. Commit to development branch, pull request to master
1. Send email to authors:

[WisdomZ] Article lectored
Dear Author
Your article was lectored by a professional lecturing agent. 
Take the opportunity to improve your English and inspect the changes. You can find them in the following commit: 
I also send you the current book as PDF. We are still working on the layout and might add or remove empty lines between list items. 
But please check if the formatting of your article is still correct. If you have not change, your article will not be modified.
Regards,
Christian

## Output / Theming

Theming can be done in the _layouts folder. It's based on the original GitBook theme.

### Website

### EBook

* Let GitBook generate an EPub File (On Windows, install Callibre to be able to do that)

### Printed Book

* Word? Convert the EPub File to Word with Callibre
* LaTeX? Convert the EPub File to LaText using PanDoc (`pandoc -f epub -t latex -o .\mybook.tex .\mybook.epup`) and then open it with a LaTeX distribution (i.e. MiTex)







