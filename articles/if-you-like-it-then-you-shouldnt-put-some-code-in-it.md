---
authorName: Jonathan Rothwell
authorGithubUsername: jrothwell
issue: 94
title: If you like it then you shouldn't put some code in it
---
# {{page.title}}

In 2017, a crowdfunding campaign from Australia claimed that “in a world of technical overload there is sometimes no space to fit the simple things on your \[bicycle\] handlebars.” They wanted AU$85,000 to manufacture ‘the simple bike bell’.

The ‘simple’ bike bell worked like this: Instead of of striking an actual clapper against a metal bell, you have a small button which you mount on your handlebars. You pair the button with your phone (which must run a supported operating system.) When you want to use the bell, you press the Bluetooth button. This sends a message to your phone (hopefully charged, within range, with Bluetooth turned on, and with the manufacturer’s app open and running.) Provided these conditions are all met, your phone’s speaker plays the sound of a bicycle bell... probably. What could be simpler than that? (Kickstarter users only pledged 1.7% of its funding target.)

What are the thought processes that lead to trashy or tasteless IoT solutions like this? It’s simple: someone somewhere sees an itch, which they scratch with what they know: technology. They then pat themselves on the back for being so ‘disruptive’, make a few news releases, and voilà: profit. (Maybe.)

Meanwhile, on our morning coffee break, we read the news and roar with laughter. “Remember that awful Fitbit for dogs thing? They were running a six-year-old version of Android. Now they’ve all been pwned and being used to mine bitcoin! Hah! What were they thinking?”

We then walk back into the office, and proceed to make exactly the same mistakes as the people who make these terrible ‘connected’ cat litter trays and ‘smart’ toasters. As software developers, we follow the same thought process every day. We see someone with a problem, dig into our toolbox of technical solutions, and try to sell one of them to fix it in a clumsy way.

Alarm bells should ring when you end up changing a problem to fit your proposed solution. “The latin alphabet was created thousands of years ago and is optimized for writing, not reading,” says the website for a ‘horizontally compact’ font. “About time for an update, no?”

The ‘update’? Replace the alphabet with dots bearing no resemblance to the conventional alphabet, and squidge words into something that looks like the read-out from a radio telescope. Sound confusing? Not to worry: the website claims it takes “about 20 minutes to get \[the glyphs\] into your short term memory. Skip the next episode of Glee and test your mental acuity!”

Where’s the joy in reading a good book, if understanding the words becomes a test of mental acuity? Where’s the convenience in cycling to the shops for a loaf of bread, if you have to spend five minutes un-pairing and re-pairing your phone with the ‘simple’ bike bell first?

In 1927, ninety years before the silly bike bell, HG Wells, author of *The War of the Worlds*, wrote in the *New York Times*: “I have recently seen the silliest film.” He took issue with the film’s core principle, that automation creates drudgery: Wells complained it anticipated “not unemployment, but drudge employment, which is \[...\] passing away.” The film Wells was eviscerating? Fritz Lang’s *Metropolis,* in which armies of workers toil in servitude to giant automata.

Seventy-one years later, low-paid armies of workers are employed by financial institutions, to manually enter data into five separate systems; and by social networks, to manually decide if images are too gory, or pornographic, to be allowed. Automation is here, and our half-baked idea of ‘efficiency’ has begotten drudgery.

The Agile Manifesto defines simplicity as “maximizing the amount of work not done.” We take this to mean minimising lines of code, cyclomatic complexity, or the number of bugs we fix. Some people even use it to legitimise hacks, or “smashing it in.” I think this misses the point.

Instead, we could prioritise minimising the amount of drudgery we create with our software. We could minimise the number of hacks or shortcuts our users have to use to get the result they want. And yes, sometimes this means maximising the amount of work *we* don’t do, by minimising the amount of software we build to solve the problem. After all, software means bugs; as soon as it connects to the internet, it becomes an attack surface.

Maximising the amount of stuff *not done* isn’t a radical concept. Mechanical engineers know how important it is to reduce moving parts to a minimum. A bike bell that consists of a clapper striking a metal surface is less complex than a Bluetooth button/mobile app combination, and less expensive; it's also more reliable, and more predictable. “Less is more” is nothing new.

We can, and should, do better than to trammel people with unnecessary new drudgery. Think about this the next time you want to embark on a massive, all-encompassing refactor of an old monolith into hundreds of microservices. Take a step back, and don’t waste your time on an ‘engineer’s solution.’

*By {{page.authorName}}*
