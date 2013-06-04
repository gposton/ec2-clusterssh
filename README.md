# Ec2::Clusterssh

Use instance tags to launch a ClusterSSH session to multiple EC2 instances.

## Installation

    $ gem install ec2-clusterssh

## Prerequisites

- [ClusterSSH](http://sourceforge.net/apps/mediawiki/clusterssh/index.php?title=Main_Page)
- Edit /etc/csshrc to add the path to your identity file (rsa key).

> ssh_args = "-i path/to/identity/file"

## Usage

    $cluster -h
    Usage: cluster [-t TAG] -v VALUES
        -t, --tag [TAG]                  TAG to filter on (default: role)
        -v, --values [VALUES]            a comma separated (no spaces) of values to match against (i.e. web,database)


    $cluster -l ec2-user -t Name -v web,database

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
