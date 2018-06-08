#
# Copyright (C) 2017  Hauke Mehrtens <hauke@hauke-m.de>
# Copyright (C) 2016 - 2017  Stijn Tintel <stijn@linux-ipv6.be>
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=openzwave
PKG_REV:=ca05e19
PKG_VERSION:=1.5
PKG_RELEASE:=4

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://github.com/OpenZWave/open-zwave.git
PKG_SOURCE_SUBDIR:=$(PKG_NAME)-$(PKG_VERSION)-$(PKG_REV)
PKG_SOURCE_VERSION=$(PKG_REV)
PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION)-$(PKG_REV).tar.gz
PKG_INSTALL:=1

PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)-$(PKG_VERSION)-$(PKG_REV)

include $(INCLUDE_DIR)/package.mk

define Package/openzwave/default
  URL:=http://openzwave.com
  MAINTAINER:=Stijn Tintel <stijn@linux-ipv6.be>
  DEPENDS:=+libpthread +libstdcpp +udev +hidapi
endef

define Package/openzwave/description
	Open-ZWave is a library that interfaces with selected Z-Wave PC controllers
endef

define Package/libopenzwave
$(call Package/openzwave/default)
  SECTION:=libs
  CATEGORY:=Libraries
  TITLE:=Open-ZWave Library
endef

define Package/openzwave
$(call Package/openzwave/default)
  SECTION:=utils
  CATEGORY:=Utilities
  TITLE:=Open-ZWave MinOZW test utility
  DEPENDS:=+libopenzwave +openzwave-config
endef

define Package/openzwave-dev
$(call Package/openzwave/default)
  SECTION:=utils
  CATEGORY:=Utilities
  TITLE:=Open-ZWave MinOZW Development Files
  DEPENDS:=+libopenzwave +openzwave-config
endef

define Package/openzwave-config
$(call Package/openzwave/default)
  SECTION:=utils
  CATEGORY:=Utilities
  TITLE:=Open-ZWave Device Configs
endef

TARGET_LDFLAGS += -ludev

MAKE_FLAGS += \
	LD="$(TARGET_CROSS)g++" \
	LIBDIR="$(PKG_BUILD_DIR)" \
	PREFIX=$(CONFIGURE_PREFIX) \
	instlibdir=/usr/lib \
	pkgconfigdir=/usr/lib/pkgconfig \
	sysconfdir=/etc/openzwave

define Package/libopenzwave/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/libopenzwave.so* $(1)/usr/lib/
endef

define Package/openzwave/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/MinOZW $(1)/usr/bin/
endef

define Package/openzwave-config/install
	$(INSTALL_DIR) $(1)/etc/
	$(CP) $(PKG_INSTALL_DIR)/etc/openzwave $(1)/etc/
endef

define Package/openzwave-dev/install
	$(INSTALL_DIR) $(1)/usr/include
	$(CP) $(PKG_INSTALL_DIR)/usr/include/openzwave $(1)/usr/include/
	$(INSTALL_DIR) $(1)/usr/lib/pkgconfig
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/pkgconfig/libopenzwave.pc $(1)/usr/lib/pkgconfig/
endef

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/include
	$(CP) $(PKG_INSTALL_DIR)/usr/include/openzwave $(1)/usr/include/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/libopenzwave.* $(1)/usr/lib/
	$(INSTALL_DIR) $(1)/usr/lib/pkgconfig
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/pkgconfig/libopenzwave.pc $(1)/usr/lib/pkgconfig/
endef

$(eval $(call BuildPackage,libopenzwave))
$(eval $(call BuildPackage,openzwave))
$(eval $(call BuildPackage,openzwave-dev))
$(eval $(call BuildPackage,openzwave-config))