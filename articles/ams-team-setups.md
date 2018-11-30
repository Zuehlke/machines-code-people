---
authorName: Tijana Krstajic, Guido Angenendt
authorGithubUsername: tkrstajic,doogu
issue: 91
title: The evolution of support & operations team setups
---
# {{page.title}}

Each software development project approaches a GoLive at some point during the software development and enters the Live phase. Actual end-users start benefiting from implemented features and the sponsor gets the return on his investment. However, the phase before and after a GoLive can be intense. Aspects around the operational readiness, as well as organizational and procedural considerations regarding the future support and operation are then at the heart of discussions. 

There are many supporting factors that can lead to a project's success in this phase. One key good practice from our projects is that colleagues with experience in support & operations are involved early in the process. A Service Manager can provide valuable inputs already during the bid phase in terms of Release and Incident Management. And a DevOps Engineer can setup a CI/CD pipeline already at the start. By doing so, they ensure a smooth, high quality releasing to Production. 

But still, when a software development project approaches the Live phase, the team in charge undergoes a shift in focus and setup. In the following, we present a set of collaboration models for teams, that are transitioning from initial software delivery to continued delivery with support & operations.

## Fixed Developer
![Fixed Developer](./ams-team-setups/fixed.png)
 
One or many Developers are solely assigned to support & operations activities. The benefit of this approach is that there's no capacity impact for ongoing development - as the fixed developer(s) are not participating in that. Also, it ensures that there's always a responsible team member available to respond to support & operations topics. However, this advantage comes along with a huge downside in terms of knowledge transfer. As the developer is not participating in ongoing development, it will be a challenge to support newly developed features on production. As a result, the fixed developer will anyway approach team members in case of issues on production. This effectively leads to a capacity impact, so the upside of this approach turns out to be questionable in practice. Furthermore, a developer is usually not fully allocated to a project in this scenario. Because there are usually not enough incidents to keep an expert busy 24/7, a developer is as assigned to multiple projects. This leads to cross-project planning conflicts, in particular when there're incidents to solve at the same time in all of them. Last but not least, this setup leads to an increased amount of context switching and will therefore reduce the overall efficiency of any person in charge. Given these practical implications, our conclusion is that such a scenario only fits for projects, where there's no ongoing development. 

## Rotating Developer
![Rotating developer](./ams-team-setups/rotating.png)

To mitigate before mentioned downsides, we experimented with a 'Rotating Developer' setup. Here, the responsibility towards support & operations duties rotates throughout the team. The related advantages here are threefold:
* Between rotations, the developers are participating in ongoing development and therefore possess the knowledge to support incident resolution on production. 
* Developers that fixed issues on production during their rotations will tackle the development of new features with a different perspective. The 'eat your own dog food' effect turns out to have a positive impact on quality after a couple of rotations. 
* A developer can be allocated fully to one project, which mitigates a central issue of the Fixed Developer approach. 
However, also this collaboration model shows downsides. During their rotations, developers cannot be assigned fully to backlog work and due to the hardly plannable nature of production incidents, it can happen that even the reserved capacity is not sufficient. In addition, this model is a challenge in situations where there's a broad spectrum of technologies in. That's simply because one single developer is usually not an expert in all areas. But given a less diverse technology mix, this model is well suited for projects with strict delivery timelines - as the rotation model introduces appropriate planning means. 

## One Team

![One Team](./ams-team-setups/one.png)

The motivation to continuously improve our team setups has led to a third model. It integrates the benefits of former models and attempts to mitigate two remaining downsides. As noted earlier, it's a challenge to take over responsibility for support & operations as a developer in projects where there's a diverse technology mix. Furthermore, despite having established a lean knowledge transfer due to rotations, there's still some overhead involved - e.g. on a handover. We therefore started to experiment with team setups, where the whole team is continuously in charge for both ongoing development and support & operations activities - therefore called 'One Team' model. Once an Incident comes in, the team decides who's best suited to tackle the issue in terms of knowledge and capacity. Therefore, this model is suited for projects with a diverse technology mix. Furthermore, it significantly increases efficiency because it eliminates the need of handovers and it benefits from having a team being in charge of a common goal. This team spirit releases supportive behaviours, for instance, even if a specific team member has taken over the tasks of resolving an incident on production, the remainder of the team will provide more input and support then in a scenario where this responsibility is delegated to a single person in charge. Furthermore, the before mentioned 'eat your own dog food' effect scales in that matter. A team that is very aware of the challenges of any given software solution on production will take very informed decisions regarding new features. However, also this collaboration model has its downsides. The degree of issues to resolve on production impacts the velocity of an team and it can happen that a Sprint goal gets jeopardized. Therefore, this setup is best suited for projects with a balanced priority between delivery and maintenance streams. If it's possible to postpone the delivery of some less crucial new features for the greater good of stable operations on production at times, then this model is the best choice. In fact, experience shows that no other model allows for a faster and higher quality resolution of incidents.

As you can see, the collaboration models did undergo an evolution over time, starting from Fixed Developer as a logical and simple setup to start with over Rotating Developer and lastly One Team as a logical conclusion: The overall goals are one, so the team should be one and share the responsibility. 

*By {{page.authorName}}*