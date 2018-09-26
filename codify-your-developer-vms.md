---
authorName: Torben Knerr
authorGithubUsername: tknerr
issue: 24
title: Codify your Developer VMs!
---
# {{page.title}}

Let’s talk about developer VMs. 

TL; DR: if you are already convinced that developer VMs should be automated, scroll down to the examples
and template / skeleton project RUAs. If not, read from the beginning ;-)

## Why Developer VMs?

Some people hate it, others love it. However you put it, it is one sure-fire way to ensure that the
whole development team uses a consistent environment and avoids the typical “works on my machine”
issues we all know about. Especially for us, executing and delivering a multitude of projects (and engineers
joining and leaving these projects more or less frequently), developer VMs have become an indispensable tool.
Not only for the consistency aspect, but also for reducing ramp-up times or being able to easily archive the
development environment when the project enters the retirement phase.

## OK, but why should I automate it?

While we started out to craft these VMs manually (and with love) in the early days, we can nowadays easily
automate the whole procedure with tools like Vagrant, Chef, Ansible and co. Applying automation and
Infrastructure-as-Code principles to developer VMs not only increases transparency and reproducibility,
but also allows for an in-VM update mechanism to maintain consistency while the toolchain evolves.

An automated developer VM should yield the following properties:

* updatability - being able to update an existing VM with the push of a button from within the VM
* testability - running automated tests in the VM to ensure that it works as expected
* installability - the VM should distributed as a standard .ova VM image
* adaptability - developers should be able to adapt and improve the VM as the toolchain evolves
* reproducibility - changes to the development environment are transparent, traceable and reproducible

## I’m sold! How do I get there?

It may sound a bit of effort to achieve this if you start from scratch, so that’s why we have a RUA with a
template / skeleton project along with a tutorial for you. No excuses for doing it manually anymore! ;-)

This is what you need to get started:

* A ready-to-use template / skeleton project for a minimal, Linux based developer VM: https://github.com/Zuehlke/linux-developer-vm
* An example Java Developer VM based on the above (see Pull Requests for a step-by-step guide!): https://github.com/tknerr/etka2017-developer-vm 
* The accompanying conference talk for creating the example above: http://bit.ly/automated-developer-vms

## There’s RUAs in Insight, too!

You can find this as the “Linux Developer VM (Template Project + Tutorial)” RUA in insight:
http://insight.zuehlke.com/assets/details/23242

I have started to link this RUA with actual developer VMs which are derived from that above template
(see Child Assets section). If you use it, I would encourage you to add a RUA for your project-specific
developer VM and add it as a child asset. After all, these are real world examples which not only manifest
the pattern, but also carry lots of value by collecting more and more reusable automation recipes.

Would love to hear your feedback / discuss with you in the DevOps Yammer group!

*By {{page.authorName}}*
