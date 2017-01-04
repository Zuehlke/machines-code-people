# zuehlke-book

Open Source Book about practicaly proven concepts, best practices, cultural philosophies and great ideas that we use in our daily work in Software Engineering Projects at Zühlke.

CURRENT STATUS: *We are starting with a pilot and are currently setting up the tooling. We are not yet ready for contributions.*

## Vision

We create a collection of articles containing advices we'd like to share with our collegues at Zühlke.

We write for all software engineers at Zühlke - from professional engineers to distinguished consultants - and from future engineers to alumnis.

Through our articles, the Zühlke culture manifests itself: they are technically interesting, they motivate you to reflect about the work and they encourage you to share your knowlege. 

## Contribution guideline

### Avoid duplicates

Check the current [table of contents](http://link.to.be.defined) for possible duplicates. If you find one, contact the author and find a solution (leave the subject to the author, offer your help as reviewer, take the subject over, ...).

### Add an article

We are using this Git repository, so contributing an article is as easy as contributing source code in any project.

1. Clone this repository
1. Copy the folder `/articles/template to /articles/{yourFolderName}`
1. Add `title`, `author` and `authorEmail` to `content.md`
1. Commit, push and make the first pull request to get the title to the repository
1. Write the article and continously update the main repository

### Write the article

Write your article in the `content.md` file using the Markdown syntax. The syntax used is similar to the [GitHub Flavored Markdown syntax](https://guides.github.com/features/mastering-markdown/).

Write your article in English. 

Write about practicaly proven concepts, best practices, cultural philosophies and great ideas that we use in our daily work in Software Engineering Projects at Zühlke.

Write articles that are short enough to be read in 10 minutes (minimum chars: ..., maximum chars: ...).

Reflect on a single subject. The subject is related to our work and the advice concrete enough to consider.

Replace the `author.jpg` image with an image of you. The image must be a quadratic *.jpg file and it should be in high resolution.

### Technical Review

When you finished your article, find a reviewer, set her email in `content.md` and set the status to `inReview`.

```
status: inReview
reviewerEmail: rvw
```

### Ready to Publish

When both you and the reviewer are happy with the article, set the status to `readyToPublish`.

### Quality control

If you find an article in progress too opinionated, then ....

Bare in mind that not all articles might find place in a printed edition of this collection.

Lectorate ?

## Licence

All content is licensed under the [Creative Commons Attribution Non Commercial Share Alike 4.0](https://creativecommons.org/licenses/by-nc-sa/3.0/) license.