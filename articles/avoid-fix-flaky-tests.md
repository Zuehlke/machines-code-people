---
authorName: Adrian Herzog
authorGithubUsername: adiherzog
issue: 42
title: How to deal with flaky system tests
---

# {{page.title}}

This article is not about whether UI / system / end to end tests should be automated or not. There's enough material and controversy about that in the developer community and it could easily fill a separate article, if not a whole book. Instead I will fokus on strategies to keep these tests as stable as possible.

## The problem with flakiness

A test that changes from red to green or green to red without any code changes is considered flaky. Such tests are a burden for several reasons. They might block you from merging to the mainline or to release a new version of your product. They might be a symptom of an unstable test or of a problem in the product. In the end, dealing with all these issues eats up valueable time. That's why we want to avoid flaky tests as much as possible.

## Increase your chances to succeed

### Avoid broken windows

As soon as one test fails, insist on fixing it. Otherwise people might start ignoring failures and you'll end up in a [broken window](https://en.wikipedia.org/wiki/Broken_windows_theory) situation. There's a root cause to every flaky test. Either it's the test itself that needs improvement or it's a bug in the software.

### Control as much as possible

The more control you have over the system under test (SUT), the higher your changes to write stable tests. Some practical implications:

* Have a deterministic build process, e.g. fix the exact versions of the used libraries in the code.
* Test dependencies to other systems that are not under your control in isolation, so that failure has a limited impact. E.g. use CDC tests for checking interface contracts.
* Keep continuous health checks separate from your test suite, they should not have an impact on your build pipeline.
* Control the test data setup.
* Add automation IDs to your UI code to make automation easier and more stable.
* Use mocks / simulators to replace unstable or hard to control peripheral systems. I would even say: cover as much as possible with system tests instead of system integration tests.
* Know when other systems you rely on do their deployments or have downtimes.

### Timing is (almost) everything

Most issues with flaky tests are related to timing and getting it right is often hard.

* It's crucial to know when the testing framework waits implicitly for an action to complete and when you have to add explicit wait code.
* Instead of fixed wait timeouts (e.g. 5 seconds) implement polling that checks in a loop for a certain condition to become true. This is much more stable.
* If your system under test has asynchronous behaviour, make sure you understand it well and write the tests accordingly.
* Configure sensible timeouts.


## Analyze failures systematically

### Reproduce failures locally

If you have to rely on a CI server and test environment to reproduce a failure, your feedback loop after every change will be very long. This makes fixing the issue a cumbersome and inefficient procedure. Therefore make sure you can start the test locally with the debugger attached. The closer your CI environment matches your development system, the higher the chances you can reproduce failures locally. If the test does not fail as often as on the CI, consider running the test in a loop to provoke a local failure faster.

Unless your development machine has exactly the same setup as the CI server, some failures will not be reproducible locally. You will be forced to analyze them on the CI environment. One of the build nodes could temporarily serve for the analysis of the issue while the others can still be used by the rest of the team.

### Collect data from many runs

If you have to deal with flaky tests that fail very rarely, running the tests a few times a day might not give you enough data for analysis. Therefore schedule the tests to run as often as you can afford. In a recent project we ran the test suite once every hour throughout the night. This gave us a lot of data to analyze stability the next morning.

### Aggregate results from feature nranches

You might actually have a lot of data from running the tests on each feature branch, but it is hard to see patterns if you don't have the test runs in an aggregated form. Collect all the test failures from all branches in a single place to analyze them. You might start off with an Excel sheet, but will probably automate the data collection soon.

### Visualize

Visualize failures in a matrix where one dimension is the test run and the other is the test scenario (like the [Jenkins Test Results Analyzer Plugin](https://wiki.jenkins.io/display/JENKINS/Test+Results+Analyzer+Plugin) does. This might reveal patterns that can give you a hint where the problem lies. E.g. if a certain group of tests always fail together, you might want to check what they have in common. And if a single test only fails every 10th time or so, painting it on a graph will make it apparent that there's a problem with this test.

### Analyze logs and metrics

Logs and metrics from the CI server that runs the test and from the SUT might give you valuable hints to the root cause. If your servers run in VMs, you might also want to collect metrics and log files from the VM host. Collect everything in a central place so you can analyze the timeline of events and look for reoccurring patterns.


## If all else fails

### Rerun failed tests automatically

If you can't tame the beast or if you need a quick fix to buy you some time for a proper solution you might want to rerun failed tests once or twice automatically (in Java you could use a JUnit rule for this). If the reruns is successful, the build is successful. This will make your build runs a bit slower, but might spare you a rerun of the entire build pipeline. This approach might have the undesirable side effect that people care less about writing stable tests as flaky ones don't hurt so much anymore.

### Rethink your strategy

If, despite all your efforts, you find it impossible to get the test suite stable enough, rethink your overall test and automation strategy.

* Which risks exist on which level? How can you mitigate them with testing?
* Which tests can profit from automation? And on which level should they be implemented?
* If you see more than one way to tackle a risk, which one is the cheapest?
* Which strategies are most successful in finding important issues?
* Where does exploratory testing fit in?

*By {{page.authorName}}*
