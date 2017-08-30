DEPENDS_append_sh4 = " \
	libmmeimage libmme-host libeplayer3 \
	"

RDEPENDS_${PN}_append_sh4 = " \
	libmme-host \
	"

EXTRA_OECONF_append_sh4 = " \
	--enable-libeplayer3 --enable-${MACHINE} --with-lcd \
	"

SRC_URI_sh4 = "${GITHUB_URI}/MastaG/enigma2-openpli-fulan.git;branch=master"
