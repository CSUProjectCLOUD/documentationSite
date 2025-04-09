Installing DevStack
===================

Objectives
----------

-   Use DevStack to install OpenStack

-   Successfully interact with OpenStack via CLI

-   Successfully interact with OpenStack via Horizon Web UI

Notes and other details blah

Background
----------

DevStack is a set of scripts which can be used to quickly set up an
OpenStack environment.

A DevStack-based environment is used for testing and development and
should **not** be your final cloud's basis.

DevStack is very useful for testing to see whether your hardware can run
OpenStack.

Note that, like the rest of this project, a good understanding of Linux
will be invaluable for saving you time, effort, and confusion.
<https://linuxupskillchallenge.com/> looks like a useful resource for
the knowledge you'll need here. Set up an Ubuntu Server VM and mess with
it.

The information in this document is heavily referenced from the official
DevStack installation guide:
https://docs.openstack.org/devstack/latest/index.html

Prerequisites
-------------

-   Fresh Ubuntu Server 24.04 installation

-   Internet connection for server

Installation
------------

### Setup

First we'll add a stack user to run DevStack.

The following commands will create the user, give it executable
permissions in all cases, and add it to the list of sudoers.

\$ sudo useradd --s /bin/bash -d /opt/stack -m stack

\$ sudo chmod +x /opt/stack

\$ echo \"stack ALL=(ALL) NOPASSWD: ALL\" \| sudo tee
/etc/sudoers.d/stack\
\$ sudo -u stack --i

Next, we'll download DevStack by cloning its Git repository.

\$ git clone <https://opendev.org/openstack/devstack>

\$ cd devstack

### Create a local.conf

Passwords for the OpenStack installation are stored in the file
local.conf. Open the file with your text editor of choice:

\$ nano local.conf

Enter the following in the file:

\[\[local\|localrc\]\]

ADMIN\_PASSWORD=secret

DATABASE\_PASSWORD=\$ADMIN\_PASSWORD

RABBIT\_PASSWORD=\$ADMIN\_PASSWORD

SERVICE\_PASSWORD=\$ADMIN\_PASSWORD

Change 'secret' in the configuration above to the alphanumeric password
of choice. We used 0990. You should use something more secure.

### Start the install

Now, you should be ready to install DevStack.

You should still be in \~/devstack. If not, get there.

Run the following to start the DevStack scripts:

\$ ./stack.sh

DevStack will install without further input. Their documentation claims
this will take 15-30 minutes. In our experience, the installation could
easily take around an hour. Use that time to read up on Linux commands,
touch grass, or call your mom.

### Verification

At last, DevStack has executed every last script, and you've been handed
back control of the server. Time to see if it worked.

First, check if OpenStack is up and running. You will still need to be
in the devstack directory.

\$ source openrc admin admin

\$ openstack user list

\$ openstack image list

\$ openstack server list

\$ openstack service list

\$ openstack network list

### Accessing Dashboard

Now, we'll go to Horizon and try setting up an instance.

Enter the server's IP address in your browser.

This should bring you to an OpenStack login page.

**User:** admin or demo\
**Password:** secret defined in local.conf file earlier

Finished
