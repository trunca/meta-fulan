DESCRIPTION = "MME image library"

require ddt-apps.inc

DEPENDS += " fulan-dvb-modules-${MACHINE}"

PROVIDES = "virtual/libgles2 virtual/egl"

INSANE_SKIP_${PN} += "dev-so"
