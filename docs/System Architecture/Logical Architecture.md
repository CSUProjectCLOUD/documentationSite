# Logical Architecture

## PowerEdge R730
The R730 is based on a dual-socket architecture using Intel Xeon E5-2600 v3/v4 CPUs, connected via a high-speed QPI (QuickPath Interconnect). Each CPU has direct access to four DDR4 memory channels, supporting up to 24 DIMM slots total (12 per CPU), enabling up to 1.5TB of RAM with LRDIMMs.

The system includes a modular storage backplane connected to a PERC RAID controller, which interfaces with either 2.5" or 3.5" hot-swappable drives. The storage subsystem connects to the CPUs via the PCH (Platform Controller Hub) or directly through the PCIe bus, depending on the controller used.

Expansion capabilities include up to seven PCIe 3.0 slots for network cards, GPUs, or other peripherals. The R730 supports optional internal dual SD modules for hypervisor redundancy and includes a dedicated iDRAC8 module for out-of-band management via a separate NIC.

Power is provided by redundant PSU units (495W to 1100W), and advanced thermal management is handled by several high-efficiency fans monitored by the integrated Lifecycle Controller and thermal sensors.

## PowerEdge R710
The R710 is a dual-socket server built on the Intel Xeon 5500/5600 series platform, utilizing the Intel 5520 chipset. Each CPU socket connects via Intel's QuickPath Interconnect (QPI), with each processor supporting up to three memory channels. The server has 18 DDR3 DIMM slots (9 per CPU), supporting up to 288GB of RAM with RDIMMs.

Storage is connected via a modular backplane that supports either 6 x 3.5" or 8 x 2.5" hot-swappable drives, interfacing through PERC 6/i, H700, or other RAID controllers via PCIe lanes. The architecture includes four PCIe Gen2 slots for additional expansion cards (e.g., network, storage, or GPU), and an embedded Broadcom-based dual or quad-port Gigabit Ethernet controller for networking.

Management is handled by an integrated iDRAC6 module for out-of-band access and monitoring, along with Dell’s Lifecycle Controller for deployment and maintenance tasks. Power is supplied through redundant 570W, 870W, or 1100W hot-plug PSUs, with active thermal control via intelligent fan arrays.