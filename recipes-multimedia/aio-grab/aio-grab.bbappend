FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

SRC_URI_append_sh4 = " \
    file://aio-grab-sh4.patch \
"
