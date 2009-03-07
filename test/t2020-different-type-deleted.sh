#! /bin/sh -e

# See what happens if we create a file, then delete it, then re-create it as
# a directory before running update.

. ../tup.sh
touch foo
tup touch foo
rm foo
tup delete foo

mkdir foo
touch foo/bar
tup touch foo/bar
