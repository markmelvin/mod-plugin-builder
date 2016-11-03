######################################
#
# gxvintagefuzzmaster
#
######################################

GXVINTAGEFUZZMASTER_VERSION = 854775815864589cf08cb7f0b859656ca6251084
GXVINTAGEFUZZMASTER_SITE = $(call github,moddevices,GxVintageFuzzMaster.lv2,$(GXVINTAGEFUZZMASTER_VERSION))
GXVINTAGEFUZZMASTER_BUNDLES = gx_vfm.lv2

GXVINTAGEFUZZMASTER_TARGET_MAKE = $(TARGET_MAKE_ENV) $(TARGET_CONFIGURE_OPTS) $(MAKE) SSE_CFLAGS="-O3 -mfpu=vfpv3" -C $(@D)

define GXVINTAGEFUZZMASTER_BUILD_CMDS
	$(GXVINTAGEFUZZMASTER_TARGET_MAKE)
endef

define GXVINTAGEFUZZMASTER_INSTALL_TARGET_CMDS
	$(GXVINTAGEFUZZMASTER_TARGET_MAKE) install DESTDIR=$(TARGET_DIR) INSTALL_DIR=/usr/lib/lv2
	cp -rL $($(PKG)_PKGDIR)/gx_vfm.lv2/* $(TARGET_DIR)/usr/lib/lv2/gx_vfm.lv2/
endef

$(eval $(generic-package))
