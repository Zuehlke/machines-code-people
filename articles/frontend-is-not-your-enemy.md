---
authorName: Janko Sokolovic
authorGithubUsername: jasofalcon
issue: 81
title: Frontend is not your enemy
---
# {{page.title}}

For many years now, we have been neglecting frontend web technologies.

* _“It is too volatile!”, I've heard someone say at the back

* _“But I only learned Angular 1.0 yesterday, and today it's already v3.3.1”_, one Java developer yelled while hiding the tears...

We have been witnessing an explosion in frontend for a decade or so, due to there being so many innovative requirements to create the most user-friendly web app.
As you will see, many good things have come out of this pile...

## ECMAScript and OOP

ECMAScript is a standard that drives all new native JavaScript features. ES**6** in particular brought many improvements that developers had craved for a long time.

A big step forward are classes. There is no longer a need for that cold sweat before we use Prototype or function constructors, hoping chaos won't unfold in the process. Classes are especially useful for developers who come from an object-oriented language like Java or C#.

There are also other features that you will fall in love with. Like _let, const, lambdas, destructuring, async/await, default params..._

I recommend taking a look into the ES6 documentation and getting familiar with the features.

## Compile time checking

Ok, I guess that some of you might feel more comfortable working on *backend* with strongly typed languages, and you are used to having your IDE insult you with **_Cannot assign boolean to string!_** So you perhaps find frontend rather repulsive.

Well, guess what, you have all that now with TypeScript! You can even customise the guidelines and allow the team to agree on these, so that engineers will be notified if they, for example, define a method without a return type.

It has all the OO principles that Java has (and much more), such as interfaces, abstract classes, enums, etc...

## Build tools

Yes, there's a proper build in frontend. And this has been the case for a while now. And do you know what, one can even import .css into .js files now! I know, what kind of monster would do such a thing. Well...

**Node** basically opened the door to a whole new universe of wizardry we can do in frontend development. Node is a popular JavaScript runtime built with V8 engine (the same as Chrome). With Node, you can easily build scripts or backend web APIs that execute on any OS environment. Many big players use it, such as Uber, Netflix, PayPal, etc... 
It started with simple task-runner packages (Grunt and Gulp) that can help you organize your code, clean-up, uglify/minify it, and much more. Now we have **Webpack**, the most popular build and bundling tool on frontend. Using various loaders, you can easily import modules and do all kinds of transformations on your code, from development to deployment phase.

When you have to choose a build tool, choose the one which is battle tested, has a great community support, is feature-rich and performant.

## Frameworks and libraries

What kind of IT article would this be if the word *framework* didn’t find its way on to the page somewhere. However, I will try to be unbiased and talk about them in general.

Should you use them? Yes! They help a lot with development and in terms of keeping your architecture clean. They also help with introducing new team members, as they become familiar with them.
Most of the mature ones provide similar solutions and follow similar patterns:

* Data binding
* Routing
* High performance templates
* State management
* Virtual DOM
* Testing utilities

_"But which one should be used?"_ Well, it is indeed painful to choose the best framework in the ocean of great ones. Currently, I would recommend evaluating **React**, **Angular** and **Vue**.

## Testing

As frontend apps are becoming more and more complex and heavy with logic, it is crucial to treat them like grown-ups. Thus, testing JavaScript code is not a luxury any more, but rather our duty.
Again, _"WHICH ONE?"_, you might scream, and again, _"It depends_", I shall respond.

As you might have guessed, each framework has its own specific testing tool.
These are some popular ones:

### Jasmine

* Simple to setup
* Mocking support
* Widely used with Angular

### Mocha

* Most used nowadays
* Very flexible
* Needs some additional setup time

### Jest

* UI testing with snapshots
* Becoming increasingly popular
* Best choice when using React

### Karma

* Flexible
* Run tests in a page-like environment
* Setup can be somewhat cumbersome

Other tools you might want to look into include Protractor, CucumberJS, Ava, Chai,  Enzyme.

## Final words

Either for your personal development tasks or for project needs, you should invest effort in mastering frontend technologies.

_"Any application that can be written in JavaScript will eventually be written in JavaScript."_ - Atwood's Law

*By {{page.authorName}}*