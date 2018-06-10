---
authorName: Adrian Herzog
authorGithubUsername: adiherzog
issue: 42
title: How to avoid / deal with flaky system tests
---
# {{page.title}}

--> first draft <--

There are many reasons to avoid automated tests that check an entire system or even a group of connected systems. But there are also good reasons to build and maintain an reasonable number of such tests. For this article, let's assume that the tests are there for a good reason and provide valuable information to the team.

Now, what can you do if one or more of these tests are flaky? By flaky I mean that the test changes from green to red or vice versa without any changes to the code of the test or the system.

Here are a number of strategies that hopefully will help you keeping the tests stable.

# Only Write Automated Tests For What's Under Your Control

If the system under tests (SUT) containts components which are not under your control, it's very hard to keep the SUT in a stable state. For those systems not under your control, you might not know whether they have changed in the meantime or not. And even if you do know, you are most probably not able to influence them and change them back to how you need them.

Therefore don't rely on other teams systems if possible. Mock them away so you have full control. Create System Tests instead of System Integration Tests. And of course these system tests must be written by the people who also program the system itself.

If there's no way around System Integration Tests, try to get control over other systems as much as possible. E.g. align very closely with these systems regarding test data and deployments.

# Avoid Broken Windows

As soon as one test fails, insist on fixing it. Otherwise people might start ignoring failures and you'll end up in a [broken window](https://en.wikipedia.org/wiki/Broken_windows_theory) situation. There's a root cause to every flaky test. Either it's the test itself that needs improvement or it's a bug in the software.

# Reproduce Failures Locally

If you have to rely on a CI server and test environment to reproduce a failure, your feedback loop after every change will be very long. This makes fixing the issue a cumbersome and inefficient procedure. Therefore make sure you can start the test locally with the debugger attached. If the test does not fail as often as on the CI, consider running the test in a loop to get a local failure quickly.

Some failures will not be reproducable locally though and you will be forced to analyze them on the CI environment.

# Analyze Failures Systematically

## Collect Data From Many Runs

If you have to deal with flaky tests that fail very rarely, running the tests a few times a day might not give you enough data for analysis. Therefore schedule the tests to run as often as you can afford. In a recent project we ran the test suite once every hour throughout the night. This gave us a lot of data to analyze stability the next morning.

## Visualize

Visualize failures in a matrix where one dimension is the test run and the other is the test scenario (like the [Jenkins Test Results Analyzer Plugin](https://wiki.jenkins.io/display/JENKINS/Test+Results+Analyzer+Plugin) does. This might reveal patterns that can give you a hint where the problem lies. E.g. if a certain group of tests always fail together, you might want to check what they have in common. And if a single test only fails every 10th time or so, painting it on a graph will make it apparent that there's a problem with this test.

## Analyze Logs and Metrics

Logs and metrics from the CI server that runs the test and from the SUT might give you valuable hints to the root cause. If your servers run in VMs, you might also want to collect metrics and log files from the VM host. Collect everything in a central place so you can analyze the timeline of events and look for reoccurring patterns.

# Rethink Your Automation Strategy

Your test strategy is good if you can't find a cheaper approach that gives you the same confidence.

If, despite all your efforts, you find it impossible to get the test suite stable, rethink your automation strategy. Is it really necessary to program tests so high up in the testing pyramid? Do you get enought value from the flaky tests so it's worth keeping them? Or might it be more economic to delete the problematic tests and replace them with lower level automated tests plus more exploratory testing?


*By {{page.authorName}}*
