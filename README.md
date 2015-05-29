# Ec2::Clusterssh

Use instance tags to launch a ClusterSSH session to multiple EC2 instances.

## Installation

    $ gem install ec2-clusterssh
    
Note:  Mac users with the latest version of XCode may run into a compilation error installing the json gem dependency.  If you see the following error during the gem installation, see this [page](https://langui.sh/2014/03/10/wunused-command-line-argument-hard-error-in-future-is-a-harsh-mistress/) for a workaround

> clang: error: unknown argument: '-multiply_definedsuppress' [-Wunused-command-line-argument-hard-error-in-future]

## Prerequisites

- [ClusterSSH](http://sourceforge.net/apps/mediawiki/clusterssh/index.php?title=Main_Page) (To install csshx on mac use this [page](https://code.google.com/p/csshx/))
- Set up your AWS credentials (note that these values can be also passed in
  as command line options)

> export AWS_ACCESS_KEY_ID='...'

> export AWS_SECRET_ACCESS_KEY='...'

## Usage

    $cluster -h
    Usage: cluster [-t TAGS] [-l USER] [-r region]
        -l, --login [USER]               Log in with this user (default: ec2-user
        -t, --tags [TAGS]                a 'space' sparated key value pair of tags and values (i.e. role=web,database environment=dev)
        -r, --region [REGION]            AWS region
        -p, --use-private-ip             Use private IP (default false)

    $cluster -l ec2-user -t Name=web,database                  #Connects to all web and database servers
    $cluster -l ec2-user -t role=web,database environment=dev  #Connects to all web and database servers in the dev environment

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
