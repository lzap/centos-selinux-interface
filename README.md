CentOS SELinux Policy differences
---------------------------------

This repo contains SELinux base policy interfaces which are extracted from
distribution packages. It can be used to show differences among releases or
updates. To see the differences, use simply git:

    git diff centos-7.1.1503 centos-7.2.1511

Unfortunately, github cannot be used as it always diffs against base branch.
I created diffs with the most interesting differences, see contents of the
`master` branch. Github has syntax highlighting for diffs.

Distributions
-------------

Currently archived distributions in this repository:

 * CentOS 7 (archives from http://vault.centos.org)

Contributing
------------

To push new update or release, find the RPM package
(http://rpm.pbone.net/index.php3/stat/2/simple/2) and then do the following:

    git co -b centos-7.X.XXXX
    rpm2cpio selinux-policy-devel-*.rpm | cpio -idmv
    git add -A
    git commit "Added selinux-policy-devel-XYZ.noarch.rpm"

Then create the diff file filtering out unnecessary elements:

    git checkout master
    git diff b1 b2 | filterdiff README.md *.diff > distro-X-vs-Y.diff

And file a Pull Request for this repo, thanks!
