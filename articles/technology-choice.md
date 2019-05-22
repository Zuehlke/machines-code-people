---
authorName: Carsten Kind
authorGithubUsername: carstenkind
issue: 100
title: The best technology is not always the best choice 
---
# {{page.title}}

As a technology consultant, you are responsible for recommending a technology that is suitable for the customer. That sounds simple, but it isn't. Especially if you get to know about a lot of new technologies at your company, and discuss them with colleagues so you become very familiar with them. The context in which the technology is to be used has to be taken into account. This means that the most advanced technology is not always the right technology for the customer. This also sounds like a trivial statement at first, but when you can see yourself how the latest technology enables the functional requirements X and Z, and fulfils the non-functional requirement Y, the decision can be difficult, and it becomes a real trade-off decision. 

Using two real-life examples, I would like to show how difficult this decision can be. 

A machine manufacturer wanted to develop new setup and operating software for its highly-specialised machinery. What exactly the data model should look like at the end was not defined, and there was a requirement for an accurate audit of who had made what settings on the machine. We decided to use event sourcing. The primary data source was not a relational database model that mapped the entities, but a list of events that described the change in the system state. This gave us a number of advantages: 
* The object model you are working on can be further developed without regard to the past. All you have to do is make sure that the events that are already saved can be applied to the new data model. This means that you can always create it again. 
* We guaranteed that we have all required data to provide the audit.
* In contrast to an audit table that is maintained separately, we used the events to intrinsically prevent the developers from forgetting an audit entry. 

As already planned from the outset, the machine manufacturer built up a powerful development team of its own, and ultimately took over responsibility for the development. However, the new development team was primarily familiar with the technologies for traditional data-driven applications, and when they took over responsibility for the architecture and further development of the machine software, they were uncomfortable with an architecture they had never seen before. In the end, they switched the application back to a relational database. And they are currently enjoying success with that. In retrospect, we do not feel that we did much wrong, but we apparently underestimated the uncertainty felt by a new team regarding this architecture, and the event sourcing concept was not strictly necessary. It was purely beneficial. 

The second example: In 2009/2010, Eric Meijer at Microsoft invented Reactive Extensions. This was initially a .NET library, which made it possible to express events as objects, and complex event sequences as higher-order events. Even early examples demonstrated the broad spectrum of use of this library: 
* One example showed how a sensor value becomes a valid alarm via multiple transformations. This means periodically querying values, creating averages using last values, mapping to binary values, and propagating only in the case of changes. 
* Another example showed how the requirements for an auto-complete selection box can be implemented. This means that the search query for the suggestions is not submitted if the text is empty or not typed in, and also that a running query is interrupted if further entries are typed in. 
* At a very early stage, we also saw the value in gesture recognition, and we were able to identify certain gestures from a sequence of specific movements, and demonstrated this at trade show appearances with the help of Kinect. 
* Others have also realised the great value in this library, so it has been ported to numerous programming languages. 
* Microsoft has also included the library in the .NET Framework for its Windows phones. 

However, the library has enjoyed only limited market penetration over the years, so it was necessary to be mindful of whether the library could be used in all good conscience. The library uses some approaches from functional programming. So, before any event occurs, the entire function chains are defined, in terms of what should happen when an event should occur. These events are provided as observables, and the events are only generated or observed when a consumer of these observables is interested in the potential outcomes. As powerful as this concept is, it can cause headaches for an untrained developer. 

There was a case with one of our projects, in which the usage of Reactive Extensions was removed because the developer, who had to fix a complicated bug, did not understand the code. In the end, the bug was somewhere else, but the code kept removed. 

There is a positive example of one customer using Reactive Extensions as an internal API for web services. That was risky, because although the solution was technically superior to the alternatives, it was not a common approach at that time. It was only justifiable because the customer already had a stable development team that could support the decision. 

The example also shows that a good solution takes years and marketing to become mainstream. Google has used the JavaScript variant of Reactive Extensions (RxJS) in the Angular2 framework to do just that – but 5 years later. There are now lectures at numerous conferences about RxJS and how it can be used. Google has helped to bring it out of its niche. You can now recommend this technology even if there will not be long-term access to the development team to provide training in it. 

So, if a technology or architecture is interesting because it is suitable for the problem but is niche or still upcoming, you need to make sure that the development team understands the technology, recognises its benefits and believes in it. Because the team will not get much confirmation that it is using the right technology.

*By {{page.authorName}}*
