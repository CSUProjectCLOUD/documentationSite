**Authors:** Jaden Jefferson

**Last Updated:** 6 Mar 2025

How to Read Serial Data on a Cisco 2960-X Switch using Windows 11

Objective
---------

-   Read Cisco serial data transmitted over console port

-   Begin initial configurations through Cisco CLI

-   Ping switch from PC

-   Ping PC from switch

**Note:** If your device has already been set up and you would like to
read serial data from your device, please read Getting Port Driver and
PuTTY and Step 6 of First Time Setup

Getting Port Driver and PuTTY
-----------------------------

Serial data will be transmitted from the switch to your PC using the
switch's console port and your PC's USB port. However, your system may
not be able to read this data this coming on with pre-existing drivers
on your system. For this, please **download the Cisco port driver** at
[Software Download - Cisco
Systems.](https://software.cisco.com/download/home/282774228/type/282855122/release/3.1)
For this you will need to create a Cisco account profile and download
the the zip file. For more information on this process, please follow
the attached README file. **For PuTTY**, here is an available
[download](https://www.putty.org/).

First Time Setup
----------------

**Note:** This is only needed if using a brand new switch or one that
has been wiped.

Before diving head first into setup it is essential that you know more
about your device and have a good foundational knowledge of it. If you
haven't already, read 1-19 of [Catalyst 2960-X Switch Hardware
Installation
Guide.](https://www.cisco.com/c/en/us/td/docs/switches/lan/catalyst2960x/hardware/installation/guide/b_c2960x_hig.pdf)

Below we will complete steps 1-6 in [Getting Started
Guide](https://www.cisco.com/c/en/us/td/docs/switches/lan/catalyst2960xr/hardware/quick/guide/b_gsg_2960xr.html#:~:text=This%20guide%20provides%20instructions%20on%20how%20to%20use,port%20and%20module%20connection%20procedures%2C%20and%20troubleshooting%20help.).
You are encouraged to read through the site if also configuring the
physical hardware components for the first time outside of wiring. This
is needed to verify all needed materials are owned.

The provided Cisco document is outdated so please read carefully. We
will use multiple documents for this configuration pointing to the exact
sections needed for each.

**Step 6**

Now that you have completed steps 1-5, we should now be able to read
serial data via the console port.

1.  Using the micro-B console port, plug the USB micro-B port into the
    switch and the USB-A port into your laptop.

    a.  You will also be able to use any console port rj-45 or micro-b
        to USB-B for serial data to be transmitted to your pc.

2.  Open Device Manager

> Check the COM port of your new plugged in device

3.  Open Putty

4.  Insert the Serial COM Port seen in Device Manager, select serial
    speed 9600, Connect type Serial and Telnet, Then click *Open*
