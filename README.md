CentOS SELinux Policy differences
---------------------------------

This repo contains SELinux base policy interfaces which are extracted from
selinux-policy-devel packages in CentOS. Use github branch comparison to see
differences between branches or plain git:

    git diff centos-7.1.1503 centos-7.2.1511

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
