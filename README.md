CentOS SELinux Policy differences
---------------------------------

This repo contains SELinux base policy interfaces which are extracted from
selinux-policy-devel packages in CentOS. This git repository can be used to
show differences among releases or updates. To see the differences, use git:

    git diff centos-7.1.1503 centos-7.2.1511

Unfortunately, github cannot be used as it always diffs against base branch.
I created gists with the most interesting differences:

* CentOS 7.1 vs 7.2: https://gist.github.com/lzap/9a3ae1e02a9cbdf6fb26

Contributing
------------

To push new update or release, find the RPM package
(http://rpm.pbone.net/index.php3/stat/2/simple/2) and then do the following:

    git co -b centos-7.X.XXXX
    rpm2cpio selinux-policy-devel-*.rpm | cpio -idmv
    git add -A
    git commit "Added selinux-policy-devel-XYZ.noarch.rpm"
    git push

And file a Pull Request for this repo, thanks!
