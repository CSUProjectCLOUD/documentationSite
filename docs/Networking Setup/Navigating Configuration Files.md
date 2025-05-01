# Navigating Configuration Files

## Cisco Switch 
First Time Configurations in CLI 

Objective: 

Accessing the CLI 

Configure non-volatile ram config files of Cisco Switch 

Getting to CLI 

To get to the CLI, walkthrough and complete Reading Serial Data on Cisco 2960-X Switch with Windows 11 PC:  https://colstate.sharepoint.com/:w:/r/sites/CDG/_layouts/15/Doc2.aspx?action=edit&sourcedoc=%7Bce07320d-6e63-4500-b694-b3794023f84a%7D&wdOrigin=TEAMS-MAGLEV.teamsSdk_ns.rwc&wdExp=TEAMS-TREATMENT&wdhostclicktime=1742851431793&web=1

First Time Installation 

Follow through pages 70-74 in the Completing the Setup in the Catalyst 2960-X Switch Hardware Installation Guide:  https://www.cisco.com/c/en/us/td/docs/switches/lan/catalyst2960x/hardware/installation/guide/b_c2960x_hig.pdf

## Connecting Servers to VLAN 
Objective 

Obtain for Ethernet Ports Names 

Configure the ports to allow them to connect to the VLAN 

Physically connect every port on all servers to their designated interface range on the switch. Please refer to Configuring VLAN for the port numbers being used. 

Now that we are at the final home stretch of setting up the internal infrastructure of the CDG project, all that is left for us is configuring each port on our server and plugging them all in. 

Log into each server and repeat all steps below 

Find Ethernet Port Names 

$ ip link show 

Create Net Plan File 

To be able to allow other devices on the switch to ping the server, you will need to configure you network configuration files. For Ubuntu, you can find the new configuration files at /etc/netplan/*.yaml. Ubuntu server generates Netplan configuration file for system-networkd named 01-netcfg.yaml.  

$ sudo nano /etc/netplan/01-netcfg.yaml 

This will bring you to a yaml file you’ll need to configure. YAML is a human-readable data serialization language and is commonly used for configuration files and saving application state. It is similar to other languages such as XML and JSON. 

Example 

network: 
    Version: 2 
    Renderer: NetworkManager/ networkd 
    ethernets: 
       DEVICE_NAME: 
          Dhcp4: yes/no 
          Addresses: [IP_ADDRESS/NETMASK] 
          Gateway: GATEWAY 
          Nameservers: 
             Addresses: [NAMESERVER_1, NAMESERVER_2] 

Where 

DEVICE_NAME: Name of the interface. 

Dhcp4: yes or no depending upon dynamic or static IP addressing 

Addresses: IP address of the device in prefix notation. Do not use netmask. 

Gateway: Gateway IP address to connect to an outside network (other VLANs) 

Nameservers: Address of DNS name servers 

Configure Net Plan File 

Network Plan for Controller Node (Dell PowerEdge 710 A) 

network: 

  version: 2 

  renderer: networkd 

  ethernets: 

    eno1:   

      dhcp4: no 

      addresses: [10.0.11.10/24] 

      gateway4: 10.0.11.1 

      nameservers: 

        addresses: [8.8.8.8, 8.8.4.4] 

    eno2:   

      dhcp4: no 

      addresses: [10.0.11.20/24]  

    eno3:   

      dhcp4: no 

      addresses: [10.0.11.30/24] 

    eno4:   

      dhcp4: no 

      addresses: [10.0.11.40/24] 

 

Network Plan for Network Node (Dell PowerEdge 710 B) 

network: 

  version: 2 

  renderer: networkd 

  ethernets: 

    eno1:   

      dhcp4: no 

      addresses: [10.0.21.10/24] 

      gateway4: 10.0.21.1 

      nameservers: 

        addresses: [8.8.8.8, 8.8.4.4] 

    eno2:   

      dhcp4: no 

      addresses: [10.0.21.20/24]  

    eno3:   

      dhcp4: no 

      addresses: [10.0.21.30/24] 

    eno4:   

      dhcp4: no 

      addresses: [10.0.21.40/24] 

 

Network Plan for Compute/Storage Node (Dell PowerEdge 730) 

  version: 2 

  renderer: networkd 

  ethernets: 

    eno1:   

      dhcp4: no 

      addresses: [10.0.31.10/24] 

      gateway4: 10.0.31.1 

      nameservers: 

        addresses: [8.8.8.8, 8.8.4.4] 

    eno2:   

      dhcp4: no 

      addresses: [10.0.31.20/24]  

    eno3:   

      dhcp4: no 

      addresses: [10.0.31.30/24] 

    eno4:   

      dhcp4: no 

      addresses: [10.0.31.40/24] 

## Connecting to Internet through Wall Port 
Objective: 

Convert to an L3 switch 

Set default-gateway and ip route to that of the universities wall port 

Set VLAN 2 to allow DHCP 

 

CLI Set Up 

switch1>enable 

switch1#config t 

switch1#ip routing 

switch1#ip route 0.0.0.0 0.0.0.0 10.12.112.1 

switch1(config)# interface vlan 2 

switch1(config-if)# ip address dhcp 

switch1(config-if)# no shutdown 

switch1(config-if)# end 

switch1#write memory 

 

Physical Set Up 

Plug an ethernet cable of cat5 or 6 into any port 7 through 12. If unsure of the ports contained in vlan 2. Run show vlan brief if unsure. 

Plug the other end into the wall port that contains the default-gateway  

Confirming 

switch1# show running-config | include default-gateway 

switch1# show ip route 

switch1# show ip interface brief 

switch1# show interfaces vlan 2 

 

Testing 

switch1# ping 10.12.112.1  

switch1# ping 8.8.8.8 

 

Test 1: Pinging 8.8.8.8 - Internet 

 

Test 2: Pinging 10.8.112.1 - Default Gateway 

## How to Read Serial Data on a Cisco 2960-X Switch using Windows 11
Objective 

Read Cisco serial data transmitted over console port 

Begin initial configurations through Cisco CLI 

Ping switch from PC 

Ping PC from switch 

Note: If your device has already been set up and you would like to read serial data from your device, please read Getting Port Driver and PuTTY and Step 6 of First Time Setup 

Getting Port Driver and PuTTY 

Serial data will be transmitted from the switch to your PC using the switch’s console port and your PC’s USB port. However, your system may not be able to read this data this coming on with pre-existing drivers on your system. For this, please download the Cisco port driver at Software Download - Cisco Systems. For this you will need to create a Cisco account profile and download the the zip file. For more information on this process, please follow the attached README file. For PuTTY, here is an available download. 

First Time Setup 

Note: This is only needed if using a brand new switch or one that has been wiped.  

Before diving head first into setup it is essential that you know more about your device and have a good foundational knowledge of it. If you haven’t already, read 1-19 of Catalyst 2960-X Switch Hardware Installation Guide.  

Below we will complete steps 1-6 in Getting Started Guide. You are encouraged to read through the site if also configuring the physical hardware components for the first time outside of wiring. This is needed to verify all needed materials are owned. 

The provided Cisco document is outdated so please read carefully. We will use multiple documents for this configuration pointing to the exact sections needed for each.  

 

 

Step 6 

Now that you have completed steps 1-5, we should now be able to read serial data via the console port. 

Using the micro-B console port, plug the USB micro-B port into the switch and the USB-A port into your laptop. 

You will also be able to use any console port rj-45 or micro-b to USB-B for serial data to be transmitted to your pc. 

Open Device Manager 

Check the COM port of your new plugged in device 

 

Open Putty 

 

Insert the Serial COM Port seen in Device Manager, select serial speed 9600, Connect type Serial and Telnet, Then click Open  

## Cisco Switch VLAN Configuration
Objective 

A Virtual Local Area Network (VLAN) allows you to logically segment a Local Area Network (LAN) into different broadcast domains. In scenarios where sensitive data may be broadcast on a network, VLANs can be created to enhance security by designating a broadcast to a specific VLAN. Only users that belong to a VLAN are able to access and manipulate the data on that VLAN. 

You can configure the ports and specify whether the port should be in access or trunk mode, and assign specific ports to VLANs. This article provides instructions on how to configure an interface VLAN as an access or trunk port on your switch through the Command Line Interface (CLI). 

Introduction 

VLAN is a network that is usually segmented by function or application. VLANs behave much like physical LANs, but you can group hosts even if they are not physically co-located. A switch port can belong to a VLAN. Unicast, broadcast, and multicast packets are forwarded and flooded out ports in the same VLAN. 

VLANs can also be used to enhance performance by reducing the need to send broadcasts and multicasts to unnecessary destinations. It also eases network configuration by logically connecting devices without physically relocating those devices. 

Enter the Cisco CLI 

 

For this you will need PuTTY, the Cisco usb console driver, and a USB-mini to USB-A wire. If you do not have these, please obtain them and refer to the previous document on reading serial data from a Cisco Switch. To complete the goal set for this document and completing the architecture, this will be the only exit needed from the walkthrough guide as you will first need access to the Cisco CLI to begin. If you already have access or once you have access, you may proceed to the next step. 

 

Enable Exec mode to begin  

 

switch1>enable to enable exec mode 

password:password 

 

Setting up Default VLAN #1 

 

switch1#config terminal 

Commands not needed as name will stay default 

switch1(config) #vlan 1 

switch1(config-vlan) # name   

switch1(config-vlan) #exit 

switch1(config) #interface range gigabitethernet1/0/1-6 

switch1(config-if-range) #switchport mode access 

switch1(config-if-range) #switchport access vlan 1 

switch1(config-if-range) #exit 

switch1(config) # interface vlan 1 

switch1(config-if) #ip address 192.168.100.1 255.255.255.0 

switch1(config-if) #end 

switch1#show vlan 

 

Setting up ExternalUplink VLAN #2 

 

A static ip address is unneeded following the next document, vlan 2 will being using dhcp. Feel free to skip this configuration set 

switch1#config terminal 

switch1(config) #vlan 2 

switch1(config-vlan) #name ExternalUplink 

switch1(config-vlan) #exit 

switch1(config) #interface range gigabitethernet1/0/7-12 

switch1(config-if-range) #switchport mode access 

switch1(config-if-range) #switchport access vlan 2 

switch1(config-if-range) #exit end 

switch1#(config) #interface vlan 2 

switch1#(config-if) #ip address 10.0.2.1 255.255.255.0 

switch1#(config-if) #end 

switch1#show vlan 

 

Setting up Controller VLAN #11 

switch1#config terminal 

switch1(config) #vlan 11 

switch1(config-vlan) #name Controller 

switch1(config-vlan) #exit 

switch1(config) #interface range gigabitethernet1/0/13-18 

switch1(config-if-range) #switchport mode access 

switch1(config-if-range) #switchport access vlan 11 

switch1(config-if-range) #exit 

switch1#(config) #interface vlan 11 

switch1#(config-if) #ip address 10.0.11.1 255.255.255.0 

switch1#(config-if) #end 

switch1#show vlan 

 

Setting up Network VLAN #21 

 

switch1#config terminal 

switch1(config) #vlan 21 

switch1(config-vlan) #name Network 

switch1(config-vlan) #exit 

switch1(config) #interface range gigabitethernet1/0/19-24 

switch1(config-if-range) #switchport mode access 

switch1(config-if-range) #switchport access vlan 21 

switch1(config-if-range) #exit 

switch1#(config) #interface vlan 21 

switch1#(config-if) #ip address 10.0.21.1 255.255.255.0 

switch1#(config-if) #end 

switch1#show vlan 

 

Setting up Compute VLAN #31 

 

switch1#config terminal 

switch1(config) #vlan 31 

switch1(config-vlan) #name Compute 

switch1(config-vlan) #exit 

switch1(config) #interface range gigabitethernet1/0/25-30 

switch1(config-if-range) #switchport mode access 

switch1(config-if-range) #switchport access vlan 31 

switch1(config-if-range) #exit 

switch1#(config) #interface vlan 31 

switch1#(config-if) #ip address 10.0.31.1 255.255.255.0 

switch1#(config-if) #end 

switch1#show vlan 

 

Setting up FutureUse1 VLAN #41 

 

switch1#config terminal 

switch1(config) #vlan 41 

switch1(config-vlan) #name FutureUse1 

switch1(config-vlan) #exit 

switch1(config) #interface range gigabitethernet1/0/31-36 

switch1(config-if-range) #switchport mode access 

switch1(config-if-range) #switchport access vlan 41 

switch1(config-if-range) #exit 

switch1#(config) #interface vlan 41 

switch1#(config-if) #ip address 10.0.41.1 255.255.255.0 

switch1#(config-if) #end 

switch1#show vlan 

 

Setting up FutureUse2 VLAN #51 

 

switch1#config terminal 

switch1(config) #vlan 51 

switch1(config-vlan) #name FutureUse2 

switch1(config-vlan) #exit 

switch1(config) #interface range gigabitethernet1/0/37-42 

switch1(config-if-range) #switchport mode access 

switch1(config-if-range) #switchport access vlan 51 

switch1(config-if-range) #exit 

switch1#(config) #interface vlan 51 

switch1#(config-if) #ip address 10.0.51.1 255.255.255.0 

switch1#(config-if) #end 

switch1#show vlan 

 

Setting up FutureUse3 VLAN #61 

 

switch1#config terminal 

switch1(config) #vlan 61 

switch1(config-vlan) #name FutureUse2 

switch1(config-vlan) #exit 

switch1(config) #interface range gigabitethernet1/0/43-48 

switch1(config-if-range) #switchport mode access 

switch1(config-if-range) #switchport access vlan 51 

switch1(config-if-range) #exit 

switch1#(config) #interface vlan 51 

switch1#(config-if) #ip address 10.0.51.1 255.255.255.0 

switch1#(config-if) #end 

switch1#show vlan 

 

Verify and Save 

 

Give everything one last look through and verify it looks good. 

switch1#show interfaces switchport 

switch1#show vlan  

switch1# copy running-config startup-config 

Click ENTER to select [startup-config] for destination filename 

After [OK] switch1#show vlan 

 

 