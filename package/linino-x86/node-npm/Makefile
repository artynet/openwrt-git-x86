#
# Copyright (C) 2014 Arduino LLC
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NPM_NAME:=npm
PKG_NAME:=node-$(PKG_NPM_NAME)
PKG_VERSION:=5.0.3
PKG_RELEASE:=3

PKG_SOURCE:=$(PKG_NPM_NAME)-$(PKG_VERSION).tgz
PKG_SOURCE_URL:=http://registry.npmjs.com/$(PKG_NPM_NAME)/-/
# PKG_MD5SUM:=54cc3fa9dfc7a44b5153e45b8cae9fdb

PKG_BUILD_DEPENDS:=node
PKG_NODE_VERSION:=6.11.0

include $(INCLUDE_DIR)/package.mk

define Package/node-npm
  DEPENDS:=+node
  SUBMENU:=Node.js
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=A package manager for JavaScript
  URL:=https://www.npmjs.org/package/node
endef

define Package/node-npm/description
	A package manager for JavaScript
endef

define Build/Prepare
	/bin/tar xzf $(DL_DIR)/$(PKG_SOURCE) -C $(PKG_BUILD_DIR) --strip-components 1
	$(Build/Patch)
endef

NODEJS_CPU:=$(subst powerpc,ppc,$(subst aarch64,arm64,$(subst x86_64,x64,$(subst i386,ia32,$(ARCH)))))

define Build/Compile
	# NOOP
endef

define Package/node-npm/install
	$(INSTALL_DIR) $(1)/usr/lib/node_modules/npm

	$(CP) $(PKG_BUILD_DIR)/{package.json,LICENSE,*.md,npmrc} $(1)/usr/lib/node_modules/npm
	$(CP) -R $(PKG_BUILD_DIR)/{bin,lib,node_modules,scripts,test} $(1)/usr/lib/node_modules/npm
	$(CP) -R $(PKG_BUILD_DIR)/{doc,html,man} $(1)/usr/lib/node_modules/npm

	$(INSTALL_DIR) $(1)/usr/bin
	$(LN) ../lib/node_modules/npm/bin/npm-cli.js $(1)/usr/bin/npm
endef

define Package/$(PKG_NAME)/postrm
#!/bin/sh
# check if we are on a real system
if `grep -qs '/opt' /proc/mounts`
then
    rm -rvf /opt/usr/lib/node_modules/$(PKG_NPM_NAME)
else
    rm -rvf /usr/lib/node_modules/$(PKG_NPM_NAME)
fi
endef

$(eval $(call BuildPackage,node-npm))
