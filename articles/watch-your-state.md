---
authorName: Raphael M. Reischuk
authorGithubUsername: reischuk
issue: 54
title: Watch Your State
---
# {{page.title}}


In May 1960, the legendary Peugeot 404 was presented to the public. Its manufacturing process was controlled by manually curated lists in which each car in the production pipeline had its particular entry. Car by car was assembled according to a fixed plan. Consequently, spontaneous adaptations or dynamic modifications of the production plan were impossible when components were suddenly missing, or when experts responsible for certain tasks got sick.

[](./watch-your-state/photo-1488724034958-0faad88cf69f.jpg)


#### It's All About State

The main factor to enable the transition from the early 60s' *centralized* setup to today's *decentralized* Industry 4.0 is the way in which state is handled: Today, each car body knows by itself its exact specification and configuration. Such local state provides a great deal of flexibility: the order in which cars are assembled can be adapted at any time. No central list or global database needs to be queried or updated. Fewer central points of failure and bottlenecks exist. Moreover, cars and other manufactured "smart" items can be connected, they can identify each other, and they can exchange information using a decentralized ad-hoc mesh-up topology. The exchange between the manufactured items is possible already during the production process. Thanks to early feedback, fewer dependencies, and more independent production units, it is possible to achieve early adaptation and just-in-time production. Consequently, production quality is significantly improved and costs are reduced.

#### State in Today's Communication Protocols

Turning from industrial production to Internet communication protocols, the goals of improving quality and reducing costs translate to reducing latency and lowering energy consumption:

1. When Internet user Alice connects to her online bank, she needs to authenticate before accessing her savings and transactions. To initiate such an authenticated session, she provides unique credentials (login and password, and hopefully a second authentication factor). If the login is successful, the bank grants Alice an access token valid for that very session. Alice can then seamlessly re-authenticate herself during the session using that token.

    Such a token contains information about the session, in particular, information to identify the user associated with the session. The token thus represents session *state*. The question we ask is where and how the bank should manage such temporary access tokens? The bank could store a copy of millions of such session tokens and perform equality checks with the tokens that Alice sends with her requests. If Alice's token exists in the list of copied tokens, the bank can safely assume it's indeed Alice who connects.

    This, however, is very inefficient as the bank's server needs to perform several memory lookups for each customer request to fetch the corresponding token. Unfortunately, most web application firewalls (WAFs) today work exactly this way.

    Before discussing smarter ways of handling access tokens, we look at two more examples.


2. Packet forwarding in today's Internet: When Alice sends a data packet to Bob, she adds Bob's IP address to the packet header and hands the packet over to her Internet provider. From then on, every router on the path from Alice to Bob extracts Bob's address from the packet to do a database lookup to retrieve information about the next hop, that is, where to forward the packet to. Each router bases its forwarding decision on local *state* that was previously learned from neighboring routers.

    This procedure is not only insecure (as the neighbors' information is not properly authenticated), but also very energy-consuming and inefficient (as millions of packets per second need to be looked up). Good news: A more secure and -- at the same time -- more efficient solution exists.


3. Finally, TCP's vulnerability against denial-of-service attacks: In the initial step of the three-way handshake between client and server, the server needs to store information about the client in order to remember the client when it completes the handshake. The storage of even small amounts of *state* can lead to attacks, when huge numbers of clients pretend to connect to the server, but execute only the first step of the three-way handshake. The server cannot know upfront if a client is malicious and thus keeps waiting for each client to come back to complete the handshake. Soon, when many clients connect simultaneously, the server's resources are exhausted and new connections cannot be accepted. Users then perceive the server as unavailable, aka under a denial-of-service attack.

Higher latency, reduced throughput, increased energy consumption, DoS attacks – what is the solution to prevent these design flaws in authentication, packet forwarding, and TCP? All examples have in common a non-optimal handling of state that is frequently consulted as part of mission-critical business processes.

#### Remediation

A crucial insight for remediation is that state should be stored by the service *requester*, not by the service *provider*. Examples include waiting stamps at the post office counter: they are stored by the waiting customer, not by the post department. Except for a single global counter, the post department keeps no state for each customer waiting in line.

A very similar solution works for web authentication: The server should not remember session state for each client, but sends to the client a cryptographically signed token with information about the session state. The client presents such token whenever it connects to the server, who then verifies the token's validity. Instruction sets on modern CPUs verify authenticated AES messages within roughly 50 cycles (20ns at 2.5GHz). For comparison: a DRAM memory lookup takes up to 200 cycles, and a round trip in a datacenter takes up to 500'000ns.

Packet forwarding should ideally work similarly: each packet should contain cryptographically protected information about its path to the destination. Each router on the path checks such forwarding information by efficiently verifying an AES-MAC, instead of wasting energy and time with costly database lookups. The efficacy of this solution is demonstrated by the Internet architecture SCION.


Finally, TCP's vulnerability can be fixed by so-called SYN cookies, i.e., sequence numbers that encode information about the client so that state at the server can be significantly reduced. Due to space constraints, we refer to the literature for more information.

