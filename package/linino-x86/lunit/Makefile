#
# Copyright (C) 2015 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=lunit
PKG_VERSION:=0.5
PKG_RELEASE:=1
PKG_MAINTAINER:=Dirk Chang <dirk@kooiot.com>
PKG_LICENSE:=MIT

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=http://www.mroth.net/lunit/

include $(INCLUDE_DIR)/package.mk

define Package/lunit
  SUBMENU:=Lua
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Lua lunit
  URL:=http://www.mroth.net/lunit/
  DEPENDS:=+lua
endef

define Package/lunit/description
	Lunit is a unit testing framework for lua, written in lua.
endef

define Build/Configure
endef

define Build/Compile
endef

define Package/lunit/install
	$(INSTALL_DIR) $(1)/usr/lib/lua
	$(INSTALL_DATA) $(PKG_BUILD_DIR)/*.lua $(1)/usr/lib/lua

	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/lunit $(1)/usr/bin
endef

$(eval $(call BuildPackage,lunit))
