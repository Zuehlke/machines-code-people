---
authorName: Florian Besser
authorGithubUsername: florian-besser
issue: 75
title: CI and CD Done Right
---
# {{page.title}}

## Short Introduction and History of CI

Continuous integration (CI) was adopted and driven by the extreme programming (XP) methodology around 2000 in order to combat _integration hell_. The problem of integrating code by various authors and checking if the product fulfills given requirements is an old one, and XP first advocated writing unit tests which every developer can run locally before merging to the mainline. In later iterations of XP the concept of a build server was introduced and further improvements led to what we refer to as CI:
* Fast automated builds
* Run on every commit
* Including tests
* Run by some mechanism that can provide feedback to developers.

## Short Introduction of CD

Continuous delivery (CD) builds upon CI with the aim that whatever code is present in the mainline branch can be released and deployed to production at any time. Continuous delivery is quite similar to continuous deployment but continuous deployment will deploy any merges to mainline to production (if tests pass) whereas with continuous delivery releases and deployments are triggered by a human. For an example see below:

![Example delivery pipeline](./ci-c-done-right/delivery-pipeline.png)

## How to Do It Right™

There is no _one way_ to do CI/CD right. The same way you can't have a _right_ way to do Scrum or XP.

There are a number of obstacles to overcome on your road to CI and CD. Obstacles you must overcome can be categorized to circle around:
1. People
2. Organizations
3. Tooling
Solving obstacles around people is both the hardest and most important challenge you must overcome, while tooling is the easiest and simplest. 

### Issues and solutions around people

* Unexperienced developers: They tend to write code that is not designed for testability, resulting either in 
  * Less tests, which then results in bad quality and an increasing chance for a bug to sneak to production. This can torpedo the idea because people advocate "taking more time" to fix issues. It is important to remember that CI/CD can give you the same quality _faster_. Anyone that wants to slow down the development process has missed a chance to use CI/CD to improve the process and your best approach will be to coach or lead by example on how the issue could have been fixed without sacrificing speed. Your success depends on how much the team believes in CI/CD.
  * Tests using a lot of mocks / fakes / stubs that tend to be more fragile. Fragile tests directly hinder collective code ownership as people start to blame the author of the tests for their fragility. And without collective ownership integration can slow down because tests have to be fixed or even because multiple people need to be involved to get a green build again. Here your best bet is enabling developers to design better code so they can get rid of fragile tests altogether. It is imperative that you act early because once a team escalates this issue it may no longer be able to work together until the fragile tests are gone, meaning that CI/CD has to be paused in the meantime.
* Unexperienced requirements engineers / business analysts
Large user stories (or similar) are the enemy of quick integration if they must be integrated as a whole. While it may be possible to integrate large stories in several small parts this depends on the context and the experience of developers working on it. Unexperienced developers may be tempted to defer integration until whatever they are working on is "done", leading again to integration hell as by the time they are trying to integrate a sizable piece of the codebase was changed by someone else.
* Big impact changes will require experienced requirements engineers and developers or the time between integrations becomes too wide. See above for potential fixes.
* Scepticism: A lot of people are sceptic until they experience benefits themselves. This is a problem you can expect to see if CI/CD is newly introduced to a team not familiar with it. The best way is to focus on a small set of pain points and to address them transparently. There may be people that object to the idea of having a faster integration cycle fundamentally; if their beliefs are motivated by personal reasons (e.g. fear) then you may need to restructure your team.
* Old habits with long integration cycles die hard. "Traditional" teams might have organized themselves in such a way that there was a "build master" or similar role. In these cases the person owning that role may be reluctant to let go of it, and other developers may be reluctant to take up the slack. I suggest you explain the benefits of CI/CD as well as the necessity of a faster integration cycle in relation to business goals.

### Organizational issues

Increase in pressure
Unsuitable process
Unsuitable infrastructure

### Tooling issues

Code review pingpong
Maturity
Regression feedback
Integration queue
Automation
Unstable tests (by infrastructure / tooling)
Manual tests
Hard setup because of dependencies
No confidence in green tests

*By {{page.authorName}}*

{% include "./ci-cd-done-right.resources.md" %}