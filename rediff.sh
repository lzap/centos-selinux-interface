#!/bin/bash

# cleanup
find centos-*/ -type f | grep -Ev '\.(if|spt)' | xargs rm 2>/dev/null

# diffs
diff -ru centos-6.0/ centos-6.1/ > centos-6.0-vs-6.1.diff
diff -ru centos-6.1/ centos-6.2/ > centos-6.1-vs-6.2.diff
diff -ru centos-6.2/ centos-6.3/ > centos-6.2-vs-6.3.diff
diff -ru centos-6.3/ centos-6.4/ > centos-6.3-vs-6.4.diff
diff -ru centos-6.4/ centos-6.5/ > centos-6.4-vs-6.5.diff
diff -ru centos-6.5/ centos-6.6/ > centos-6.5-vs-6.6.diff
diff -ru centos-7.1.1503/ centos-7.2.1511/ > centos-7.1-vs-7.2.diff
diff -ru centos-7.0.1406/ centos-7.1.1503/ > centos-7.0-vs-7.1.diff
