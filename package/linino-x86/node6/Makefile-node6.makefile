#
# Copyright (C) 2006-2016 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=node6
PKG_VERSION:=v6.10.0
PKG_RELEASE:=1

PKG_SOURCE:=node-$(PKG_VERSION).tar.xz
PKG_SOURCE_URL:=http://nodejs.org/dist/${PKG_VERSION}
PKG_MD5SUM:=77a890e27501a50da6c9286e512db0ac

PKG_BUILD_DEPENDS:=python/host
PKG_INSTALL:=1
PKG_USE_MIPS16:=0

PKG_BUILD_DIR:=$(BUILD_DIR)/node-$(PKG_VERSION)

PKG_BUILD_PARALLEL:=1

PKG_MAINTAINER:=John Crispin <blogic@openwrt.org>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include $(INCLUDE_DIR)/package.mk

define Package/node6
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Node.js-v6
  TITLE:=Node.js is a platform built on Chrome's JavaScript runtime
  URL:=http://nodejs.org/
  DEPENDS:=+libstdcpp +libopenssl +zlib +USE_UCLIBC:libpthread +USE_UCLIBC:librt +NODEJS_ICU:icu
endef

define Package/node6/description
  Node.js® is a JavaScript runtime built on Chrome's V8 JavaScript engine. Node.js uses
  an event-driven, non-blocking I/O model that makes it lightweight and efficient. Node.js'
   package ecosystem, npm, is the largest ecosystem of open source libraries in the world.
endef

define Package/node6/config
	menu "Module Selection"

	config NODEJS_ICU
		bool "enable i18n features"
		default y

	endmenu
endef

CPUHOST:=$(subst x86_64-linux-gnu,x64,$(subst i686-linux-gnu,x86,$(GNU_HOST_NAME)))

NODEJS:=node-$(PKG_VERSION)-linux-$(CPUHOST).tar.xz

ifeq ($(CPUHOST),x64)
    MD5SUM_NODE:=a8cc1807182015ad20902dfa04109b28
endif
ifeq ($(CPUHOST),x86)
    MD5SUM_NODE:=9c6c42a7712a9c0458db68b679445c83
endif

# Distribution URL doesn't always have the correct version
# Using the OpenWrt/Linino mirror provides a stable version
define Download/nodebin
  URL:=https://nodejs.org/dist/$(PKG_VERSION)/
  FILE:=$(NODEJS)
  MD5SUM:=$(MD5SUM_NODE)
endef

# prepare step

define Build/Prepare
    $(call Build/Prepare/Default)
	$(eval $(call Download,nodebin))
	$(TAR) -xvf $(DL_DIR)/$(NODEJS) -C $(STAGING_DIR_HOST) --strip-components=1
	$(STAGING_DIR_HOST)/bin/npm update npm -g $(STAGING_DIR_HOST)/lib/node_modules
endef

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/include
	$(CP) $(PKG_INSTALL_DIR)/usr/include/* $(1)/usr/include/
endef

# actual node.js configuration

NODEJS_CPU:=$(subst powerpc,ppc,$(subst aarch64,arm64,$(subst x86_64,x64,$(subst i386,ia32,$(ARCH)))))

MAKE_VARS += \
	DESTCPU=$(NODEJS_CPU)

CONFIGURE_ARGS= \
	--dest-cpu=$(NODEJS_CPU) \
	--dest-os=linux \
	--without-snapshot \
	--shared-zlib \
	--shared-openssl \
	--prefix=/usr

ifeq ($(CONFIG_NODEJS_ICU),y)
CONFIGURE_ARGS+= \
	--with-intl=system-icu
else
CONFIGURE_ARGS+= \
	--with-intl=none
endif

ifeq ($(findstring mips,$(NODEJS_CPU)),mips)
ifeq ($(CONFIG_SOFT_FLOAT),y)
CONFIGURE_ARGS+= \
	--with-mips-float-abi=soft
endif
endif

ifeq ($(findstring arm,$(NODEJS_CPU)),arm)
ifeq ($(CONFIG_SOFT_FLOAT),y)
CONFIGURE_ARGS+= \
	--with-arm-float-abi=softfp
endif
endif

define Package/node6/install
	mkdir -p $(1)/usr/bin $(1)/usr/lib/node_modules/npm/{bin,lib,node_modules}
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/{node,npm} $(1)/usr/bin/
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/node_modules/npm/{package.json,LICENSE,cli.js} $(1)/usr/lib/node_modules/npm
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/node_modules/npm/bin/npm-cli.js $(1)/usr/lib/node_modules/npm/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/node_modules/npm/lib/* $(1)/usr/lib/node_modules/npm/lib/
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/node_modules/npm/node_modules/* $(1)/usr/lib/node_modules/npm/node_modules/
endef

$(eval $(call BuildPackage,node6))
