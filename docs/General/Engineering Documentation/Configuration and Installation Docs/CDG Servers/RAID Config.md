Configuring RAID

[Video for this
Configuration](https://www.youtube.com/watch?v=EPe0BOJDMcA)

I thought I needed to initialize for PowerEdge 710B. I had to go to
system setup and change the boot sequence to select just the Integrated
RAID option. I am having an issue with Linux not coming up after the
initializing of RAID. Conclusion: When you initialize the RAID, then you
have to upload Ubuntu and KVM again. This took awhile. The RAID is
already configured on the servers.

RAID levels explained in this
[link](https://www.booleanworld.com/raid-levels-explained/)

RAID levels comparison chart
[link](https://www.raid-calculator.com/raid-types-reference.aspx)

RAID Real World Performance
[link](https://larryjordan.com/articles/real-world-speed-tests-for-different-hdd-raid-levels/)

We can configure the RAID using function F10 instead of control R.

F2: I changed the boot sequence to: Hard Drive, Embedded, then SATA --
to change the boot order you just press the minus or plus key on the
keyboard to move the order around.

I pressed F2 in BIOS configuration and selected check consistency to
verify and correct parity or mirror for fault tolerance on virtual disk.
It is recommended by dell.com
[link](https://www.dell.com/support/kbdoc/en-us/000139796/perc-how-to-perform-a-check-consistency-using-openmanage-server-administrator)
(performed every 30 days) The consistency takes a while but is
recommended every 30 days, so it is done for the R710b.
