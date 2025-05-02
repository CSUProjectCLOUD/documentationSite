# Project CLOUD

This project intends to create a private cloud for use by computer science students at Columbus State University.

The project was started during the Spring 2025 Senior Software Engineering class.

## Current Status

Project CLOUD is currently a proof-of-concept DevStack installation made in preparation for a full OpenStack deployment.
It can be used for simple classroom labs as-is, but increased network access is needed for further functionality. Future maintainers will need to collaborate with UITS.

## Getting Started

- Turn on the physical server

- run
```python
cd opt/stack/devstack
./unstack.sh
./clean.sh
./stack.sh
```
This will remove the previous environment, then start up a new OpenStack environment.

It's important to use ./unstack and ./clean because leftover processes or files from previous environments can cause problems. You can also run ./unstack.sh and ./clean.sh when shutting down the server, then simply use ./stack.sh on your next startup.

On another computer, point your browser to the server's static IP. As of now, the IP is only accessible while connected to CSU's network. Log in with username admin and the password, a palindromic combination of numbers (it's written down elsewhere).

You should now be on the OpenStack dashboard, free to create virtual machines.

Note that DevStack environments are not persistent.

Please check out https://docs.openstack.org/devstack/latest/ for further information on DevStack.
