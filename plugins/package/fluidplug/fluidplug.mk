######################################
#
# fluidplug
#
######################################

FLUIDPLUG_VERSION = e54a6c93afbcdb83197eaf834b4e8e94f294209e
FLUIDPLUG_SITE = $(call github,falkTX,FluidPlug,$(FLUIDPLUG_VERSION))
FLUIDPLUG_DEPENDENCIES = fluidsynth host-p7zip-light
FLUIDPLUG_BUNDLES = AirFont320.lv2 FluidBass.lv2 FluidBrass.lv2 FluidChromPerc.lv2 FluidDrums.lv2 FluidEnsemble.lv2 FluidEthnic.lv2 FluidGuitars.lv2 FluidOrgans.lv2 FluidPercussion.lv2 FluidPianos.lv2 FluidPipes.lv2 FluidReeds.lv2 FluidSoundFX.lv2 FluidStrings.lv2 FluidSynthFX.lv2 FluidSynthLeads.lv2 FluidSynthPads.lv2
# Missing 'FluidGM.lv2', too big and already split into separate files anyway

FLUIDPLUG_TARGET_MAKE = $(TARGET_MAKE_ENV) $(TARGET_CONFIGURE_OPTS) $(MAKE) NOOPT=true -C $(@D)

define FLUIDPLUG_BUILD_CMDS
	$(FLUIDPLUG_TARGET_MAKE)
endef


define FLUIDPLUG_INSTALL_TARGET_CMDS
	$(FLUIDPLUG_TARGET_MAKE) install PREFIX=/usr DESTDIR=$(TARGET_DIR)
	cp -rL $($(PKG)_PKGDIR)/AirFont320.lv2/*      $(TARGET_DIR)/usr/lib/lv2/AirFont320.lv2/
	cp -rL $($(PKG)_PKGDIR)/FluidGM.lv2/*         $(TARGET_DIR)/usr/lib/lv2/FluidGM.lv2/
	cp -rL $($(PKG)_PKGDIR)/FluidBass.lv2/*       $(TARGET_DIR)/usr/lib/lv2/FluidBass.lv2/
	cp -rL $($(PKG)_PKGDIR)/FluidBrass.lv2/*      $(TARGET_DIR)/usr/lib/lv2/FluidBrass.lv2/
	cp -rL $($(PKG)_PKGDIR)/FluidChromPerc.lv2/*  $(TARGET_DIR)/usr/lib/lv2/FluidChromPerc.lv2/
	cp -rL $($(PKG)_PKGDIR)/FluidDrums.lv2/*      $(TARGET_DIR)/usr/lib/lv2/FluidDrums.lv2/
	cp -rL $($(PKG)_PKGDIR)/FluidEnsemble.lv2/*   $(TARGET_DIR)/usr/lib/lv2/FluidEnsemble.lv2/
	cp -rL $($(PKG)_PKGDIR)/FluidEthnic.lv2/*     $(TARGET_DIR)/usr/lib/lv2/FluidEthnic.lv2/
	cp -rL $($(PKG)_PKGDIR)/FluidGuitars.lv2/*    $(TARGET_DIR)/usr/lib/lv2/FluidGuitars.lv2/
	cp -rL $($(PKG)_PKGDIR)/FluidOrgans.lv2/*     $(TARGET_DIR)/usr/lib/lv2/FluidOrgans.lv2/
	cp -rL $($(PKG)_PKGDIR)/FluidPercussion.lv2/* $(TARGET_DIR)/usr/lib/lv2/FluidPercussion.lv2/
	cp -rL $($(PKG)_PKGDIR)/FluidPianos.lv2/*     $(TARGET_DIR)/usr/lib/lv2/FluidPianos.lv2/
	cp -rL $($(PKG)_PKGDIR)/FluidPipes.lv2/*      $(TARGET_DIR)/usr/lib/lv2/FluidPipes.lv2/
	cp -rL $($(PKG)_PKGDIR)/FluidReeds.lv2/*      $(TARGET_DIR)/usr/lib/lv2/FluidReeds.lv2/
	cp -rL $($(PKG)_PKGDIR)/FluidSoundFX.lv2/*    $(TARGET_DIR)/usr/lib/lv2/FluidSoundFX.lv2/
	cp -rL $($(PKG)_PKGDIR)/FluidStrings.lv2/*    $(TARGET_DIR)/usr/lib/lv2/FluidStrings.lv2/
	cp -rL $($(PKG)_PKGDIR)/FluidSynthFX.lv2/*    $(TARGET_DIR)/usr/lib/lv2/FluidSynthFX.lv2/
	cp -rL $($(PKG)_PKGDIR)/FluidSynthLeads.lv2/* $(TARGET_DIR)/usr/lib/lv2/FluidSynthLeads.lv2/
	cp -rL $($(PKG)_PKGDIR)/FluidSynthPads.lv2/*  $(TARGET_DIR)/usr/lib/lv2/FluidSynthPads.lv2/
endef

$(eval $(generic-package))
