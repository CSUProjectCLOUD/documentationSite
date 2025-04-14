Connecting Servers to VLAN
==========================

Objective
---------

-   Obtain for Ethernet Ports Names

-   Configure the ports to allow them to connect to the VLAN

-   Physically connect every port on all servers to their designated
    interface range on the switch. Please refer to Configuring VLAN for
    the port numbers being used.

Now that we are at the final home stretch of setting up the internal
infrastructure of the CDG project, all that is left for us is
configuring each port on our server and plugging them all in.

**Log into each server and repeat all steps below**

Find Ethernet Port Names
------------------------

\$ ip link show

Create Net Plan File
--------------------

To be able to allow other devices on the switch to ping the server, you
will need to configure you network configuration files. For Ubuntu, you
can find the new configuration files at **/etc/netplan/\*.yaml**. Ubuntu
server generates Netplan configuration file for system-networkd named
**01-netcfg.yaml**.

\$ sudo nano /etc/netplan/01-netcfg.yaml

This will bring you to a yaml file you'll need to configure. YAML is a
human-readable data serialization language and is commonly used for
configuration files and saving application state. It is similar to other
languages such as XML and JSON.

*Example*

network:\
Version: 2\
Renderer: NetworkManager/ networkd\
ethernets:\
DEVICE\_NAME:\
Dhcp4: yes/no\
Addresses: \[IP\_ADDRESS/NETMASK\]\
Gateway: GATEWAY\
Nameservers:\
Addresses: \[NAMESERVER\_1, NAMESERVER\_2\]

Where

-   **DEVICE\_NAME**: Name of the interface.

-   **Dhcp4**: **yes** or **no** depending upon dynamic or static IP
    > addressing

-   **Addresses**: IP address of the device in prefix notation. Do not
    > use netmask.

-   **Gateway**: Gateway IP address to connect to an outside network
    > (other VLANs)

-   **Nameservers**: Address of DNS name servers

Configure Net Plan File
-----------------------

### Network Plan for Controller Node (Dell PowerEdge 710 A)

network:

version: 2

renderer: networkd

ethernets:

eno1:

dhcp4: no

addresses: \[10.0.11.10/24\]

gateway4: 10.0.11.1

nameservers:

addresses: \[8.8.8.8, 8.8.4.4\]

eno2:

dhcp4: no

addresses: \[10.0.11.20/24\]

eno3:

dhcp4: no

addresses: \[10.0.11.30/24\]

eno4:

dhcp4: no

addresses: \[10.0.11.40/24\]

### Network Plan for Network Node (Dell PowerEdge 710 B)

network:

version: 2

renderer: networkd

ethernets:

eno1:

dhcp4: no

addresses: \[10.0.21.10/24\]

gateway4: 10.0.21.1

nameservers:

addresses: \[8.8.8.8, 8.8.4.4\]

eno2:

dhcp4: no

addresses: \[10.0.21.20/24\]

eno3:

dhcp4: no

addresses: \[10.0.21.30/24\]

eno4:

dhcp4: no

addresses: \[10.0.21.40/24\]

### Network Plan for Compute/Storage Node (Dell PowerEdge 730)

version: 2

renderer: networkd

ethernets:

eno1:

dhcp4: no

addresses: \[10.0.31.10/24\]

gateway4: 10.0.31.1

nameservers:

addresses: \[8.8.8.8, 8.8.4.4\]

eno2:

dhcp4: no

addresses: \[10.0.31.20/24\]

eno3:

dhcp4: no

addresses: \[10.0.31.30/24\]

eno4:

dhcp4: no

addresses: \[10.0.31.40/24\]
