**SPIKE: OpenStack Architecture and Analysis**

[Objective Statement 1](#objective-statement)

[OpenStack Components Introduction
1](#openstack-components-introduction)

[Primary Components 1](#primary-components)

[Ironic 1](#ironic)

[Nova 1](#nova)

[Glance 1](#glance)

[Neutron 1](#neutron)

[Other 1](#other)

[Download Options 1](#download-options)

[Evaluation Tools 1](#evaluation-tools)

[DevStack 1](#devstack)

[MicroStack 2](#microstack)

[Ansible 2](#ansible)

[Juju 2](#juju)

[Other 2](#other-1)

[Architecture 2](#architecture)

[Known Pre-requirements 3](#known-pre-requirements)

[Next Steps and Closing Remarks 4](#next-steps-and-closing-remarks)

[Optional Route of 3 Cycles 4](#optional-route-of-3-cycles)

[Future Work 4](#future-work-epics)

[Potential Stories 4](#potential-stories)

[Sources 5](#sources)

Objective Statement
===================

With this spike, we should be able to grasp the concepts of OpenStack
and understand its services, be able to identify viable download and
configuration tools, have a well crafted architecture model either using
a professionally made example or self-made model, discern a list of
pre-needed requirements and work items needed prior to the download of
OpenStack with an overall address to the next steps after this spike.

OpenStack Components Introduction
=================================

Primary Components
------------------

#### Ironic

Will be what we use to provision and manage our Dell Power Edge
machines. Uses PXE

This will interact with OpenStack Compute (nova), Identity (keystone),
Image service (glance), and Networking (neutron)

#### Nova
Ultimately, not used but Nova is the compute service in OpenStack responsible for managing and orchestrating virtual machine instances. It handles tasks such as provisioning, scheduling, and lifecycle management of VMs across a cloud infrastructure. Nova interacts with other OpenStack components—like Neutron for networking and Cinder for block storage—to deliver full compute functionality. It supports multiple hypervisors, including KVM, QEMU, and VMware, and is designed to scale horizontally, making it suitable for large-scale cloud environments.
#### Glance
Ultimately, not used but Glance is the image service in OpenStack, responsible for discovering, registering, and retrieving virtual machine disk images. It acts as a central repository where users and services can upload and store images in various formats (such as QCOW2, RAW, VMDK). Glance supports image metadata, making it easier to manage and filter images. It can store images locally or integrate with external storage backends like Swift, Ceph, or HTTP. Glance enables compute services like Nova to boot instances from these images, playing a critical role in instance provisioning.

#### Neutron
Ultimately, not used but Neutron is the networking service in OpenStack that provides "networking as a service" between interface devices managed by other OpenStack services. It handles the creation and management of networks, subnets, routers, and IP address allocation. Neutron supports both flat and complex network topologies, including VLANs, VXLANs, and GRE tunnels, and integrates with various networking technologies and plugins such as Open vSwitch, Linux Bridge, and SDN controllers. It also offers advanced services like load balancing, firewalls, and VPNs. Neutron allows users to define isolated tenant networks, ensuring secure and scalable multi-tenant environments.

#### Keystone
Ultimately, not used but Keystone is the identity service in OpenStack that provides authentication, authorization, and service discovery. It acts as the central point for managing users, roles, and permissions across all OpenStack services. Keystone supports multiple authentication methods, including username/password, token-based access, and external systems like LDAP. It issues tokens that clients use to interact securely with other OpenStack components. Keystone also maintains a service catalog, listing all available services and their endpoints, enabling seamless integration and communication within the OpenStack ecosystem.

#### -

Other
-----

Download Options
================

Evaluation Tools
----------------

#### DevStack

-   Will make major changes to a system and should only be run on VM's
    dedicated for this purpose.

-   Official Evaluation tool

-   Used for training, proof-of-concept and personal education. Not for
    production deployment, meant for developing and testing OpenStack
    itself.

[Example Case:]{.underline} If we want to make changes to OpenStack,
it'll be a terrible idea to go and do this on PROD. With DevStack, we
can make those changes to an environment that is close to the deployed
OpenStack instance and verify it works there before making changes to
production.

#### MicroStack

Can be set up very quickly and installation is viewed as being easier
than DevStack. Looks like a good choice as well and worth taking a
further look at.

DevOps Deployment
-----------------

#### Ansible

**Kolla Ansible**

-   Uses Docker containers to deploy OpenStack

-   Minimum Requirements:

    -   2 network interfaces

    -   8GB main memory

    -   40GB disk space

**OpenStack Ansible**

-   Uses LXC containers to deploy OpenStack

-   Minimum Requirements:

    -   Multicore processors

    -   10 GB for OpenStack-Ansible repository

    -   100 GB of disk space for Control Plane

    -   1/10GB Ethernet

    -   Bonded Network interfaces

    -   VLAN offloading

Ansible is less opinionated on how we should deploy OpenStack, more
flexible, provides defaults to get started, and provides additional
optimization past initial setup. However Kolla Ansible states that it is
highly opinionated. 'Kolla Ansible is highly opinionated out of the box,
but allows for complete customization.' Kolla-ansible looks to be more
supported and has more frequent upgrades.

#### Juju

Open source orchestration engine

If we use Juju, can deploy using Charmed OpenStack, integrates well with
Metal-As-A-Service. Will look more into this later. Is this same as
IAAS?

#### Other

**Puppet, Chef, Salt**

Older. Not the best for long term deployment.

Architecture
============

Will stick to the basics Horizon, Swift, Glance, Nova, Cinder, Neutron,
& Keystone. Official recommended architecture for an OpenStack VPC
design is located on the OpenStack
[Design](https://docs.openstack.org/arch-design/design.html) page.

Known Pre-requirements
======================

-   Debian

    -   Debian 12 (bookworm)

-   Ubuntu

    -   Ubuntu 22.04 LTS (Jammy Jellyfish)

    -   Ubuntu 24.04 LTS (Noble Numbat)

-   CentOS based

    -   CentOS Stream 9

    -   Rocky Linux 9

-   Secure Shell (SSH) client and server that support public key
    authentication

-   Python 3.8.\*x\* or 3.10.\*x\*

-   en\_US.UTF-8 as the locale

-   At least 1/10 Gigabit Ethernet

-   Jumbo Frames (Recommended)

**For Kolla-Ansible**

-   2 network interfaces

-   8GB main memory

-   40GB disk space

Next Steps and Closing Remarks
==============================

Findings suggest to stick to the basics; Horizon, Swift, Glance, Nova,
Cinder, & Neutron for Cycle 2. The team can discuss on their thoughts
and give a response Sprint 3. As for the basics listed, we will have 6
weeks to complete them and be able to definetively define them as
'DONE'. There are plenty of other services to add but we may not get the
opportunity to add them.

Below will also be a list of **Epics** and **Stories** needed. How we
define these items as done and if there a possible more items needed
that were missed will be discussed after presentation.

Optional Route of 3 Cycles
--------------------------

Cycle 1: 2 Sprints (3wk/2wk) Primary Hardware Needs and Configs

Cycle 2: 3 Sprints (2wk/2wk/2wk) General OpenStack Deployment and
Secondary Hardware Needs

Cycle 3: 2 Sprints (2wk/1wk) Secondary OpenStack Components and Wrap-up

Future Work (Epics)
-------------------

-   Openstack Installation

-   Horizon

-   Neutron

-   Glance

-   Cinder

-   Swift

-   Nova

-   Keystone

Potential Stories
-----------------

-   Creating Jumbo Frames

-   Server Clustering

-   Addition of SSH

-   Addition of Python 3.12.x (3.13 isn't a LTS system I believe)

-   RAID cards configured

Sources
-------

[OpenStack-Ansible Deployment Guide --- openstack-ansible 30.0.1.dev3
documentation](https://docs.openstack.org/project-deploy-guide/openstack-ansible/2024.2/index.html)

[Overview --- openstack-ansible 30.1.0.dev44
documentation](https://docs.openstack.org/project-deploy-guide/openstack-ansible/latest/overview.html)

[DevStack --- DevStack
documentation](https://docs.openstack.org/devstack/latest/)

[MicroStack Documentation](https://canonical.com/microstack/docs)

[Deploying OpenStack in 2023 A Survey of Setting Up
OpenStack](https://www.youtube.com/watch?v=iIkWr_pzfLE)
