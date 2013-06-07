inherit cmake-utils
DESCRIPTION="A C++ JSON Parser/Generator Implemented with Boost Spirit"
HOMEPAGE="http://www.codeproject.com/Articles/20027/JSON-Spirit-A-C-JSON-Parser-Generator-Implemented"
SRC_URI="https://github.com/png85/json_spirit/tarball/json_spirit-4.07"
LICENSE="MIT"

SLOT="0"
KEYWORDS="~alpha amd64 ~arm ~hppa ~ia64 ~ppc ~ppc64 ~s390 ~sh ~sparc x86 ~x86-fbsd"
IUSE=""
DEPEND="app-arch/gzip
app-arch/tar
dev-util/cmake
dev-libs/boost"
RDEPEND="dev-libs/boost"

S="${WORKDIR}"

src_unpack() {
	tar xzf "${DISTDIR}/${A}" --strip-components 1 || die
}
