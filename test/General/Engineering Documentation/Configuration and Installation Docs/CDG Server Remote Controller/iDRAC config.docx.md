Documentation of iDRAC configuration for PowerEdge 710 & 730:

Steps needed to configure iDRAC:

-   Boot the server and press control+E

-   Navigated to network settings and choose static IP address

-   Set the appropriate IP

```{=html}
<!-- -->
```
-   subnet mask

-   gateway details,

-   Set it back to DHCP.

```{=html}
<!-- -->
```
-   Set password for accessing the iDRAC for remote access.

    -   cloudadmin

-   Rebooted the servers to save changes made in iDRAC configuration.

iDRAC configuration
[link](https://thebackroomtech.com/2017/09/27/setup-configure-idrac-dell-poweredge-servers/)

Basic Installation of the iDRAC6 Document

We set up some of the iDRAC configurations -- we still need to configure
the network controller LAN parameters to use DHCP or a Static IP address
source.

RACADM (Remote Access Controller Administration Module) can be installed
on a management station running Linux Pg 38, pgs. 39-40 to update iDRAC6

RACADM allows IT administrators to remotely manage and configure server
hardware settings on Dell servers through iDRAC using a command line
interface. This improves system administration efficiency and reduces
downtime.

Configuring a Supported Web Browser pgs. 41, 46-48

Configuring the iDRAC6 Network and IPMI LAN settings pgs. 49-55

Configuring IP Filtering and IP Blocking pgs. 55-57

Configuring Platform Events Traps pgs. 57-60

Configuring E-Mail Alerts pgs. 60-61

Next comes the Advanced iDRAC6 Config beginning on pg. 87

#### Instructions

The virtual media function allows the remote usage of software image
files (ISO files). ISO files can be used for installing operating
systems or updating servers. This article provides information about
using the virtual media function of the Integrated Dell Remote Access
Controller (iDRAC) 6, 7, 8 and 9.\
\
Benefits of using the virtual media function are:

-   Updating all server firmware using the matching bootable image (ISO
    file) for your server.

-   Installing an operating system on your server directly from the ISO.
    Read [[How to Install the Operating System on a Dell PowerEdge
    Server]{.underline}](https://www.dell.com/support/kbdoc/en-us/000130160/how-to-install-the-operating-system-on-a-dell-poweredge-server-os-deployment)
    for more information.

-   Viewing video output from the server and using the local mouse and
    keyboard as if you were in the same room.

If you want to find more detailed information about this and other
functions available through the Enterprise iDRAC, reference the [[iDRAC
manuals]{.underline}](https://www.dell.com/support/home/en-us/products/software_int/software_ent_systems_mgmt/remote_ent_sys_mgmt).
[Link](https://www.dell.com/support/kbdoc/en-us/000124001/using-the-virtual-media-function-on-idrac-6-7-8-and-9#:~:text=Identify%20Your%20Product-,Instructions,were%20in%20the%20same%20room.)

PowerEdge iDRAC7 R730
[link](https://www.dell.com/support/kbdoc/en-us/000124001/using-the-virtual-media-function-on-idrac-6-7-8-and-9#idrac8)
Virtual Media Function
