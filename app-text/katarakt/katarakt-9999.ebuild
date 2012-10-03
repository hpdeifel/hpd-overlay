EAPI=4

inherit qt4-r2 git-2

DESCRIPTION="Simple PDF viewer with two layouts"
HOMEPAGE="http://git.cs.fau.de/?p=katarakt"
EGIT_REPO_URI="git://git.informatik.uni-erlangen.de/${PN}"

LICENSE="BSD-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="x11-libs/qt-core:4
	x11-libs/qt-gui:4
	>=app-text/poppler-0.18[qt4]"
DEPEND="${RDEPEND}
	app-text/asciidoc"

src_compile() {
	qt4-r2_src_compile
	pushd doc/
	a2x -f manpage katarakt.txt
	popd
}

src_install() {
	dobin katarakt
	doman doc/katarakt.1
}
