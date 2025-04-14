*How does this project contribute to the overall Vision of Columbus
State University?*

Columbus State University's vision prioritizes student success and
academic excellence. By tasking students with the design,
implementation, and maintenance of a private cloud for real-life usage
by peers, this project will provide both career-relevant experience and
daily utility for computer science students. Senior-level students who
work on the cloud will gain invaluable experience with requirement
analysis, collaboration, stakeholder communication, and production
procedures. Younger students will have the chance to work with
industry-standard cloud computing technology over the courses of their
studies. The project will provide a significant new way for students to
engage with computer science.

*What does this project need to accomplish?*

Successful execution of the project is defined by the establishment of a
functional private cloud from bare metal, local servers. The cloud
should be fully accessible by students over the campus LAN and the
Internet. Students will be able to access virtual computing services
on-demand, simplifying their development process. The cloud must be
highly maintainable and extensible, allowing future senior students to
continue and expand upon our efforts. Clear documentation on the system
will be necessary for future project continuation.

*What are the benefits?*

Undergraduate and graduate computer science students will be able to
experiment with programming and system administration on ephemeral
virtual machines, allowing for quick, low-risk access to unfamiliar
operating systems and environments. As a private, on-premises cloud
platform, the project will be faster and less expensive than offerings
from public cloud providers. Large datasets, which are a vital component
in industry trends like big data and AI, can be stored locally for
reduced costs and increased computational accuracy. The hands-on
experience gained from the use of these machines will strengthen
students' overall understanding of IT infrastructure containing
networking, hardware, and software components. Senior students who work
directly on the cloud servers will gain further experience with real
hardware that would otherwise have prohibitively high barriers to
entries.

*Please list the deliverables.*

The primary deliverable will be an OpenStack-based cloud infrastructure,
fully deployed and accessible by students through a web-based dashboard
and a command line interface, which can provide on-demand virtual
machines.

A dashboard for maintainers and faculty will provide administrative
access and system monitoring.

Documentation for users will be created to explain the basics necessary
to utilize the system's capabilities.

Documentation for maintainers will enable the project to continue and
expand.

*How is data being made secure for this project?*

A variety of security measures will be conducted. The physical servers
will operate from a locked room. Further physical security can be
achieved with the lockable server front bezels, and a lockable server
rack. The servers' storage disks are encrypted with LUKS (Linux Unified
Key Setup). Access to the cloud will be managed with OpenStack Keystone,
an implementation of OpenStack's token-based authentication API. The
cloud will be connected through a private VLAN with configurable access
control lists. Usernames and passwords for the servers will be stored
and managed with BitWarden, an open-source, encrypted password manager.

*Does the project need BC/DR plans in case of a disaster?*

Yes, some plans must be created for continuation and recovery in
disasters. In the case of power outages, documentation on server startup
will be necessary. Similarly, plans for network connection and
reconnection are vital for continued availability. Evaluations should be
conducted on the cloud's resilience and critical systems in order to
prioritize future maintenance and upgrades.

*Identify any risks or obstacles that may cause the project to fail.*

A short list of serious risks threaten the project's success. The
necessity of departmental support for the project characterizes
immediate risks. Sufficient network access to connect the cloud servers
to each other and the Internet has not been granted, halting progress
towards a full deployment. Funding for future maintenance and upgrades
may become necessary, requiring assistance from the Computer Science
department, in potential events of hardware failures or obsolescence.
Prominent among long-term obstacles is the ongoing transfer of knowledge
between student maintenance teams; continual effort will be required on
behalf of the Computer Science faculty to ensure successful preservation
of existing documentation. Outages and ensuing disaster recovery are
long-term risks which can be largely mitigated through documentation.

*List what the project will and will not address.*

The project will address the provision of cloud computing resources for
experiential learning. To preserve resource availability, it will not
provide long-term server hosting, virtual machines, cloud storage, or
high-performance computing.

-   Networking resources for scalable website platforms

4.8 KWh/day / server. 144 KWh/month/server. \~432 KWh

Assuming the servers idle at 200W, the cloud computing setup will
consume approximately 430 KWh per month.

+----------------------------------------------+
| **Project Start (estimated):** January 10th  |
+==============================================+
| **Project Finish (estimated):** May 5th      |
+----------------------------------------------+
| **Project Cost**\                            |
| **(estimated):**                             |
|                                              |
| [Equipment]{.underline}                      |
|                                              |
| -   Front Bezel with key 710 \$ 40 (renewed) |
|                                              |
| -   Front Bezel with key 710 \$ 40 (renewed) |
|                                              |
| -   Front Bezel with key 730 \$ 49 (renewed) |
|                                              |
| -   Rack Rail 710 \$ 97.35/\$129 (renewed)   |
|                                              |
| -   Rack Rail 710 \$ 97.35/\$129 (renewed)   |
|                                              |
| -   Rack Rail 730 \$                         |
+----------------------------------------------+
| **Funding Source:** For Dr. Zhou             |
+----------------------------------------------+

What I've learned so far:

Private Server Setup

Installation of dev stack, OpenStack, Kubernetes, and Kolla Ansible

Updating a private server in the Lifecycle Controller

Server Rack Setup

Structuring OpenStack system

Multi-node -- connect all three servers together

Document with pictures of server creation
