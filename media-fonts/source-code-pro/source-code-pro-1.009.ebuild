inherit font

DESCRIPTION="Adobe Source Code Pro font"
HOMEPAGE="http://blogs.adobe.com/typblography/2012/09/source-code-pro.html"
SRC_URI="mirror://sourceforge/sourcecodepro.adobe/SourceCodePro_FontsOnly-1.009.zip"
LICENSE="OFL-1.1"
SLOT="0"
KEYWORDS="~alpha amd64 ~arm ~hppa ~ia64 ~ppc ~ppc64 ~s390 ~sh ~sparc x86 ~x86-fbsd"
IUSE=""
RESTRICT="strip binchecks"
RDEPEND="media-libs/fontconfig"
DEPEND="app-arch/unzip"

FONT_SUFFIX="otf ttf"
FONT_S="${WORKDIR}/SourceCodePro_FontsOnly-1.009"
FONT_CONF=("${FILESDIR}/60-source-code-pro.conf")
