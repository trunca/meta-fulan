DEPENDS_remove_sh4 = " \
	gstreamer1.0-plugins-base gstreamer1.0 \
	"

DEPENDS_append_sh4 = " \
	libmmeimage libmme-host libeplayer3 \
	"

RRECOMMENDS_${PN}_remove_sh4 = " \
        gstreamer1.0-plugin-subsink \
        ${GST_BASE_RDEPS} \
        ${GST_GOOD_RDEPS} \
        ${GST_BAD_RDEPS} \
        ${GST_UGLY_RDEPS} \
        "

RDEPENDS_${PN}_append_sh4 = " \
	libmme-host \
	"

SRC_URI_remove_sh4 = " \
	file://use-ioctl-22-for-h265.patch \
	file://fix-fp-version.patch \
	file://tryfix-videomode.patch \
	file://tryfix-snr-si216x-tuners.patch \
"

EXTRA_OECONF_remove_sh4 = "\
	--with-gstversion=1.0 \
	"

EXTRA_OECONF_append_sh4 = "\
	--enable-libeplayer3 --disable-gstreamer --enable-${MACHINE} --with-lcd \
	"

LDFLAGS_prepend_sh4 = ""

CXXFLAGS_append_sh4 = " -std=gnu++11 "

SRC_URI_sh4 = "${GITHUB_URI}/MastaG/enigma2-openpli-fulan.git;branch=master"
