**Authors:** Jaden Jefferson

**Last Updated:** 12 Mar 2025

Cisco Switch VLAN Configuration
===============================

**Objective**
-------------

> A Virtual Local Area Network (VLAN) allows you to logically segment a
> Local Area Network (LAN) into different broadcast domains. In
> scenarios where sensitive data may be broadcast on a network, VLANs
> can be created to enhance security by designating a broadcast to a
> specific VLAN. Only users that belong to a VLAN are able to access and
> manipulate the data on that VLAN.
>
> You can configure the ports and specify whether the port should be in
> access or trunk mode, and assign specific ports to VLANs. This article
> provides instructions on how to configure an interface VLAN as an
> access or trunk port on your switch through the Command Line Interface
> (CLI).

**Introduction**
----------------

> VLAN is a network that is usually segmented by function or
> application. VLANs behave much like physical LANs, but you can group
> hosts even if they are not physically co-located. A switch port can
> belong to a VLAN. Unicast, broadcast, and multicast packets are
> forwarded and flooded out ports in the same VLAN.
>
> VLANs can also be used to enhance performance by reducing the need to
> send broadcasts and multicasts to unnecessary destinations. It also
> eases network configuration by logically connecting devices without
> physically relocating those devices.

**Enter the Cisco CLI**
-----------------------

> For this you will need PuTTY, the Cisco usb console
> [driver](https://software.cisco.com/download/home/282774222/type/282855122/release/3.1),
> and a USB-mini to USB-A wire. If you do not have these, please obtain
> them and refer to the previous document on reading serial data from a
> Cisco Switch. To complete the goal set for this document and
> completing the architecture, this will be the only exit needed from
> the walkthrough guide as you will first need access to the Cisco CLI
> to begin. If you already have access or once you have access, you may
> proceed to the next step.

**Enable Exec mode to begin** 
-----------------------------

> *switch1\>enable* to enable exec mode
>
> *password:password*

**Setting up Default VLAN \#1**
-------------------------------

> *switch1\#config terminal*
>
> **Commands not needed as name will stay default**
>
> *~~switch1(config) \#vlan 1~~*
>
> *~~switch1(config-vlan) \# name~~*
>
> *~~switch1(config-vlan) \#exit~~*
>
> *switch1(config) \#interface range gigabitethernet1/0/1-6*
>
> *switch1(config-if-range) \#switchport mode access*
>
> *switch1(config-if-range) \#switchport access vlan 1*
>
> *switch1(config-if-range) \#exit*
>
> *switch1(config) \# interface vlan 1*
>
> *switch1(config-if) \#ip address 192.168.100.1 255.255.255.0*
>
> *switch1(config-if) \#end*
>
> *switch1\#show vlan*

**Setting up ExternalUplink VLAN \#2**
--------------------------------------

A static ip address is unneeded following the next document, vlan 2 will
being using dhcp. Feel free to skip this configuration set

> *switch1\#config terminal*
>
> *switch1(config) \#vlan 2*
>
> *switch1(config-vlan) \#name ExternalUplink*
>
> *switch1(config-vlan) \#exit*
>
> *switch1(config) \#interface range gigabitethernet1/0/7-12*
>
> *switch1(config-if-range) \#switchport mode access*
>
> *switch1(config-if-range) \#switchport access vlan 2*
>
> *switch1(config-if-range) \#~~exit~~ **end***
>
> *~~switch1\#(config) \#interface vlan 2~~*
>
> *~~switch1\#(config-if) \#ip address 10.0.2.1 255.255.255.0~~*
>
> *~~switch1\#(config-if) \#end~~*
>
> *switch1\#show vlan*

**Setting up Controller VLAN \#11**
-----------------------------------

> *switch1\#config terminal*
>
> *switch1(config) \#vlan 11*
>
> *switch1(config-vlan) \#name Controller*
>
> *switch1(config-vlan) \#exit*
>
> *switch1(config) \#interface range gigabitethernet1/0/13-18*
>
> *switch1(config-if-range) \#switchport mode access*
>
> *switch1(config-if-range) \#switchport access vlan 11*
>
> *switch1(config-if-range) \#exit*
>
> *switch1\#(config) \#interface vlan 11*
>
> *switch1\#(config-if) \#ip address 10.0.11.1 255.255.255.0*
>
> *switch1\#(config-if) \#end*
>
> *switch1\#show vlan*

**Setting up Network VLAN \#21**
--------------------------------

> *switch1\#config terminal*
>
> *switch1(config) \#vlan 21*
>
> *switch1(config-vlan) \#name Network*
>
> *switch1(config-vlan) \#exit*
>
> *switch1(config) \#interface range gigabitethernet1/0/19-24*
>
> *switch1(config-if-range) \#switchport mode access*
>
> *switch1(config-if-range) \#switchport access vlan 21*
>
> *switch1(config-if-range) \#exit*
>
> *switch1\#(config) \#interface vlan 21*
>
> *switch1\#(config-if) \#ip address 10.0.21.1 255.255.255.0*
>
> *switch1\#(config-if) \#end*
>
> *switch1\#show vlan*

**Setting up Compute VLAN \#31**
--------------------------------

> *switch1\#config terminal*
>
> *switch1(config) \#vlan 31*
>
> *switch1(config-vlan) \#name Compute*
>
> *switch1(config-vlan) \#exit*
>
> *switch1(config) \#interface range gigabitethernet1/0/25-30*
>
> *switch1(config-if-range) \#switchport mode access*
>
> *switch1(config-if-range) \#switchport access vlan 31*
>
> *switch1(config-if-range) \#exit*
>
> *switch1\#(config) \#interface vlan 31*
>
> *switch1\#(config-if) \#ip address 10.0.31.1 255.255.255.0*
>
> *switch1\#(config-if) \#end*
>
> *switch1\#show vlan*

**Setting up FutureUse1 VLAN \#41**
-----------------------------------

> *switch1\#config terminal*
>
> *switch1(config) \#vlan 41*
>
> *switch1(config-vlan) \#name FutureUse1*
>
> *switch1(config-vlan) \#exit*
>
> *switch1(config) \#interface range gigabitethernet1/0/31-36*
>
> *switch1(config-if-range) \#switchport mode access*
>
> *switch1(config-if-range) \#switchport access vlan 41*
>
> *switch1(config-if-range) \#exit*
>
> *switch1\#(config) \#interface vlan 41*
>
> *switch1\#(config-if) \#ip address 10.0.41.1 255.255.255.0*
>
> *switch1\#(config-if) \#end*
>
> *switch1\#show vlan*

**Setting up FutureUse2 VLAN \#51**
-----------------------------------

> *switch1\#config terminal*
>
> *switch1(config) \#vlan 51*
>
> *switch1(config-vlan) \#name FutureUse2*
>
> *switch1(config-vlan) \#exit*
>
> *switch1(config) \#interface range gigabitethernet1/0/37-42*
>
> *switch1(config-if-range) \#switchport mode access*
>
> *switch1(config-if-range) \#switchport access vlan 51*
>
> *switch1(config-if-range) \#exit*
>
> *switch1\#(config) \#interface vlan 51*
>
> *switch1\#(config-if) \#ip address 10.0.51.1 255.255.255.0*
>
> *switch1\#(config-if) \#end*
>
> *switch1\#show vlan*

**Setting up FutureUse3 VLAN \#61**
-----------------------------------

> *switch1\#config terminal*
>
> *switch1(config) \#vlan 61*
>
> *switch1(config-vlan) \#name FutureUse2*
>
> *switch1(config-vlan) \#exit*
>
> *switch1(config) \#interface range gigabitethernet1/0/43-48*
>
> *switch1(config-if-range) \#switchport mode access*
>
> *switch1(config-if-range) \#switchport access vlan 51*
>
> *switch1(config-if-range) \#exit*
>
> *switch1\#(config) \#interface vlan 51*
>
> *switch1\#(config-if) \#ip address 10.0.51.1 255.255.255.0*
>
> *switch1\#(config-if) \#end*
>
> *switch1\#show vlan*

**Verify and Save**
-------------------

Give everything one last look through and verify it looks good.

> *switch1\#show interfaces switchport*
>
> *switch1\#show vlan*
>
> *switch1\# copy running-config startup-config*
>
> Click *ENTER* to select \[startup-config\] for destination filename
>
> After \[OK\] *switch1\#show vlan*
