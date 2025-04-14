# Bugs in DevStack

If you are getting Apache default and not DevStack dashboard you will
need to run the command: sudo service apache2 restart.

If you are having issues with DevStack dashboard, you can try cleaning
it with these steps:

DevStack must be properly shut down before shutting down the server:

Run the following commands in \~/devstack:

./unstack.sh

./clean.sh

On startup, run:

cd devstack

./stack.sh

The startup script takes approximately 13 minutes to execute.

Error:

Touch: cannot touch 'opt/stack/devstack/.localrc.password': Permission
denied

-   Here we have a permission error. I resolved this problem by first
    checking the permissions and owner of my /opt/stack/devstack
    directory, then /opt/stack. On running ls --la /opt/stack, I found
    that most of the folders within belonged to stack, but the devstack
    directory belonged to root. Groups were inconsistent (this isn't
    very important here). The devstack directory had permissions
    drwxr-xr-x, meaning only the root user had full write access. Since
    stack.sh runs as the user stack, it couldn't write in the folder,
    causing the error. Next I ran ls --la /opt/ to see what the stack
    folder's permissions and owner looked like. It had full permissions
    but was owned by root. So I used chown --r stack:stack /opt/stack to
    change its owner to the stack user. Stack.sh now got farther but
    errors again.
