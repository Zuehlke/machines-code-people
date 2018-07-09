---
authorName: Florian Besser
authorGithubUsername: florian-besser
issue: 75
title: CI and CD Done Right
---
# {{page.title}}

## Short Introduction and History of CI

Continuous integration (CI) was adopted and driven by the extreme programming (XP) methodology in order to combat _integration hell_. XP first advocated writing unit tests which every developer can run locally before merging to the mainline. In later iterations of XP the concept of a build server was introduced and further improvements led to what we refer to as CI:
* Fast automated builds
* Run on every commit
* Including tests
* Run by some mechanism that can provide feedback to developers.

## Short Introduction of CD

Continuous delivery (CD) builds upon CI with the aim that the mainline branch can be released and deployed to production at any time. Continuous delivery is quite similar to continuous deployment but continuous deployment will deploy any merges to mainline to production (if tests pass) whereas with continuous delivery releases and deployments are triggered by a human. For an example see below:

![Example delivery pipeline](./ci-c-done-right/delivery-pipeline.png)

## How to Do It Right™

There is no _one way_ to do CI/CD right. The same way you can't have a _right_ way to do Scrum or XP.

There are a number of obstacles to overcome on your road to CI and CD. Obstacles you must overcome can be categorized as:
1. People
2. Organizations
3. Tooling
Solving obstacles around people is both the hardest and most important challenge you must overcome, while tooling is the easiest and least important. 

### Issues and solutions around people

* Unexperienced developers: They tend to write code that is not designed for testability, resulting either in 
  * Less tests, which then results in bad quality and an increasing chance for a bug to sneak to production. This can torpedo CI/CD because people advocate "taking more time" to fix issues. It is important to remember that CI/CD can give you the same quality _faster_. Your best approach will be to coach or lead by example on how the issue could have been fixed without sacrificing speed. Your success depends on how much the team believes in CI/CD.
  * Tests using a lot of mocks tend to be more fragile. Fragile tests directly hinder integration because tests have to be fixed. Here your best bet is enabling developers to design better code so they can get rid of fragile tests altogether. It is imperative that you act early because once this issue escalates CI/CD will be seen as a constant pain.
* Large product backlog items (PBI) or big impact changes created by unexperienced RE/BA are the enemy of quick integration if they must be integrated as a whole. Unexperienced developers may be tempted to defer integration until "their" PBI is done, leading to integration hell as by then a sizable piece of the codebase was changed.
* Scepticism: A lot of people are sceptic until they experience benefits. The best way is to focus on a small set of pain points and to address them transparently. There may be people that object to the idea of having a faster integration cycle fundamentally; if their beliefs are motivated by personal reasons (e.g. fear, pride in being "build master") then you may need to restructure your team.

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