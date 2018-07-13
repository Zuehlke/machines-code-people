---
authorName: Erik Steiner
authorGithubUsername: estfra
issue: 63
title: Successful Agile System Development with Continuous System Integration
---
# {{page.title}}

A functioning continuous integration (CI) infrastructure is the core of successful agile software development. In consequence, successful agile system development, e.g. a medical device, should be based on a functioning CI infrastructure on the system level. 
 
Continuous Integration of Software
 
A CI infrastructure for software development (herein after referred to as "Software CI") enables frequent (even several times a day) integration of locally developed source code to the mainline of a software project. At the end of the build process automated test run on different integration levels. Software CI helps in constantly ensuring the consistency of the software and allows for a potentially shippable software product on a regular basis. 
 
The same advantages can be achieved with embedded software as part of a system development project. Embedded software can be developed in an agile way almost without interfering with the development of the mechanical or electronic parts of a device. 
 
The electronics of the device – the PCBs containing the specific processor – may be under development themselves. In this case, the embedded software could first be developed as a "simulation" running on a PC work station. In the next step an evaluation board of the platform vendor could be used as long as the device electronics are not available. In the last step, the software is integrated on the final device’s electronics.
 
Each of these targets (simulation, evaluation board, device electronics) can successively be integrated into the Software CI infrastructure. This ensures that the evolving software is running on the available target at the time. However, the different engineering disciplines still need to agree on the implementation of functional requirements, non-functional requirements, safety requirements, interfaces, etc.
 
Software CI as part of a system development project is important to ensure the desired software quality over time. However, CI only on the software level does not really attack the risk for failing during (final) system integration – aka "big bang integration".
 
Continuous Integration on the System Level
 
System CI helps with avoiding such "big bang" integration effects. It is far from realistic to achieve the continuity of the fast integration cycles of software, e.g., check-in builds, on the system level. However, the principle of continuously integrating parts to a whole applies at the system level, too.
 
The continuity of software integration is based on the integration of source code parts into the mainline whereas the continuity of system integration is based on the availability of system parts over time, e.g., PCBs, mechanical parts, cables, software functionality, infrastructure, test stands, etc.
 
The evolution of the System CI is driven by a roughly planned "integration vision". This had been just a sketch on a whiteboard of how the flow of system parts might be put together over time. The integration vision is not a detailed plan but a guidance for the integration activities on the system level.
 
The concrete integration of parts is planned and performed just on the availability of these parts – or maybe a short time ahead. The integration itself is performed as simple as possible, e.g., a specially developed sophisticated mechanical fixation is not needed if a tape is sufficient to attach one part to another.
 
System CI is a constant flow of adding parts and replacing parts with, for example, more matured parts or new revisions of parts. The evolving system is the central target of the System CI infrastructure. The infrastructure cares for, e.g., building the software, deploying the software to the currently integrated system, and automatically testing the realized system functionality.
 
This allows for regression testing on the system level which is important in dealing with all the changes on the system integration – as software regression testing is important in dealing with all the changes (refactorings) in software development.
 
Fail Early! 
 
System CI enables us to fail early and allows for time to react, change, and test in fast cycles. Hence, System CI heavily reduces the risk of late design breakage. Additionally, the progress of system development need not only be reported but can be demonstrated with the current state of the integrated system.
 
The order of meaningful system integration steps needs to be roughly planned. Given a product vision and a draft system architecture a value- and risk-based system backlog planning leads to meaningful system integration steps.

By {{page.authorName}}*

{% include "./_example.resources.md" %}