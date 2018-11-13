---
authorName: Simon Lehmann
authorGithubUsername: simonlmn
issue: 71
title: Make and Keep Your Tests Run Fast
---
# {{page.title}}

Automated testing of software is generally a good thing and is accepted as a standard practice in virtually all projects these days. However, more often than not, people get annoyed by the tests over time.  They keep complaining about having to wait for those darn tests to finish on the CI, so they can finally merge their PR.

Clearly, no one sets out with the intention to slow everyone down. But then again, people rarely make it a priority to keep things fast. Which is understandable and sounds "pragmatic" when there are only a handful of tests. Fast forward six months and people are sitting idle staring at the progress indicator of the build pipeline, hoping that this time they did not break another test and have to waste again 30 minutes of their life.

## So, what to do instead?

There are a few strategies and most of them don't incur any additional cost - if done right from the start!

_Don't write tests in the first place_

Depending on the technology and programming language, there are ways to prevent certain errors by taking advantage of the compiler/type system or static code analysis. This gets rid of tests which need to verify behavior at runtime that can be checked at compile/build time. A simple example would be using an unsigned integer type instead of a signed integer if negative values are not allowed, but it can and should be applied to more complex scenarios as well.

_Don't repeat yourself (too much)_

If a particular functionality has been tested once, there is no need to have it tested again and again. There is also no value in trying a bunch of random cases instead of only one. Only add additional cases if the additional case proves some additional property of the system under test. Of course, there will be some overlap between tests, especially between the different levels, but it pays to ask for every test if it really adds valuable insight. Not only will this avoid additional execution time -- which can be significant for integration and system level tests -- but also makes the test suite more maintainable, as you don't have to change many tests if a requirement changes.

_Get time under your control_

The first time you need to implement time dependent functionality, ensure the progression of time can be controlled from the outside. Provide an abstraction over any time related primitives you might be using (getting the current time, waiting for time to pass, ...) which can be controlled from your tests to make time progress exactly and instantly when you need it to. That allows tests which check for, say, a 20-second timeout to execute instantly and make testing of longer time spans (hours, days or years!) feasible.

_Separate, separate, separate_

Be clear about what properties are tested on which level (e.g. unit, integration, system) and keep those levels separated. Having clearly separated tests "horizontally" allows defining different guidelines, constraints and approaches to each level and makes it easy to run them independently. In addition to this "horizontal" separation, tests and their corresponding test subjects should also be separated "vertically" by applying the various techniques of modularization. This enables you to run tests only if the corresponding code has been modified.

## What if people are still complaining?

Even after doing everything you can to make running your test suites fast, it likely won't be enough. Be it the sheer amount of test cases or the requirement for a lot of integration and system level testing, at some point things are going to be "slow". But there are some additional strategies for dealing with that:

_Parallelize_

Run test cases and suites in parallel, as much as possible. Do not shy away from distributing the execution across multiple (virtual) machines. This may require additional design and/or refactoring to make that possible. However, if you already applied all of the points above, you usually should be able to parallelize quite a bit without changing anything.

_Prioritize (and fail early)_

Categorize/annotate all tests based on _how essential they are_ and _how quick they are_. The default should be for a test to be "most essential" and "fastest" and mark every test that deviates from that, e.g., exhausting options, testing more (theoretical) corner cases or more complex and slow workflows. Order all from "most essential" to "least essential", then from "fastest" to "slowest", execute them in that order and stop on the first failed test. While this does not help when every test passes, it helps to stop wasting time and resources when something fails.

_Prune_

Identify and remove tests which are not covering actual requirements anymore or never covered any particular requirements and are just testing implementation details. Just remove those tests. While this is not always easy and requires a good understanding of the system and its requirements, it is worthwhile to consider from time to time.

## I don't have time to do all of that, what should I do?

If nothing else, keep an eye on test execution times. Measure it, visualize it and make people aware of it. Listen to people around you, if they start complaining about it. Just by being aware that this might become a real problem in the future is often enough to plan for it right from the start.

*By {{page.authorName}}*
