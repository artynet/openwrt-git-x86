#
# Copyright (C) 2015 Arduino Srl
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=luanode-socket.io
PKG_VERSION:=0.0.1
PKG_RELEASE:=f046755

PKG_SOURCE_PROTO:=git

PKG_REVISION:=f046755d3136393730ce44ba70d0b7e7f8902784

PKG_SOURCE_VERSION=$(PKG_REVISION)
PKG_SOURCE_SUBDIR:=$(PKG_NAME)-$(PKG_VERSION)
PKG_SOURCE_URL:=https://github.com/ignacio/LuaNode-Socket.IO.git
PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz

include $(INCLUDE_DIR)/package.mk

define Package/luanode-socket.io
  TITLE:=Sockets for the rest of us (in LuaNode)
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Lua
  DEFAULT:=m
  DEPENDS:=+lua +uuid +luabitop +json4lua
  URL:=https://github.com/ignacio/LuaNode-Socket.IO.git
endef

define Package/luanode-socket.io/description
	LuaNode-Socket.IO is a Socket.IO server for LuaNode. It's currently only compatible with Socket.IO v0.7pre, so it is not ready for prime-time yet.
endef

define Build/Compile
	# NOOP
endef

define Package/luanode-socket.io/install
	$(INSTALL_DIR) $(1)/usr/lib/lua
	$(CP) -R $(PKG_BUILD_DIR)/socket-io $(1)/usr/lib/lua
	$(CP) -R $(PKG_BUILD_DIR)/socket.io-client $(1)/usr/lib/lua
endef

$(eval $(call BuildPackage,luanode-socket.io))
