
# Copyright (C) 2006-2010 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#
# Initial port of shellinabox to OpenWrt - Jan Jaeger 25-MAR-2010

include $(TOPDIR)/rules.mk

PKG_NAME:=shellinabox
PKG_VERSION:=2.20
PKG_RELEASE:=6

PKG_INSTALL:=1

PKG_SOURCE_PROTO:=git

PKG_REVISION:=5c7fb5cde2d2a74775af040549bb5cb11aae6790

PKG_SOURCE_VERSION=$(PKG_REVISION)
PKG_SOURCE_SUBDIR:=$(PKG_NAME)-$(PKG_VERSION)
PKG_SOURCE_URL:=https://github.com/shellinabox/shellinabox.git
PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION)-$(PKG_REVISION).tar.gz

PKG_FIXUP:=libtool autoreconf

PKG_BUILD_DEPENDS:=+libopenssl +libpam

include $(INCLUDE_DIR)/package.mk

define Package/shellinabox
  SECTION:=net
  CATEGORY:=Network
  TITLE:=Shell In A Box
  DEPENDS:=+libopenssl +libpam +openssl-util
  URL:=http://shellinabox.googlecode.com
endef

define Package/shellinabox/description
 Web based AJAX terminal emulator
endef

define Build/Configure
	$(call Build/Configure/Default,--disable-utmp --disable-runtime-loading)
endef

define Build/Compile
	$(MAKE) -C $(PKG_BUILD_DIR) all
endef

define Package/shellinabox/install
	$(INSTALL_DIR) $(1)/usr/sbin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/shellinaboxd $(1)/usr/sbin/
	$(INSTALL_BIN) files/gen-cert.sh $(1)/usr/sbin/gen-cert

	$(INSTALL_DIR) $(1)/etc/init.d
	$(INSTALL_BIN) files/shellinabox-init.sh $(1)/etc/init.d/shellinabox-init
endef

define Package/shellinabox/prerm
#!/bin/sh
# check if we are on real system

killall shellinabox 2> /dev/null
/etc/init.d/shellinabox-init stop 2> /dev/null
/etc/init.d/shellinabox-init disable

exit 0
endef

$(eval $(call BuildPackage,shellinabox))
