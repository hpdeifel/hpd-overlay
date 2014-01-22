# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/xfce-base/garcon/garcon-0.2.1.ebuild,v 1.1 2013/05/05 16:45:45 ssuominen Exp $

EAPI=5
inherit xfconf

DESCRIPTION="Xfce's freedesktop.org specification compatible menu implementation library"
HOMEPAGE="http://www.xfce.org/projects/libraries/"

LICENSE="LGPL-2 FDL-1.1"
SLOT="0"
KEYWORDS=""
IUSE="debug"

RDEPEND=">=dev-libs/glib-2.14
	>=xfce-base/libxfce4util-4.10.1"
DEPEND="${RDEPEND}
	dev-util/intltool
	sys-devel/gettext
	virtual/pkgconfig"

pkg_setup() {
	XFCONF=(
		$(xfconf_use_debug)
		--with-html-dir="${EPREFIX}"/usr/share/doc/${PF}/html
		)

	DOCS=( AUTHORS ChangeLog HACKING NEWS README STATUS TODO )
}
