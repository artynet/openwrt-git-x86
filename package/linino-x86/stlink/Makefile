#
# Copyright (C) 2014 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=stlink
PKG_VERSION:=17.01
PKG_RELEASE:=1

PKG_SOURCE_PROTO:=git

PKG_REVISION:=f62895b2cf3ccbbc87be1d8525e9dc51645f2516
PKG_SOURCE_VERSION=$(PKG_REVISION)
PKG_SOURCE_SUBDIR:=$(PKG_NAME)-$(PKG_VERSION)
PKG_SOURCE_URL:=https://github.com/texane/stlink.git
PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz

PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/stlink
  TITLE:=Stlink Tool
  SECTION:=utils
  DEFAULT:=m
  CATEGORY:=Utilities
  DEPENDS:=+libpthread +libc +libstdcpp +libusb-1.0 +udev
  URL:=https://gitorious.org/stlink
endef

CMAKE_OPTIONS = \
        -DCMAKE_PREFIX=/usr

# define Build/InstallDev
# 	$(INSTALL_DIR) \
# 		$(1)/usr/include \
# 		$(1)/usr/lib \
# 		$(1)/usr/lib/pkgconfig/
#
# 	$(CP) $(PKG_INSTALL_DIR)/usr/include/ical.h $(1)/usr/include
# 	$(CP) $(PKG_INSTALL_DIR)/usr/include/stlink $(1)/usr/include
# 	$(CP) $(PKG_INSTALL_DIR)/usr/lib/lib* $(1)/usr/lib/
# 	$(CP) $(PKG_INSTALL_DIR)/usr/lib/pkgconfig/stlink.pc $(1)/usr/lib/pkgconfig/
# endef

define Package/stlink/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/* $(1)/usr/bin/

	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/libstlink*{*.a,*.so,*.so.1*} $(1)/usr/lib

	$(INSTALL_DIR) $(1)/lib/udev/rules.d
	$(CP) $(PKG_INSTALL_DIR)/etc/udev/rules.d/*.rules $(1)/lib/udev/rules.d
endef

$(eval $(call BuildPackage,stlink))
