---
authorName: Janko Sokolović
authorGithubUsername: jasofalcon
issue: 81
title: Frontend is not your enemy 
---
# Frontend Is Not Your Enemy

For many years, developers are discriminating frontend technologies because of various reasons.

*“It is too volatile!”*, some said

*“But I've just learned AngularJS version 1.0 yesterday, today it's already v3.3.1”*, many yelled while hiding the tears...

*“It doesn't work the same in every browser!”*, others cried

*“NaN === NaN is* ***false***!”, was heard from distance...

We admit it. It is partially our fault. Us, engineers.

However, a big portion of the problem are the users. It is similar in other industries. Look at the hardware vendors, trying to create just perfect user experience. Now I have to call my Mom every time I get a new washing machine because I don't understand any of the icons on it. Similarly, frontend has exploded in last decade or so, due to so many different (innovative) requirements to create the most user-friendly web app.

Nonetheless, many good things have come out of this wormhole...

## ECMAScript and OOP

ECMAScript is a standard which drives all new native JavaScript features. ES6 specifically, brought many improvements which developers craved for a long time.

Classes. There have been several patterns used to simulate behavior of classes we are so fond of in OOP languages such as Java or C#. There is no longer need for that cold sweat before we use Prototype or function constructors, hoping chaos won't unfold in process.

```js
class MyObject {

    constructor(num: number) {
        this.field = number;
    }

    // property
    get square() {
        return this.field ** 2;
    }

    // method
    inc() {
        this.field++;
    }

}

let foo = new MyObject(42);

foo.inc();

console.log(foo.square); // 1849
```

There are many new features which you will fall in love with. Like *let, const, lambdas, destructuring, async/await, default params...*

It is highly advised to look into ES6 documentation and get familiar with the features. Visit <http://es6-features.org>

## Compile Time Checking

Ok, I know who you are... You are one of those people who call themselves *back-end* developer. And you probably worked in strongly typed languages, and you are used to having your IDE insult you with ***Cannot assign boolean to String!***  So you find frontend rather disgusting.

Well guess what, you have it all now! You have it with TypeScript (or Flow, KotlinJS, Elm...). You can even use tslint.json to define the guidelines which the team will agree upon, and engineers will be notified if they for example define a method without a return type.

```json
// tslint.json
{
    "rules": {
        "no-any": true,
        "triple-equals": true,
        "prefer-const": true
    }
}
```

You can check all available tslint rules here - <https://palantir.github.io/tslint/rules/>

Now that we have our simple tslint, let's see how it works:

```ts
// some-file.ts

let me: any = "John Doe"; // Error - cannot use 'any', use 'string'

me = false; // Error - cannot assign boolean to string variable.

const age = 17;

age = 18; // Error - cannot reassign const value

let isEighteen = age == 18; // Warning - Use === instead of ==

// Warning - `isEighteen` should be a const

```

You are probably thinking: "Ok well const is ES6, my browser will tell me i cannot reassign it". That is correct, but now, you will be notified at compile-time, meaning your app won't build until you fix the issue. Thus, we have strictly typed JavaScript app.

It has all the OO principles that Java has (and many much more sophisticated), such as interfaces, abstract classes, enums, and many many more.

If this catches your attention, I advise to visit https://www.typescriptlang.org/docs/handbook/basic-types.html for more detailed information.

## Build Tools and Node

Yes, you are on the same article. There's proper build in frontend. For a while now... And hear this, one can even import .css in .js files now! I know, what kind of monster would do such a thing. Well...

**Node** basically opened the door to a whole new universe of magic we can do in front-end development. And do so easily.

It started with simple task-runners that can help you organize your code, clean-up, uglify/minify it, and even transpile it to something different.

First tools worth mentioning was **Grunt** and **Gulp**, with much nicer syntax. Now we have **Webpack**, and just recently, version 4 was released. By the time you are reading this, it is probable that v5.0 is out. Also, there's a new Webpack nemesis called Parcel. It's in a hype phase now and many think it will overtake Webpack in upcoming years...

Regardless of the tools you prefer, it is suggested to, when deciding on the tool, do thorough analysis, and choose the one which is battle tested, has a great community support, is feature-rich, and for complex project - is it performant.

## Frameworks and Libraries

What kind of IT article would this be if word framework wouldn't be mentioned. However, I will try to be unbiased and rather talk about them in general.

Should you use them? Yes! They help a lot with development and keeping your architecture clean. You will also be able to integrate new engineers who will not be puzzled by your own "framework", which I agree, is the best.
Most of mature ones provide similar solutions and follow kind of alike patterns:

- Data binding
- Routing
- High performance templates
- State management
- Testing utilities

At the time being, I would just highly recommend to write a small *todo* app in React, Angular and Vue.

## Testing

Since frontend apps are becoming more and more complex and heavy with logic, it becomes crucial to treat them like grown-ups. Thus, testing javascript code is not a luxury any more, but rather a duty.
Again, *"WHICH ONE?"*, you might scream, and again, *"It depends*", I shall respond.

If you didn't cheat and have read last chapter, you will guess that each framework has its favorite testing tool.

However, I challenge you to try at least 3 different ones and choose what suits your projects best.

These are some popular ones:

### Jasmine

One of the most popular testing frameworks. Brings you assertions, mocks, spies. Great for unit-testing. It is simple to set-up, and you can have your first tests in minutes. Widely respected by Angular lovers.

### Mocha

Probably the most used one nowadays. It is very flexible, although you need some extra time to setup as you will probably want to install assertion or mocking libraries as well.

### Jest

Became rapidly popular due to the fact it came from Facebook alongside React. It plays well in benchmarkings due to its parallel testing. Jest also has a coolest logo and a good way to keep your UI tested using snapshots.

## Final words

You cannot miss JavaScript anymore. And you shouldn't. Either for your personal development or for project needs, you should invest effort in mastering frontend technologies.

*"Any application that can be written in JavaScript, will eventually be written in JavaScript."* - Atwood's Law
