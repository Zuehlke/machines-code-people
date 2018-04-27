---
authorName: Erik Steiner
authorGithubUsername: estfra
issue: 63
title: Successful Agile Device Development with Continuous System Integration
---
# {{page.title}}

TO BE SHORTENED!!!

A functioning continuous integration (CI) infrastructure is the core of successful agile software development. In consequence, successful agile system development should be based on a functioning CI infrastructure on the system level. 
 
Continuous Integration of Software
 
A CI infrastructure for software development (herein after referred to as "Software CI") enables frequent (even several times a day) integration of locally developed source code to the mainline of a software project. Ideally, every source code check-in to the mainline triggers the build process of the software, the unit test runs, the integration test runs, and even the software system test runs. Depending on the complexity and size of the software functionality this process may vary, e.g., different build scenarios like nightly or weekly build may be applied.
 
Software CI helps in constantly ensuring the consistency of the software and allows for a potentially shippable software product on a regular basis. Additionally, a working Software CI is crucial for fast regression testing in case of planned software changes – especially code refactorings. Refactoring is done if the source code does not allow for implementation of the next functionality. During refactoring the relevant parts of the source code are changed to allow for implementation of the new functionality without changing the current behavior of the software. This eliminates big upfront design for functionality that may be changed or removed in the course of the project.
 
Continuous Integration of Embedded Software
 
The same advantages can be achieved with embedded software as part of a system development project. Embedded software can be developed in an agile way almost without interfering with the development of the mechanical or electronic parts of a device. While "standard software" is developed on and for commercially available standard hardware (e.g., PCs, servers, industrial PCs, mobile phones) the embedded software may have to be developed for a specific embedded processor platform.
 
The electronics of the device – the PCBs containing the specific processor – may be under development themselves. In this case, the embedded software could first be developed as a "simulation" running on a PC work station. In the next step an evaluation board of the platform vendor could be used as long as the device electronics are not available. In the last step, the software is integrated on the final device’s electronics.
 
Each of these targets (simulation, evaluation board, device electronics) can successively be integrated into the Software CI infrastructure. This ensures that the evolving software is running on the available target at the time. This process needs minimal interaction with the hardware engineers. They should communicate the planned availability of hardware platforms or device generations, at least.
 
However, the engineers still need to agree on the implementation of functional requirements, non-functional requirements, safety requirements, interfaces, etc. But the development of electronics, mechanics, and software can be done (and often is done) (almost) independently. 
 
Big Bang System Integration
 
Software CI as part of a system development project is important to ensure the desired software quality over time. However, CI only on the software level does not really attack the risk for failing during (final) system integration – aka "big bang integration": The software is working as expected, the mechanical parts are within tolerances, the electronic circuits are working properly, and the interfaces have been correctly implemented by all engineering disciplines. Finally, all parts are put together only to discover that the system does not work as intended – despite all the "green light" status reports about progress in each engineering discipline throughout the project.
 
At that late point in time the engineers usually get nervous about finding defects, discussing which discipline to blame, and trying to avoid changes in their own field of work. From my personal experiences, this is not fun and will almost certainly delay a project significantly.
 
Continuous Integration on the System Level
 
In my point of view System CI helps with avoiding such "big bang" integration effects. It is far from realistic to achieve the continuity of the fast integration cycles of software, e.g., check-in builds, on the system level. However, the principle of continuously integrating parts to a whole applies at the system level, too.
 
The continuity of software integration is based on the integration of source code parts into the mainline whereas the continuity of system integration is based on the availability of system parts over time, e.g., PCBs, mechanical parts, cables, software functionality, infrastructure, test stands, etc.
 
System CI in Action
 
A real life project uses a plain plastics board (size of about 40 cm * 80 cm) that constitutes the base board for system integration. 

The main processor of the system is part of the product-specific electronics main board. This main board is under development and will not be available as soon as software development would like it to be. However, to allow for early software-hardware integration, an evaluation board is screwed onto the base board.
 
In combination with additional connectors and debuggers screwed onto the base board the initial system integration is ready to be used by the team: the software engineers develop software, the electrical engineers learn about the specialties of the processor, the infrastructure engineers set up the automated System CI infrastructure, and the test engineers start implementing the automated system test stands - all using the processors's evaluation board. 
 
The next integration step involves the control of a stepper motor as part of a subsystem. The subsystem will be controlled by a custom-made electronics interface board that is not available yet. Instead of waiting for the final electronics, a commercially available motor control board is screwed on the baseboard, connected to the evaluation board and to the motor. This enables the software engineers to start developing the motor control software and the mechanical engineers to measure relevant aspects of the motor dynamics.
 
The system integration evolves over time: The commercial motor control board is replaced by the first version of the subsystem interface board on its availability. This will be replaced by the next revision. At some point in time the processor evaluation board will be replaced by the first version of the custom-made electronics main board. And so on...
 
Guidance by "Integration Vision"
 
The evolution of the System CI is driven by a roughly planned "integration vision". This had been just a sketch on a whiteboard of how the flow of system parts might be put together over time. The integration vision is not a detailed plan but a guidance for the integration activities on the system level.
 
The concrete integration of parts is planned and performed just on the availability of these parts – or maybe a short time ahead. The integration itself is performed as simple as possible, e.g., a specially developed sophisticated mechanical fixation is not needed if a tape is sufficient to attach one part to another.
 
System CI is a constant flow of adding parts and replacing parts with, for example, more matured parts or new revisions of parts. The evolving system is the central target of the System CI infrastructure. The infrastructure cares for, e.g., building the software, deploying the software to the currently integrated system, and automatically testing the realized system functionality.
 
This allows for regression testing on the system level which is important in dealing with all the changes on the system integration board – as software regression testing is important in dealing with all the changes (refactorings) in software development.
 
Fail Early! 
 
System CI enables us to fail early and allows for time to react, change, and test in fast cycles. Hence, System CI heavily reduces the risk of late design breakage. Additionally, the progress of system development need not only be reported but can be demonstrated with the current state of the integrated system.
 
The order of meaningful system integration steps needs to be roughly planned. Given a product vision and a draft system architecture a value- and risk-based system backlog planning leads to meaningful system integration steps.
*By {{page.authorName}}*

{% include "./_example.resources.md" %}
