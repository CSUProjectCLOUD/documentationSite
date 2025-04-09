Sprint Goal
===========

Personalized OpenStack Labs replicating AWS Canvas Labs or Azure
Microsoft.Learn Labs. Completing Dell Remote Access Controller needs to
enable headless server control. Stabilize rack rails. Clean up
documentation of CDG Sharepoint.

Thoughts on Direction of Project
================================

**Base OpenStack Deployment**

There are several routes for deployment that we are looking-that being
kolla-ansible or OpenStack-ansible, charmed OpenStack, multi-node
MicroStack, or a manual install.

However there are several issues that arise,

Kolla-ansible is the best route we have as the most popular deployment
method and is currently being maintained and has frequent updates. We
can not use this method as we are not allowed to access ansible through
the CSU network. This issue will also be consistant with
OpenStack-ansible.

Charmed-OpenStack by Canonical looks to be a good option however it's
last release was for 2023.2. It does not look to have had any updates
since then and we are a little worrisome this may remain the case for
the future. Multi-node Microstack, which was also created by Canonical,
was updated to handle smaller production level environments in 2023.
This is great news except there also looks to not be much surrounding
this since 2023 either and the risk for something with many restrictions
doesn't make it a desirable option.

Puppet, chef, salt, and many other configuration and deployment
management tools designed for OpenStack are older and unmaintained. They
are even stated not to use on the OpenStack website. The primary option
for us at this point is either manual or to wait for access to ansible.

With a manual approach, a blog I read of a team of several engineers
with years up to decades of experience was not a good read for me
personally. The author did a good job of driving home the fact that
deployment and configurations was extensive and the addition of each
individual service took many weeks and months for each. If we were to go
the manual route, we would not finish in time and would need to hand
over the rest of the work to the next up group that'll come in. Only
problem with this is that would they, A-want to continue with the
painful task of the manual installation or B-should they be granted
access to ansible at that point, wipe everything off and begin
deployment with ansible. If I were them, I would choose the latter.

**What we will provide**

-   Documentation of everything done so far and next steps

At a minimum, access to Desktop for DevStack would be nice to have. If
we do get it then

-   A DevStack Environment for others to run up and play around with the
    GUI or CLI

    -   AWS style labs to do and learn about OpenStack

-   Headless Servers

    -   Ability to SSH to Ubuntu OS

    -   Connect to iDRAC ip address and check state of the server

**Other access issues halting features**

We'd also like to get the physical server rack up but nothing has been
completed as of yet for the hardware requests. This may also need to be
handed to the next team sadly.

The DevStack environment would need to be moved from the servers once
done this year, we'd also like to get access to the desktop but will
patiently wait till we're able to use it.

**Conclusion and Final Point**

Every feature of this project we'd like to work on becomes inaccessible
due to network or hardware shortcomings. We will do our best to have
something to hand off to the next team but each passing week it becomes
more clearer that we may not be able to complete what we set out to do.
