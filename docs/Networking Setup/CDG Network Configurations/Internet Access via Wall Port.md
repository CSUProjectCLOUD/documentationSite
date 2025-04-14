# Internet Access via Wall Port

**Authors:** Jaden Jefferson

**Last Updated:** 24 Mar 2025

## Objective

- Convert to an L3 switch

- Set default-gateway and ip route to that of the universities wall port

- Set VLAN 2 to allow DHCP

## CLI Set Up

switch1\>enable

switch1\#config t

switch1\#ip routing

switch1\#ip route 0.0.0.0 0.0.0.0 10.12.112.1

switch1(config)\# interface vlan 2

switch1(config-if)\# ip address dhcp

switch1(config-if)\# no shutdown

switch1(config-if)\# end

switch1\#write memory

## Physical Set Up

Plug an ethernet cable of cat5 or 6 into any port 7 through 12. If
unsure of the ports contained in vlan 2. Run *show vlan brief* if
unsure.

Plug the other end into the wall port that contains the default-gateway

## Confirming

switch1\# show running-config \| include default-gateway

switch1\# show ip route

switch1\# show ip interface brief

switch1\# show interfaces vlan 2

## Testing

switch1\# ping 10.12.112.1

switch1\# ping 8.8.8.8

**Test 1:** Pinging 8.8.8.8 - Internet

**Test 2:** Pinging 10.8.112.1 - Default Gateway
