#!/bin/bash
# clean the project

make maintainer-clean
make clean
# EXTRA CLEANUP
rm config.h.in~ 2> /dev/null
rm -r autom4te.cache 2> /dev/null
rm -r m4 2> /dev/null
rm Makefile 2> /dev/null
rm Makefile.in 2> /dev/null
rm aclocal.m4 2> /dev/null
rm config.h 2> /dev/null
rm config.h.in 2> /dev/null
rm config.log 2> /dev/null
rm config.status 2> /dev/null
rm configure 2> /dev/null
rm depcomp 2> /dev/null
rm install-sh 2> /dev/null
rm intltool-extract 2> /dev/null
rm intltool-extract.in 2> /dev/null
rm intltool-merge 2> /dev/null
rm intltool-merge.in 2> /dev/null
rm intltool-update 2> /dev/null
rm intltool-update.in 2> /dev/null
rm missing 2> /dev/null
rm po/Makefile.in.in 2> /dev/null
rm src/Makefile.in 2> /dev/null
rm stamp-h1 2>/dev/null
rm config.guess 2>/dev/null
rm config.sub 2>/dev/null
rm compile 2>/dev/null
rm ltmain.sh 2>/dev/null
rm INSTALL 2>/dev/null



