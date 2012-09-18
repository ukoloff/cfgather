cfgather
========

Collect configuration from network appliances using SSH

1. Create DB, user, fill .my.cnf

2. Run ./init

This adds public keys to putty's known_hosts and adds cfgather user to appliances.

ssh-agent should be active and TFTP server required for ProCurve switches.

3. Run ./get - manually or via cron

4. Run ./export to generate cfgather.zip with complete configuration archive.

5. Run ./apply cmd

Execute command (Where snippet.name='cmd') on all appliances.
