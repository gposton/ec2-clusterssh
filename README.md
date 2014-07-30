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
    Usage: cluster [-t TAGS] [-l USER] [-k KEY -s SECRET] [-r region]
        -l, --login [USER]               Log in with this user
        -t, --tags [TAGS]                a 'space' sparated key value pair of tags and values (i.e. -t 'role=web,database environment=dev')
        -r, --region [REGION]            AWS region
        -o, --options [SSH_OPTIONS]      ssh options to pass directly to cssh
        -s, --screen [SCREEN]            What screen to use for clustering windows (form multiple displays)
        -p, --use-public-ip              Use public IP (default false)


    $cluster -t Name=web,database                  #Connects to all web and database servers
    $cluster -t 'role=web,database environment=dev'  #Connects to all web and database servers in the dev environment
    $cluster -t 'role=web,database environment=dev' -o"-i /Path/to/key.pem"  # connect using explicit private key

## Notes

If you use a bastion jumphost, you'll want to configure your ssh config
file to route the relavant IP ranges through your bastion.  (i.e.
192.168.*)

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
