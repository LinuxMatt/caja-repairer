AM_CPPFLAGS = \
	-DGNOMELOCALEDIR=\""$(localedir)"\"   \
	$(WARN_CFLAGS)                        \
	$(DISABLE_DEPRECATED_CFLAGS)          \
	$(CAJA_CFLAGS)

caja_extensiondir=$(CAJA_EXTENSION_DIR)
caja_extension_LTLIBRARIES=libcaja-filename-repairer.la

libcaja_filename_repairer_la_SOURCES =    \
	filename-repairer.c                   \
	caja-filename-repairer.c          \
	caja-filename-repairer.h          \
	caja-filename-repairer-i18n.h     \
	$(NULL)

libcaja_filename_repairer_la_LDFLAGS = -module -avoid-version
libcaja_filename_repairer_la_LIBADD  = $(CAJA_LIBS)

bin_PROGRAMS = caja-filename-repairer

caja_filename_repairer_SOURCES = \
	repairer.c \
	repair-dialog.h \
	repair-dialog.c \
	encoding-dialog.h \
	encoding-dialog.c \
	$(NULL)

caja_filename_repairer_CFLAGS = \
	-DPKGDATADIR=\"$(pkgdatadir)\" \
	$(CAJA_CFLAGS) \
	$(NULL)

caja_filename_repairer_LDADD = $(CAJA_LIBS)

pkgdata_DATA = \
	repair-dialog.ui \
	encoding-dialog.ui \
	$(NULL)

EXTRA_DIST = \
	$(pkgdata_DATA) \
	$(NULL)
