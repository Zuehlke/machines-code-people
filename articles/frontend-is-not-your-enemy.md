---
authorName: Janko Sokolović
authorGithubUsername: jasofalcon
issue: 81
title: Frontend Is Not Your Enemy
---
# Frontend Is Not Your Enemy

For many years, developers are discriminating frontend technologies.

* _“It is too volatile!”_, some said

* _“But I've just learned Angular 1.0 yesterday, today it's already v3.3.1”_, a man yelled while hiding the tears...

However, frontend has exploded in last decade, due to so many innovative requirements to create the most user-friendly web app.
Nonetheless, many good things have come out of this wormhole...

## ECMAScript and OOP

ECMAScript is a standard which drives all new native JavaScript features. ES**6** specifically, brought many improvements which developers craved for a long time.

Biggest leap forward - Classes! There is no longer need for that cold sweat before we use Prototype or function constructors, hoping chaos won't unfold in process.

There are other features which you will fall in love with. Like _let, const, lambdas, destructuring, async/await, default params..._

I advise to look into ES6 documentation and get familiar with the features.

## Compile Time Checking

Ok, I know who you are... You are one of those people who call themselves _back-end_ developer. And you probably worked in strongly typed languages, and you are used to having your IDE insult you with **_Cannot assign boolean to String!_** So you find frontend rather repulsive.

Well guess what, you have all that now with TypeScript! You can even customize the guidelines which the team will agree upon, and engineers will be notified if they for example define a method without a return type.

You are probably thinking: _"Ok well keyword **const** exists in ES6, my browser will tell me I cannot reassign it, I don't need TypeScript"_. That is correct, but now, you will be notified at compile-time, meaning your app won't build until you fix the issue. Thus, we have strongly typed JavaScript app.

It has all the OO principles that Java has (and much more), such as interfaces, abstract classes, enums, etc...

## Build Tools

Yes, there's a proper build in frontend. For a while now. And hear this, one can even import .css in .js files now! I know, what kind of monster would do such a thing. Well...

**Node** basically opened the door to a whole new universe of wizardry we can do in front-end development. Node is a popular JavaScript runtime built with V8 engine (same as Chrome). With Node, you can easily build scripts or web apis that execute on any OS environment. Many big players use it, such as Uber, Netflix, PayPal, etc... 
It started with simple task-runner packages (Grunt and Gulp) that can help you organize your code, clean-up, uglify/minify it, and much more. Now we have **Webpack**, the most popular build and building tool on frontend. Using various loaders, you can easily import modules and do all kinds of transformations on your code, from development to deployment phase.

Regardless of the tools you prefer, it is suggested to, when deciding on the tool, do thorough analysis, and choose the one which is battle tested, has a great community support, is feature-rich, and for complex project - is performant.

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

_"But which one?"_ Well, it is indeed painful to choose a best framework in the ocean of great ones. Today, I would recommend writing a small _todo_ app in **React**, **Angular** and **Vue**.

## Testing

Since frontend apps are becoming more and more complex and heavy with logic, it is crucial to treat them like grown-ups. Thus, testing JavaScript code is not a luxury any more, but rather a duty.
Again, _"WHICH ONE?"_, you might scream, and again, _"It depends_", I shall respond.

As you may guess, each framework has its own testing tool.
These are some popular ones:

### Jasmine

One of the most popular testing frameworks. Simple to set-up and you can have your first tests in minutes. Widely respected by Angular lovers.

### Mocha

Probably the most used one nowadays. Very flexible, although you need some extra time to setup as you will probably want to install assertion or mocking libraries.

### Jest

Became rapidly popular due to the fact it came from Facebook alongside React. Jest also has the coolest logo and a good way to keep your UI tested using snapshots.

## Final words

Either for your personal development or for project needs, you should invest effort in mastering frontend technologies.

_"Any application that can be written in JavaScript, will eventually be written in JavaScript."_ - Atwood's Law
