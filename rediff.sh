#!/bin/bash

# cleanup
find centos-*/ -type f | grep -Ev '\.(if|spt)' | xargs rm 2>/dev/null

# diffs
diff -ru centos-7.1.1503/ centos-7.2.1511/ > centos-7.1-vs-7.2.diff
diff -ru centos-7.0.1406/ centos-7.1.1503/ > centos-7.0-vs-7.1.diff
