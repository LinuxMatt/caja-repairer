
SUBDIRS = po src

ACLOCAL_AMFLAGS = -I m4

EXTRA_DIST = \
        intltool-extract.in \
        intltool-update.in \
        intltool-merge.in

DISTCLEANFILES = \
        intltool-extract \
        intltool-update \
        intltool-merge

DISTCHECK_CONFIGURE_FLAGS = --with-caja-extension-dir=$${dc_install_base}/lib/caja/extension-2.0


dist-hook:
	@if test -d .git ; then \
		git log > $(distdir)/ChangeLog ; \
	else \
		touch $(distdir)/ChangeLog ; \
	fi

.PHONY: log
log:
	@if test -d .git ; then \
		git log > ChangeLog ; \
	else \
		touch ChangeLog ; \
	fi
