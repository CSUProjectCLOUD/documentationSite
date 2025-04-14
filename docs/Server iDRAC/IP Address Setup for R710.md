**Authors:** Jaden Jefferson

**Last Updated:** Jan 30 2025

IP Address Setup for R710

This was done in Lifecycle Controller version 1.5. Read-only mode will
be marked in a light-blue font color.

1.  On boot, click \<Ctrl\>-\<E\>

2.  **iDRAC LAN** On

3.  **IPMI Over LAN** On

4.  LAN Parameters

-   **NIC Selection** Dedicated

-   **Active LOM** No Active LOM

-   **MAC ADDRESS:** Should be in read-only mode

-   **VLAN** Enable Off

-   **VLAN** 0001

-   **VLAN Priority** Priority 0

-   **Register iDRAC Name** On

-   **iDRAC Name**: Should've be entered prior

-   **Domain Name** from DHCP Off

-   **Domain Name:** Will be given once

-   **Host Name String:** Not inserted

-   **LAN Alert** Enabled Off

-   **Alert Policy Entry 1** Disabled

-   **Alert Destination** 1 0.0.0.0

> IPv4 Settings

-   **IPv4** Enabled

-   **RMCP+ Encryption Key:** Not inserted

-   **IPv4 Address Source:** Static Must be static to insert Address,
    Subnet Mask, & Default Gateway. Once inserted, switch back to DHCP
    to turn **DNS Servers from DHCP** On

-   **DNS Server 1 & 2**: Read-only mode

> IPv6 Settings

-   **IPv6** Enabled

-   **IPv6 Address Source** AutoConfig

-   **IPv6 Address 1:** fd12:3456:789a:1::1

-   **Prefix Length:** 255 or 64

-   **Default Gateway:** f380::1

-   **IPv6 Link-local Address:** .fe80:b283:feff:fee8:f3be

-   **IPv6 Address 2:** ::

-   **DNS Servers from DHCP** On

-   **DNS Server 1 & 2:** Read-only mode

> Advanced LAN Configurations

-   **Auto-Negotiate** Enabled

-   **LAN Speed Setting** 100Mbps

-   **LAN Duplex Setting** Full Duplex

5.  Exit out of iDRAC6. On exit select: Save Changes and Exit.

6.  Re-boot and confirm

> Confirmation:

-   Should see DNS Name on reboot in same location.

-   On reboot screen, you should see IP Address and DHCP
