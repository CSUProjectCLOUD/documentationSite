# Known Issues

## Devstack

Occasionally, you can run into issues with running Devstack. Oftentimes, this can be remedied by running the following commands in order:

- > ./unstack.sh

- > ./clean.sh

- > ./stack.sh

Make sure you are in the devstack directory before running these commands.

If you run stack.sh and, upon loading into the Horizon dashboard, you are greeted with the Apache Default Page instead of the Openstack login, run the following command on the server.

- > service apache2 reload

If this does not fix it, refresh the cache on your browser or open the dashboard in a private window. If it still does not fix, attempt the following commands in this order:

- > sudo a2dissite 000-default.conf

- > systemctl reload apache2

If you get the error that hosts are not mapped to any cell when attempting to stack or create an instance, run the following command on the server.

- > sudo nova-manage cell_v2 discover_hosts -verbose

If you have errors related to authentication when attempting to run any of the above commands, log into the Horzion dashboard on a separate device. Then, go to the top right where it shows the profile you are logged in on. Click, and it should say "Openstack RC File". Make sure you are logged into the admin account, and download this file. Transfer it to a USB drive and copy it to the Devstack directory on the server, then run the following command:

- > source openrc
