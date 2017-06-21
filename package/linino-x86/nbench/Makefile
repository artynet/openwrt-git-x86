#
# Copyright (C) 2015 Arduino Srl
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=nbench-byte
PKG_VERSION:=2.2.3
PKG_RELEASE:=1

PKG_SOURCE_URL:=http://www.tux.org/~mayer/linux/
PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz

include $(INCLUDE_DIR)/package.mk

define Package/nbench-byte
	SECTION:=utils
	CATEGORY:=Utilities
	SUBMENU:=CPU tools
	TITLE:=BYTE Magazine's CPU Benchmark
	URL:=http://www.tux.org/~mayer/linux/bmark.html
	MAINTAINER:=Uwe F. Mayer (mayer@tux.org)
endef

define Package/nbench-byte/description
  	BYTE Magazine's BYTEmark benchmark program (previously known as BYTE's Native Mode Benchmarks).
endef

define Build/Compile
	$(MAKE) -C $(PKG_BUILD_DIR)
endef

define Package/nbench-byte/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/nbench $(1)/usr/bin
	$(INSTALL_DATA) $(PKG_BUILD_DIR)/NNET.DAT $(1)/usr/bin
endef

$(eval $(call BuildPackage,nbench-byte))
