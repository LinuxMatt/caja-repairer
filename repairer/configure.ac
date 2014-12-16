AC_INIT([caja-filename-repairer], [0.1.1], [choe.hwanjin@gmail.com], [caja-filename-repairer])
AC_CONFIG_SRCDIR([Makefile.am])
AC_CONFIG_HEADERS(config.h)
AC_CONFIG_MACRO_DIR([m4])
AM_INIT_AUTOMAKE([dist-bzip2])

# Checks for programs.
AC_PROG_CC
AM_PROG_CC_C_O
AC_DISABLE_STATIC
IT_PROG_INTLTOOL([0.35.0])
AC_PROG_LIBTOOL
PKG_PROG_PKG_CONFIG

AH_TEMPLATE([GETTEXT_PACKAGE], [Package name for gettext])
GETTEXT_PACKAGE=caja-filename-repairer
AC_DEFINE_UNQUOTED(GETTEXT_PACKAGE, "$GETTEXT_PACKAGE")
AC_SUBST(GETTEXT_PACKAGE)
AM_GLIB_GNU_GETTEXT

AC_SUBST(CFLAGS)
AC_SUBST(CPPFLAGS)
AC_SUBST(LDFLAGS)

CAJA_REQUIRED=1.6.0

PKG_CHECK_MODULES(CAJA, [
    libcaja-extension >= $CAJA_REQUIRED
])
AC_SUBST(CAJA_CFLAGS)
AC_SUBST(CAJA_LIBS)

AC_ARG_WITH(caja-extension-dir,
	      [AS_HELP_STRING([--with-caja-extension-dir],
		    [specify the caja extension directory])])

AC_MSG_CHECKING([for caja extension directory])
if test -n "$with_caja_extension_dir"; then
    CAJA_EXTENSION_DIR=$with_caja_extension_dir
else
    CAJA_EXTENSION_DIR=`$PKG_CONFIG --variable=extensiondir libcaja-extension`
fi
if test -z "$CAJA_EXTENSION_DIR"; then
    CAJA_EXTENSION_DIR='${exec_prefix}/lib/caja/extensions-2.0'
fi

AC_MSG_RESULT([${CAJA_EXTENSION_DIR}])
AC_SUBST(CAJA_EXTENSION_DIR)

AC_CONFIG_FILES([Makefile
		 src/Makefile
		 po/Makefile.in])

AC_OUTPUT
