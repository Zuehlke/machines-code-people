---
authorName: Vassilis Rizopoulos
authorGithubUsername: damphyr
issue: 26
title: Rules for building systems
---
# {{page.title}}

This article discusses the application of the [Separation of Concerns](https://en.wikipedia.org/wiki/Separation_of_concerns) concept in Build & CI systems. It highlights the difference between a build system and a build management system, the responsibilities of each and some considerations on the consequences when following the rules.

It is layed out as a set of rules to follow when creating build and CI infrastructure for your project. 

Think of each rule as a [T.A.R.D.I.S.](https://en.wikipedia.org/wiki/TARDIS): they are bigger on the inside. 

The purpose of this rule set is to guide us toward C.R.I.S.P. (Complete, Repeatable, Informative, Scheduled,Portable) builds<sup>1</sup>

## Distinctions, distinctions

To identify the separate concerns we should provide definitions for the terms: 

A **build system** performs transformations in sequence according to a predetermined dependency chain to create artifacts. A subset of this is the compilation of sources to binaries.

A **build management system** coordinates build system(s).

### Specificity

A build system is highly project specific. It is affected by toolchains, project conventions and generally can run only on a specially configured host.

A build management system can run everywhere as long as it can start the build system on the appropriate host. The specificity of a build management system is limited to the number of version control systems it supports. Although theoretically it doesn't have to provide version control support it is a given that such support will be provided in the minimum feature set.

### The Makefile is the build system

Make, rake, Ant, MSBuild, Gradle, grunt etc. **are not build systems**<sup>2</sup>. You create build systems with them. 

Jenkins, TeamCity, TravisCI, BuildBot etc. are build management systems.

## The Rules

### 1. I am Build Server

Rule #1 requires that the build server follows the exact same steps as any other developer. 

Expressed the other way around: Every developer has to be able to recreate locally the complete build process without deviations given the development environment and the correct version of the source tree.

### 2. When the build server says no, it means no!

Rule #2 says that if a build server marks a build as broken, then the build is broken. Drop everything and read the logs. 

There is no "it works for me", your build server is [Judge Dredd](https://en.wikipedia.org/wiki/Judge_Dredd): judge, juror and executioner.

You can only adhere to this rule if you followed Rule #1

### 3. IDEs are the enemy A.K.A. F5 is not a build process

Means that if you drive your development process from an IDE there is no way you can adhere to the Build Rules. 

This rule has major complications on the development environment and ties directly into the subject of allowing your developers to use whatever tools they feel comfortable with.

## Adhering to the rules

To create a system that adheres to rules #1 & #2 you have to think like a Lego builder: Lots of small, specialized tasks that do one thing and can be used to compose more complex processes.

As an example a <em>release</em> task instead of doing everything in one big implementation will depend on the build tasks for each of the libraries and applications and the tasks that run the tests etc. Using the syntax of rake in a contrived example one would do

```ruby
task :release =>[:"test:all"]

task :"test:all" => [:"test:foo", :"test:bar"]

task :"test:foo" => [:"build:foo"]
```

Now a developer will probably use the component tasks a lot more than the composite :release task and we will certainly have a build job on the server that only does releases.

This is a necessity since the system needs to satisfy different usage patterns: 

 * The build server uses composite tasks that implement complete workflows.
 * The developer uses component tasks with surgical precision in the interest of speed and effectiveness.

From the perspective of the build system engineer this approach is self-evident for the same reason it is evident when building applications: Small chunks of code are easier to manage, test, reuse and understand.

## Consequences

The above rules have widespread consequences in structuring the build and CI processes of a project.

The first rule sets the frame within which the build system operates. To adhere to it we avoid using IDE integrations but also build management system integrations (Maven integration in Jenkins being one such example). Handling dependencies, configuring toolchains, even things like naming conventions are left to the build system. The build server becomes just another user, performing exactly the same steps a human developer would use.

The first rule combined with the third lead to the prioritization of command line usage. It doesn't mean we do everything just from the command line but that CLI is the first priority when adding features to the tools comprising the development environment. CLI is the one interface both humans and bots can operate with the same facility.

The second rule's consequences are a bit more subtle. Avoiding inconsistencies between execution environments is a critical issue and to handle it correctly we need to introduce the concept of a consistent development environment (usually called the 'project VM' as we use virtual machines for encapsulation - although at the time of writing containerization offers a less resource intensive approach for specific development scenarios). The challenge of maintaining and replicating such an environment unavoidably leads to the introduction of a provisioning (A.K.A. configuration management) tool such as Chef, Ansible or Puppet.

## Who does what

Another way to look at it is that a build system determines the how and what (build, test, package, deploy, release) while a build management system determines the where and when (which CI node, when to trigger etc.).

All of this segues nicely into the final rule:

## 4. Your (build) infrastructure is a software development project

Rule #4 means you need tests and CI and a plan. You need to budget for CI, for creating a build system specific to your project, for teaching people how to use it.

To make matters worse your users are some of the most obnoxious, impatient and downright pedantic users on the face of the planet. They want everything perfect, robust, simple and fast and they want it yesterday.
 You better be dogfooding by this point...

*By {{page.authorName}}*

------
<sup>1</sup>The concept of CRISP builds was first introduced by Mike Clark in his book [Pragmatic Project Automation](https://www.amazon.de/gp/product/0974514039/ref=as_li_tl?ie=UTF8&camp=1638&creative=6742&creativeASIN=0974514039&linkCode=as2&tag=ampelofilos05-21&linkId=0103a93a3eb10aaae253ddac6f0f5446)
<sup>2</sup> We can debate on CMake and Maven