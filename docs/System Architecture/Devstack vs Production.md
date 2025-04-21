# Devstack vs Production

## Devstack is a development environment

Devstack is, by definition, a development environment. It is very manual and hands-on, requiring many things to be done by hand (such as instance creation, project allocation, and deployment). It is useful for implementing and testing with Devstack, but it should ideally be replaced by Kolla-Ansible or a similar other Openstack production environment as soon as possible when creating the final deliverable.

Other Openstack environments such as Kolla-Ansible are much more automated and clean, made for a production environment and to be delivered to the customer/consumer. Devstack should be used as a development environment only- a sort of testing playground to experiment with Openstack, learn about its workings, and gain knowledge to be used in the actual production environment. It is not and should not be used as a final product or production environment.
