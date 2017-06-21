# Added to inteno by Martin Schröder
# used by JUCI lua backend 

include $(TOPDIR)/rules.mk

PKG_NAME:=libuv-lua
PKG_VERSION:=8beb6a0ce2aec6c4184de88c7206bf0fa824691f
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/luvit/luv.git
PKG_SOURCE_PROTO:=git
PKG_SOURCE_VERSION:=$(PKG_VERSION)
PKG_SOURCE_SUBDIR:=$(PKG_NAME)-$(PKG_VERSION)

MAKE_VARS += WITH_LUA_ENGINE=Lua

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/image.mk
include $(INCLUDE_DIR)/kernel.mk

define Package/libuv-lua
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Lua
  DEPENDS:=+libuv
  TITLE:=Lua LibUV async io bindings for lua
endef

define Package/libuv-lua/description
	libuv asynchronous io library for lua
endef

define Package/libuv-lua/install
	$(INSTALL_DIR) $(1)/usr/lib/lua/
	$(CP) $(PKG_BUILD_DIR)/build/luv.so $(1)/usr/lib/lua/uv.so
endef

$(eval $(call BuildPackage,libuv-lua))
