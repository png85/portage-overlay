#
# Gentoo ebuild for libdsncompat
#
inherit cmake-utils

DESCRIPTION="#das-system Networks compatibility library"
HOMEPAGE="http://github.com/png85/dsncompat"
SRC_URI="https://github.com/png85/dsncompat/tarball/dsncompat-0.99.3"
LICENSE="BSD"

SLOT="0"
KEYWORDS="~alpha amd64 ~arm ~hppa ~ia64 ~ppc ~ppc64 ~s390 ~sh ~sparc x86 ~x86-fbsd"

IUSE="test"

DEPEND="app-arch/gzip
app-arch/tar
dev-util/cmake"

S="${WORKDIR}"

mycmakeargs=(
  $(cmake-utils_use_build test TESTING)
)

src_unpack() {
  tar xzf "${DISTDIR}/${A}" --strip-components 1 || die
}
