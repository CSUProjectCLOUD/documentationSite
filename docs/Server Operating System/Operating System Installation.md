Introduction
=============

This document is a set of instructions for installing operating systems
on the servers. For our primary operating system, we're using Ubuntu
Server 24.04.01 LTS. Ubuntu Server was selected over Windows server
because it's an industry standard free and open-source OS for servers.
Alternative operating systems included RHEL and SUSE Server; Ubuntu beat
these due to widespread usage and personal familiarity.

Requirements
=============

- USB flash drive, at least 16 GB

- Server able to boot to BIOS and connect to Internet via wired
    connection

Downloads
----------

- Ubuntu Server 24.04.01 LTS **ISO**

  - <https://ubuntu.com/download/server>

- Ventoy 1.1.00 **LiveCD ISO** and **Executable**

  - <https://github.com/ventoy/Ventoy/releases/tag/v1.1.00>

  - Linux tarball or Windows zip

Instructions
=============

1. **Ensure that there is no important data on your flash drive or
    > server storage drives!**

2. Place all the downloaded files into the same directory.

3. Install Ventoy on your flash drive:

    a.  On Linux:

        i.  Open VentoyGUI.x86\_64 to open the GUI

        ii. Select your flash drive under Device

        iii. Click Install

    b.  On Windows

        i.  Run Ventoy2Disk.exe

        ii. Select your flash drive under Device

        iii. Click Install

4. Transfer the Ubuntu Server ISO to the flash drive from your file
    explorer.

5. Eject flash drive from your PC.

6. Shut server off. Plug in flash drive.

7. Connect the server to the network by plugging an Ethernet cable into
    > its network port 1 and the wall jack. Ensure that the Ethernet
    > cable is not in the iDRAC port.

8. Boot server. Press F11 repeatedly to access the BIOS Boot Manager.

9. In the BIOS Boot Manager, select the flash drive. It may be under
    Hard Drives.

10. Boot into the flash drive.

11. When Ventoy opens, select Ubuntu Server (or your desired ISO).

12. Boot into normal mode, not GRUB mode, if asked.

13. You should now be in the Ubuntu Server setup wizard!

14. Navigate the wizard using your arrow keys, Enter, and Space.

15. Select your language and keyboard layout.

16. Choose the type of installation. We're using the default: Ubuntu
    Server.

17. Network configuration:

    a.  We have four network ports but will only be using the first one
        for now.

    b.  Navigate to DHCP4, hit Enter, and select Automatic (DHCP).

    c.  Navigate to DHCP6, hit Enter, and select Automatic (DHCP).

    d.  The server should automatically be assigned IP addresses.

18. We are not using a Proxy server.

19. Mirror test:

    a.  let the server check the Ubuntu package index, then select Done.

    b.  We are not using an alternative mirror.

20. Guided storage configuration:

    a.  Select Use an entire disk.

    b.  Select Set up this disk as an LVM group.

    c.  Select Encrypt the LVM group with LUKS.

        i.  Enter and confirm the passphrase.

        ii. Select Also create a recovery key.

    d.  Select Done.

    e.  Look over the File System Summary. Used Devices should have your
        main storage drive with partitions filling its space.

21. Create a user account:

    a.  Provide a name -- we\'re using Cloudgineers.

    b.  Provide the server's name -- probably R730, R710a, or R710b.

    c.  Pick a username -- we\'re using cloudadmin.

    d.  Enter and confirm a password. We used 0990.

22. Don't enable Ubuntu Pro.

23. Install OpenSSH if you want. We skipped this.

24. Install any of the packages if you want. We only installed
    Kubernetes.

25. Let the installer complete the process, then reboot.

26. You should now be able to log in with the username and password you
    provided.

Addendum
=========

Linux is the family of operating systems which run on the Linux kernel.
The Linux kernel is a low-level piece of the operating system which
manages interactions between the applications and the hardware.

Linux distributions are full-fledged operating systems based on the
Linux kernel.

Some of the major Linux distributions are Debian, Ubuntu, Fedora Linux,
Arch Linux, Red Hat Linux, and openSUSE. Each has a different
development philosophy and serves a slightly different purpose.

Many distributions are based on one of the above distributions. Ubuntu
is itself based on Debian.

Debian emphasizes stability, security, and free software. Ubuntu builds
upon Debian with an aim for regular releases, consistent user
experiences, and support on both desktops and servers.

As one of the most popular Linux distributions, Ubuntu is very
well-documented and easy to research.

But other distributions are worth investigating as well.

Puppy Linux is a very light-weight distribution which is great for using
as a Live USB.

A Live USB is a full operating system that can boot from a flash drive.
This is very useful for investigating and repairing computers.

OpenSUSE and Red Hat Linux are the bases of the server distributions we
almost used.

Pop!\_OS is an Ubuntu-based distribution that I've been using daily
since 2021. It's excellent for out-of-the-box functionality, and they're
currently creating a brand-new desktop environment for the OS.

See [distrowatch.com](https://distrowatch.com) for much more information
about Linux and BSD distributions.

I will also be happy to share more information on Linux if desired.

References
===========

<https://www.ventoy.net/en/doc_start.html>

<https://documentation.ubuntu.com/server/tutorial/>
