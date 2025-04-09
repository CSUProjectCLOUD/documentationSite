SSH Installation
================

SSH which stands **S**ecure **SH**ell protocol, is a way to remotely
access Linux machines, encrypted for security. OpenSSH is installed on
Ubuntu Server by default. We just needed to configure the addresses.

Linux
-----

In order to install OpenSSH in the event it is not already installed,
use the following command:

*\$ sudo apt install openssh-client openssh-server*

The SSH IPs for the servers are as follows:\
R710A: 10.8.118.19

R710B: 10.8.124.203

R730: 10.8.117.254

To connect remotely from another device, ensure OpenSSH is installed and
type the following command:

ssh cloudadmin@\[SERVER IP\]

yes

{password}

You will now be connected.

To quit an SSH connection, type

exit

Press E nter.

**Note:**

When attempting to shutdown or reboot from SSH, sudo is required.

The addresses will change, please refer to the Networking guide
afterwards
