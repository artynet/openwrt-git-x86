#
# Copyright (C) 2015 Arduino Srl
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=luanode
PKG_VERSION:=0.0.2
PKG_RELEASE:=4d48aec

PKG_SOURCE_PROTO:=git

PKG_REVISION:=4d48aec50d8ff96ab21cad966a2022cf7fbdfa6e

PKG_SOURCE_VERSION=$(PKG_REVISION)
PKG_SOURCE_SUBDIR:=$(PKG_NAME)-$(PKG_VERSION)
PKG_SOURCE_URL:=https://github.com/artynet/luanode.git
PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/luanode
  TITLE:=The luanode Web Server
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Lua
  DEFAULT:=m
  DEPENDS:=+lua +lunit +libc +libstdcpp +libopenssl +libpthread +librt
  # MDEPENDS:=@CONFIG_boost-libs-all=y
  URL:=https://github.com/ignacio/luanode
endef

CMAKE_OPTIONS = \
        -DCMAKE_PREFIX=/usr

TARGET_CFLAGS += -I$(STAGING_DIR_HOST)/include

define Package/luanode/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_BUILD_DIR)/luanode $(1)/usr/bin
endef

$(eval $(call BuildPackage,luanode))
