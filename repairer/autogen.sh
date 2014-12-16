#!/bin/bash

touch ChangeLog
libtoolize --copy --force
intltoolize --copy --force --automake
aclocal
autoheader
automake --add-missing --copy
autoconf
echo "./configure $@"
./configure $@

