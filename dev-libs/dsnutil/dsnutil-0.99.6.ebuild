#
# Gentoo ebuild for libdsnutil
#
inherit cmake-utils

DESCRIPTION="#das-system Networks utility library"
HOMEPAGE="http://github.com/png85/dsnutil"
SRC_URI="https://github.com/png85/dsnutil/tarball/dsnutil-0.99.6"
LICENSE="BSD"

SLOT="0"
KEYWORDS="~alpha amd64 ~arm ~hppa ~ia64 ~ppc ~ppc64 ~s390 ~sh ~sparc x86 ~x86-fbsd"

IUSE="test csv mpi log4cpp"

DEPEND="app-arch/gzip
app-arch/tar
dev-util/cmake"
RDEPEND=""

if use mpi; then
  DEPEND="${DEPEND} virtual/mpi"
  RDEPEND="${RDEPEND} virtual/mpi"
fi

if use log4cpp; then
  DEPEND="${DEPEND} dev-libs/log4cpp"
  RDEPEND="${RDEPEND} dev-libs/log4cpp"
fi

S="${WORKDIR}"

mycmakeargs=(
  $(cmake-utils_use_build test TESTING)
  $(cmake-utils_use_want csv CSV)
  $(cmake-utils_use_want log4cpp LOG4CPP)
  $(cmake-utils_use_want mpi MPI)
)

src_unpack() {
  tar xzf "${DISTDIR}/${A}" --strip-components 1 || die
}
