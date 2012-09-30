inherit font

DESCRIPTION="Adobe Source Sans Pro font"
HOMEPAGE="http://blogs.adobe.com/typblography/2012/08/source-sans-pro.html"
SRC_URI="mirror://sourceforge/sourcesans.adobe/SourceSansPro_FontsOnly-1.036.zip"
LICENSE="OFL-1.1"
SLOT="0"
KEYWORDS="~alpha amd64 ~arm ~hppa ~ia64 ~ppc ~ppc64 ~s390 ~sh ~sparc x86 ~x86-fbsd"
IUSE=""
RESTRICT="strip binchecks"
RDEPEND="media-libs/fontconfig"
DEPEND="app-arch/unzip"

FONT_SUFFIX="otf ttf"
FONT_S="${WORKDIR}/SourceSansPro_FontsOnly-1.036"
FONT_CONF=("${FILESDIR}/60-source-sans-pro.conf")
