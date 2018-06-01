---
authorName: Janko Sokolović
authorGithubUsername: jasofalcon
issue: 81
title: Frontend Is Not Your Enemy
---
# Frontend Is Not Your Enemy

For many years now, we are neglecting frontend web technologies.

* _“It is too volatile!”_, I've heard someone say in the back

* _“But I've just learned Angular 1.0 yesterday, today it's already v3.3.1”_, one Java developer yelled while hiding the tears...

However, we are witnessing explosion in frontend for a decade or so, due to so many innovative requirements to create the most user-friendly web app.
As you will see, many good things have come out of this wormhole...

## ECMAScript and OOP

ECMAScript is a standard which drives all new native JavaScript features. ES**6** specifically, brought many improvements which developers craved for a long time.

A big step forward are classes. There is no longer need for that cold sweat before we use Prototype or function constructors, hoping chaos won't unfold in process. Classes are especially useful for developer coming from an object-oriented language like Java or C#.

There are other features which you will fall in love with. Like _let, const, lambdas, destructuring, async/await, default params..._

I advise to look into ES6 documentation and get familiar with the features.

## Compile Time Checking

Ok, I guess that some of you might feel more comfortable working on *backend* with strongly typed languages, and you are used to having your IDE insult you with **_Cannot assign boolean to String!_** So you find frontend rather repulsive.

Well guess what, you have all that now with TypeScript! You can even customize the guidelines which the team will agree upon, and engineers will be notified if they for example define a method without a return type.

It has all the OO principles that Java has (and much more), such as interfaces, abstract classes, enums, etc...

## Build Tools

Yes, there's a proper build in frontend. For a while now. And hear this, one can even import .css in .js files now! I know, what kind of monster would do such a thing. Well...

**Node** basically opened the door to a whole new universe of wizardry we can do in front-end development. Node is a popular JavaScript runtime built with V8 engine (same as Chrome). With Node, you can easily build scripts or backend web apis that execute on any OS environment. Many big players use it, such as Uber, Netflix, PayPal, etc... 
It started with simple task-runner packages (Grunt and Gulp) that can help you organize your code, clean-up, uglify/minify it, and much more. Now we have **Webpack**, the most popular build and bundling tool on frontend. Using various loaders, you can easily import modules and do all kinds of transformations on your code, from development to deployment phase.

When you have to choose a build tool, choose the one which is battle tested, has a great community support, is feature-rich and performant.

## Frameworks and Libraries

What kind of IT article would this be if word *framework* wouldn't find its way through these lines. However, I will try to be unbiased and rather talk about them in general.

Should you use them? Yes! They help a lot with development and keeping your architecture clean. It also helps with introducing new team members as they are familiar with it.
Most of mature ones provide similar solutions and follow kind of alike patterns:

* Data binding
* Routing
* High performance templates
* State management
* Virtual DOM
* Testing utilities

_"But which one?"_ Well, it is indeed painful to choose the best framework in the ocean of great ones. Today, I would recommend evaluating **React**, **Angular** and **Vue**.

## Testing

Since frontend apps are becoming more and more complex and heavy with logic, it is crucial to treat them like grown-ups. Thus, testing JavaScript code is not a luxury any more, but rather our duty.
Again, _"WHICH ONE?"_, you might scream, and again, _"It depends_", I shall respond.

As you may guess, each framework has its own testing tool.
These are some popular ones:

### Jasmine

* Simple to setup
* Mocking support
* Widely used with Angular

### Mocha

* Most used nowadays
* Very flexible
* Needs some extra setup-time

### Jest

* UI testing with snapshots
* Becoming increasingly popular
* Best choice when using React

### Karma

* Flexible
* Run tests in page-like environment
* Setup can be somewhat cumbersome

Some other tools you might want to look into: Protractor, CucumberJS, Ava, Chai,  Enzyme.

## Final words

Either for your personal development or for project needs, you should invest effort in mastering frontend technologies.

_"Any application that can be written in JavaScript, will eventually be written in JavaScript."_ - Atwood's Law
