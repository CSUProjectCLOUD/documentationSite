[Subnet
size](https://www.reddit.com/r/networking/comments/1ekatl7/feedback_needed_on_vlan_and_subnet_design_for_our/?share_id=hWhsZW5aNAnO9oH7Z1Lpo&utm_content=2&utm_medium=ios_app&utm_name=ioscss&utm_source=share&utm_term=1)
for a VLAN in a Cisco network running OpenStack:

-   **/24** (255.255.255.0) → 254 usable IPs (Common choice for small to
    medium setups)

-   Scalable but not excessive for proof of concept.

-   Keeps network simple while allowing enough IPs for VMs and
    infrastructure.

-   **/22** (255.255.252.0) → 1022 usable IPs (Better for larger
    deployments)

-   Avoids unnecessary complexity of larger subnet masks like **/22**

-   **/21** (255.255.248.0) → 2046 usable IPs (For even larger networks)

More Proof:

-   [Cisco
    Site](https://community.cisco.com/t5/switching/subnet-size-in-modern-networks/td-p/1283674)

-   [Reddit
    Post](https://www.reddit.com/r/Cisco/comments/y0ktxc/which_ip_address_do_i_assign_a_new_vlan/)

VLAN configuration guidance on your Cisco switches for OpenStack:

-   VLAN 100 is used for OpenStack instances.

-   VLAN 200 is used for OpenStack management.

-   VLAN 300 is for storage traffic (if needed).

-   Trunking is used to allow multiple VLANs between switches and
    OpenStack nodes.

Number of IP addresses required for [OpenStack on
Cisco](https://www.reddit.com/r/openstack/comments/10997w2/comment/j41vlku/?utm_source=share&utm_medium=web3x&utm_name=web3xcss&utm_term=1&utm_content=share_button):

-   OpenStack Controller needs 1-2 ips

-   Compute Nodes needs 3 ips

-   Management VLAN (VLAN 200) → For OpenStack services (Controller,
    Compute, Storage).

-   Instance VLAN (VLAN 100) → For VM traffic.

-   Storage VLAN (VLAN 300) → If using Ceph/NFS.

-   External VLAN → If you need external internet access for VMs.
