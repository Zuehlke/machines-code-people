---
authorName: Torben Knerr
authorGithubUsername: tknerr
issue: 24
title: Codify your Developer VMs!
---

# {{page.title}}

Let’s talk about developer VMs, and why you absolutely and definitely must automate them (no excuses)! :)

## What is a "Developer VM"?

A developer VM is a virtual machine image that contains the complete development toolchain that is needed to work on a specific project (including compiler toolchains, IDEs, system wide settings, etc...). The aim is to ensure a consistent environment not only between team members of that project (which may have completely different operating systems on their laptops) but also with the build agents in the CI environment.

## Why would I need a Developer VM anyway?

Some people hate it, others love it. However you put it, it is one sure-fire way to ensure that the whole development team uses a consistent environment and avoids the typical "works on my machine" issues we all know about. Especially for us, executing and delivering a multitude of projects (and engineers joining and leaving these projects more or less frequently), developer VMs have become an indispensable tool. Not only for the consistency aspect, but also for reducing ramp-up times or being able to easily archive the development environment when the project enters the retirement phase.

On regulated projects this is even more relevant, since you need to validate and verify the development toolchain and need to ensure that everyone uses exactly that defined toolchain.

## OK, but why should I automate it?

While we started out to craft these VMs manually (and with love) in the early days, we can nowadays easily automate the whole procedure with tools like Vagrant, Chef, Ansible and co. Applying automation and Infrastructure-as-Code principles to developer VMs not only increases transparency and reproducibility, but also allows for an in-VM update mechanism to maintain consistency while the toolchain evolves during the lifetime of the project.

Finally, an automated developer VM should yield the following properties:

* updatability - being able to update an existing VM with the push of a button from within the VM
* testability - running automated tests in the VM to ensure that it works as expected
* installability - the VM should distributed as a standard VirtualBox / VMware image
* adaptability - developers should be able to easily adapt and improve the VM as the toolchain evolves
* reproducibility - changes to the development environment are transparent, traceable and reproducible

## How can I automate it?

The good news is that there are quite a few so-called "Configuration Management" tools out there, which essentially allow you to automate the provisioning of software and configuration on top of an existing operating system (in our case a fresh installation of the operating system of choice, within a VM image). 

The bad news is that you have to choose one. And in addition to the configuration management tools that do the provisioning, there is (gladly) also a multitude of tools for testing the configuration of such a (virtual) machine.

Depending on your preference, these are the tools you will likely end up with:

* Rubyists will like
  * Chef - as the configuration management tool
  * Foodcritic - for linting their Chef recipes
  * InSpec / ServerSpec - for testing the Chef-provisioned systems

* Pythonistas probably prefer
  * Ansible - as the configuration management tool
  * ansible-lint - for linting their Ansible roles
  * TestInfra - for testing the Ansible-provisioned systems

## I’m sold, sounds like pretty cool stuff! What is the fastest way to get there?

It may sound a bit of effort to achieve this if you start from scratch, so that’s why we have a RUA with a template / skeleton project along with a tutorial for you. No excuses for doing it manually anymore! ;-)

This is what you need to get started:

* A ready-to-use template / skeleton project for a minimal, Linux based developer VM:
  https://github.com/Zuehlke/linux-developer-vm
* An example Java Developer VM based on the above (see Pull Requests for a step-by-step guide!):
  https://github.com/tknerr/etka2017-developer-vm 
* The accompanying conference talk for creating the example above:
  http://bit.ly/automated-developer-vms


*By {{page.authorName}}*
