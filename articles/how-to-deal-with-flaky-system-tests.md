---
authorName: Adrian Herzog
authorGithubUsername: adiherzog
issue: 42
title: How to deal with flaky system tests
---

# {{page.title}}

The higher we climb up the test automation pyramid, the less oxygen there is in the air. Some tests are fine with that. But others can't handle it and randomly fail every now and then. These poor tests need help. In this article I will focus on strategies to keep these tests as stable as possible.

## The problem with flakiness

A test that changes from red to green or green to red without any code changes is considered flaky. Such tests are a burden for several reasons. They might block you from merging to the mainline or to release a new version of your product. They might be a symptom of an unstable test or a problem in the product. In the end, dealing with all these issues eats up valuable time. That's why we want to avoid flaky tests as much as possible.

## Increase your chances of success

### Avoid broken windows

As soon as one test fails, insist on fixing it. Otherwise people might start ignoring failures and you'll end up in a [broken window](https://en.wikipedia.org/wiki/Broken_windows_theory) situation. There's a root cause to every flaky test. Either it's the test itself that needs improvement or it's a bug in the software.

### Control as much as possible

The more control you have over the system under test (SUT) and the test data, the higher your chances of getting the tests stable. There are many ways to increase control, here are some important ones:

* Preferably use system tests that cover only the system you are responsible for (at runtime) rather than system integration tests that also include the systems of other teams. This requires simulators to mock the other systems out.
* Define the exact versions of the libraries you are using in the code, so that you don't get surprised by unintended updates that introduce issues.
* Control the test data setup and automate it as much as possible.
* Make sure tests are independent of each other (i.e. one test must not rely on the outcome of another test).
* Increase testability by modifying the system code (e.g. by adding automation IDs to the UI).
* If your tests also cover other teams' systems, know when they do their deployments or have downtimes.
* Keep continuous health checks separate from your test suite; they should not have an impact on your build pipeline.

### Timing is (almost) everything

Most issues involving flaky tests are related to timing and getting it right is often hard.

* It's crucial to know when the testing framework implicitly waits for an action to complete and when you have to add explicit wait code.
* Instead of fixed wait timeouts (e.g. 5 seconds), implement polling that checks in a loop for a certain condition to become true. This is much more stable.
* If your system under test has asynchronous behaviour, make sure you understand it well and write the tests accordingly.
* Configure sensible timeouts.


## Analyse failures systematically

### Reproduce failures locally

If you have to rely on a CI server and test environment to reproduce a failure, your feedback loop after every change will be very long. This makes fixing the issue a cumbersome and inefficient procedure. Therefore make sure you can start the test locally with the debugger attached. The closer your CI environment matches your development system, the higher the chances you can reproduce failures locally. If the test does not fail as often as on the CI, consider running the test in a loop to provoke a local failure faster.

Unless your development machine has exactly the same setup as the CI server, some failures will not be reproducible locally. You will be forced to analyse them on the CI environment. One of the build nodes could temporarily be used to analyse the issue while the others can still be used by the rest of the team.

### Collect data from many runs

If you have to deal with flaky tests that fail very rarely, running the tests a few times a day might not give you enough data for analysis. Therefore, schedule the tests to run as often as you can. In a recent project, we ran the test suite once every hour throughout the night. This gave us a lot of data to analyse stability the next morning.

### Aggregate results from feature branches

You might actually have a lot of data from running the tests on each feature branch, but it is hard to see patterns if you don't have the test runs in an aggregated form. Collect all the test failures from all branches in a single place to analyse them. You might start off with an Excel sheet, but will probably soon decide to automate the data collection.

### Visualise

Visualise failures in a matrix where one dimension is the test run and the other is the test scenario. This might reveal patterns that can give you a hint where the problem lies. For example, if a certain group of tests always fail together, you might want to check what they have in common. And if a single test only fails every 10th time or so, plotting it on a graph will make it apparent that there's a problem with this test.

### Analyse logs and metrics

Logs and metrics from the CI server that runs the test and from the SUT might give you valuable hints as to the root cause. If your servers run in VMs, you might also want to collect metrics and log files from the VM host. Collect everything in a central place so you can analyse the timeline of events and look for recurring patterns.


## If all else fails

### Rerun failed tests automatically

If you can't tame the beast or if you need a quick fix to buy you some time for a proper solution, you might want to rerun failed tests once or twice automatically (in Java you could use a JUnit rule for this). If the rerun is successful, the build is successful. This will make your build runs a bit slower, but might spare you a rerun of the entire build pipeline. However, this approach might have the undesirable side effect that people care less about writing stable tests as flaky ones don't hurt so much any more.

### Delete it

If, despite all your efforts, you find it impossible to get some tests stable enough, consider deleting them. Think about how you can replace them with other risk mitigation strategies. Maybe a unit or integration test can cover most of the risk. In some cases you might need a scripted manual test scenario. Or you may find out that it's already covered by the exploratory testing that is done before each release.

*By {{page.authorName}}*
