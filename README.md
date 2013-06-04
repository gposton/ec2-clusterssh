ec2-clusterssh
==============

A script that uses EC2 instance tags to generate a list of public dns names to be consumed by cluster ssh

h1. Installation/Setup

- Copy 'cluster' to /usr/local/bin (or somewhere in your path).
- Install [ClusterSSH](http://sourceforge.net/apps/mediawiki/clusterssh/index.php?title=Main_Page)
- Edit /etc/csshrc to add the path to your identity file (rsa key).
    ssh_args = -i path/to/identity/file

h1. Usage

    Usage: cluster [-t TAG] -v VALUES
        -t, --tag [TAG]                  TAG to filter on (default: role)
        -v, --values [VALUES]            a comma separated (no spaces) of values to match against (i.e. web,database)

h1. Examples

h2. Test output

    cluster -t Name -v web,database

h2. Use script to ClusterSSH

    cssh -l ec2-user `cluster -t Name -v web,database`
