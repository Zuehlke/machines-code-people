---
authorName: Florian Besser
authorGithubUsername: florian-besser
issue: 76
title: Containerization and how to use it
---
# {{page.title}}

You are a good software engineer. Your colleagues are fine, too. But you dread releases as they are known as a time of pain, desolation and general suffering. Your project ticks one or more of the following boxes:
* Deployments are cumbersome, either done manually or through a convoluted process that executes scripts on some remote host.
* Scaling the app is a nightmare as new machines or VMs take weeks to arrive & setup.
* Your application dependencies differ in version, patch level and feature set between environments.
* Developers have difficulty reproducing production issues on their local machines.
* Application dependencies must be installed manually, developers spend the first few days setting up their own machine.

This article will explain how containerization can solve these issues.

## Cumbersome deployments and dirty hosts

Running scripts on a host as part of your deployment may not seem like much in the beginning, but over time your host will become "dirty". Some iterations of your deployment script only made it to the QA environment, and it has been months since someone checked production for leftovers that can be cleaned up. These leftovers can confuse maintainers and reduce confidence in your teams ability to deploy software to production systems.

But there is a solution if software is deployed as a container: You immediately get rid of leftovers your software may cause. By **throwing away the old container** after deploying a new version you have already cleaned up after your application.

A tangent about volumes / host mounts: Sometimes your app must write files outside of its container, usually to a volume but sometimes on the host. In these cases the files still need to be cleaned as before, but usually an app has a well-defined output directory that changes rarely. 

## More hardware and the procurement process

There is a constant conflict between needing more resources to run an application and a company's willingness to spend money. Usually a project gets dragged into a long-winded procurement process for ordering hardware and getting IT services to install it in a rack somewhere. The money spent going through the procurement process is not transparent and promptly forgotten about. In today's time where hardware is cheap and humans are expensive paying some PaaS a few hundred bucks a month is cheaper than arguing in most cases.

Any established platform will offer you at least support for Docker, and if you have containerized your application with the corresponding technology then you'll be able to solve the scaling problem a lot easier. Usually this involves uploading the image of your software to the platform, creating a service (or similar) and then defining scaling rules for said service.

Protip: Most platforms offer some functionality for doing rolling upgrades, with some elbow grease you can deregister your containers from the loadbalancer before killing them thus achieving deployments that are invisible to the customer. Now every day is production deployment day!

## Different environments, different dependencies and the highway to hell

While differences between environments should be as small as possible they tend to increase over time. Someone upgrades only the QA database because they wrongly assumed there is a bug hiding there; someone applies emergency security fixes only to production because the other environments are not deemed critical. After a time you find an increasing number of builds that pass QA but still fail to run in staging or production!

Containerization can remove this problem in the sense that **whatever is containerized is versioned** and there are **orchestration tools** that can ensure all components have the correct version. Orchestration means that you are able to say "with version 1.4.0 of the component A we require version 1.7.3 of component B" and this bundle is still executed as one deployment. This way you can remove these uncertainties for everything you can containerize. 

You may be unsuccessful containerizing some parts of your infrastructure and there will be some configuration that is independent of application dependencies but at least you lessened the pain.
Note that many things a novice deems uncontainerizable are actually containerizable: From any database including Oracle to messaging systems to webservers you'll find premade images or you can roll your own. Anything that runs on an unmodified linux kernel can be containerized!

## Production bugs and developer madness

Unfortunately humanity has not yet uncovered a way how to prevent bugs, not even in production. As a workaround we've tasked developers with reproducing bugs locally and fix them. This approach can suffer greatly if the developer has to emulate production instead of being able to run an exact copy. In the worst case this leads to bugs not being reproducible and some "blind" bugfixing in the hopes that changing some related thing will solve the issue.

Luckily with containerization we are able to run a carbon copy of the version that is in production. If bugs are not reproducible they depend on application dependencies (see above, containerize your dependencies as well!) or on the production configuration (but that should be small & easy to debug!).

## Setting up ::1 and the onset of despair

Last but not least as the project grows and people leave and join you'll become more familiar with a recurring pain, setting up a newcomers machine. If this is done manually it has two downsides: Any newcomer must experience the _setup_ of all the dependencies used (even the crummy legacy dependency you want to get rid of!) and they might end up with different versions than their desk neighbor. This introduces "works on my machine" between developers, costs a lot of time and demotivates newcomers.

But if you already containerized your dependencies and have an orchestration solution then this problem can be circumvented entirely by running the orchestration. You'll get the correct dependencies, the correct version and the correct configuration.

Note that some people argue that setting up everything yourself is a good exercise but I think the dangers outweigh the knowledge gain and the knowledge can more easily be gained by giving newcomers an overview and some first tasks with purpose.

*By {{page.authorName}}*
