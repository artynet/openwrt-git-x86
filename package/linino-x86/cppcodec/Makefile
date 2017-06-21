#
# Copyright (c) 2015 Arduino Srl. All right reserved.
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=cppcodec
PKG_VERSION:=1.0
PKG_REVISION:=a58b16810fddf7e761bcca04e3aec9d255dc0206
PKG_RELEASE:=1

PKG_SOURCE_PROTO:=git

PKG_SOURCE:=$(PKG_NAME)-$(PKG_REVISION).tar.gz
PKG_SOURCE_URL:=https://github.com/tplgy/cppcodec.git
PKG_SOURCE_VERSION:=$(PKG_REVISION)
PKG_SOURCE_SUBDIR:=$(PKG_NAME)-$(PKG_REVISION)

PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)-$(PKG_REVISION)

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/cppcodec
  SECTION:=libs
  DEFAULT:=m
  CATEGORY:=Libraries
  TITLE:=Header-only C++11 library to encode/decode base64, base64url, base32, base32hex and hex
  DEPENDS:=+libc +libstdcpp
endef

define Package/cppcodec/description
	Header-only C++11 library to encode/decode base64, base64url, base32, base32hex
	and hex (a.k.a. base16) as specified in RFC 4648, plus Crockford's base32. MIT
	licensed with consistent, flexible API.
endef

CMAKE_OPTIONS = \
    -DCMAKE_INSTALL_PREFIX=/usr

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/include/
	$(CP) $(PKG_BUILD_DIR)/cppcodec $(1)/usr/include/
endef

define Package/cppcodec/install
	$(INSTALL_DIR) $(1)/usr/bin

	$(INSTALL_BIN) $(PKG_BUILD_DIR)/test/test_cppcodec $(1)/usr/bin/
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/tool/{helloworld,hexenc,hexdec} $(1)/usr/bin/
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/tool/{base32enc,base32dec,base64enc,base64dec} $(1)/usr/bin/
endef

$(eval $(call BuildPackage,cppcodec))
