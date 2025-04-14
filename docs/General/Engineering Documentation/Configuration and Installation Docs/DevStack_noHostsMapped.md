Devstack installation, defaults

Error: No host mapped to the whatever

Copied the admin openrc from horizon \> flash drive \> server

<https://docs.openstack.org/nova/2024.2/install/compute-install-ubuntu.html#add-the-compute-node-to-the-cell-database>

sudo nova-manage cell\_v2 map\_cell\_and\_hosts\
\# Tells the system to check for hosts/cells and map them\
\# \-\-- What i ran is below\
. admin-openrc\
\# TBH ran it because the openstack page told me to\
\# authentication\
\
openstack compute service list \--service nova-compute\
\# List the services running under nova-compute\
\
sudo nova-manage cell\_v2 discover\_hosts \--verbose\
\# checks for hosts, verbose just outputs everything\
\
nova-manage cell\_v2 discover\_hosts\
\# Same command but not sudo\'d or verbose
