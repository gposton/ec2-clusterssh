# Ec2::Clusterssh

Use instance tags to launch a ClusterSSH session to multiple EC2 instances.

## Installation

    $ gem install ec2-clusterssh

## Prerequisites

- [ClusterSSH](http://sourceforge.net/apps/mediawiki/clusterssh/index.php?title=Main_Page)
- Install [AWS command line
  tools](http://aws.amazon.com/developertools/351?_encoding=UTF8&jiveRedirect=1)
- Set up your AWS credentials
  ([Mac](http://www.robertsosinski.com/2008/01/26/starting-amazon-ec2-with-mac-os-x/)/[Ubuntu](http://apps.owncloud.com/stories/Eric+Hammond%3A+Installing+AWS+Command+Line+Tools+Using+Ubuntu+Packages?id=88433&PHPSESSID=639bdbcbb83b36c51676311c40546734))
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
