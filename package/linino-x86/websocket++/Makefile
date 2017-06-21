#
# Copyright (C) 2014 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=libwebsocketpp
PKG_VERSION:=0.7.0
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/zaphoyd/websocketpp/archive/
PKG_MD5SUM:=d26a58149aaae9915fa79fb35c8de6fc

PKG_BUILD_DIR:=$(BUILD_DIR)/websocketpp-$(PKG_VERSION)

PKG_INSTALL:=1

PKG_LICENSE:=LGPL-2.1 MPL-1.0
PKG_LICENSE_FILES:=COPYING
PKG_MAINTAINER:=Nicolas Thill <nico@openwrt.org>

PKG_FIXUP:=libtool
PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/libwebsocketpp
	TITLE:=C++ websocket client/server library
	SECTION:=libs
	DEFAULT:=m
	CATEGORY:=Libraries
	DEPENDS:=+libpthread +libopenssl +libstdcpp +librt +boost-libs +boost-test
	URL:=https://github.com/zaphoyd/websocketpp
endef

define Package/libwebsocketpp/description
	C++ websocket client/server library
endef

CMAKE_OPTIONS = \
    -DCMAKE_INSTALL_PREFIX=/usr \
	-DBUILD_EXAMPLES=ON \
	-DBUILD_TESTS=ON

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/include
	$(CP) $(PKG_INSTALL_DIR)/usr/include/* $(1)/usr/include/
endef

define Package/libwebsocketpp/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/* $(1)/usr/bin
endef

$(eval $(call BuildPackage,libwebsocketpp))
