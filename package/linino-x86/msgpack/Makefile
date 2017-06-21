#
# Copyright (C) 2014 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=libmsgpackc
PKG_VERSION:=1.4.1
PKG_RELEASE:=1

PKG_SOURCE:=msgpack-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/msgpack/msgpack-c/releases/download/cpp-$(PKG_VERSION)/
# PKG_MD5SUM:=d26a58149aaae9915fa79fb35c8de6fc

PKG_BUILD_DIR:=$(BUILD_DIR)/msgpack-$(PKG_VERSION)

PKG_INSTALL:=1

PKG_LICENSE:=LGPL-2.1 MPL-1.0
PKG_LICENSE_FILES:=COPYING
PKG_MAINTAINER:=Nicolas Thill <nico@openwrt.org>

PKG_FIXUP:=libtool
PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/libmsgpackc
	TITLE:=C++ websocket client/server library
	SECTION:=libs
	DEFAULT:=m
	CATEGORY:=Libraries
	DEPENDS:=+libpthread +libstdcpp
	URL:=https://github.com/zaphoyd/websocketpp
endef

define Package/libmsgpackc/description
	C++ websocket client/server library
endef

CMAKE_OPTIONS = \
    -DCMAKE_INSTALL_PREFIX=/usr

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/include/
	$(CP) $(PKG_INSTALL_DIR)/usr/include/* $(1)/usr/include/

	$(INSTALL_DIR) $(1)/usr/lib/
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/* $(1)/usr/lib/
endef

define Package/libmsgpackc/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/libmsgpackc{.a,.so.*} $(1)/usr/lib
endef

$(eval $(call BuildPackage,libmsgpackc))
