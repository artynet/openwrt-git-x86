#
# Copyright (c) 2015 Arduino Srl. All right reserved.
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=catch
PKG_REVISION:=c984fc3ecde60b59efa2203e82261acac8ac8502
PKG_VERSION:=1.4.0
PKG_RELEASE:=1

PKG_SOURCE_PROTO:=git

PKG_SOURCE:=$(PKG_NAME)-$(PKG_REVISION).tar.gz
PKG_SOURCE_URL:=https://github.com/philsquared/Catch.git
PKG_SOURCE_VERSION:=$(PKG_REVISION)
PKG_SOURCE_SUBDIR:=$(PKG_NAME)-$(PKG_REVISION)

PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)-$(PKG_REVISION)

include $(INCLUDE_DIR)/package.mk

define Package/catch
  SECTION:=libs
  DEFAULT:=m
  CATEGORY:=Libraries
  TITLE:=A modern, C++-native, header-only, framework for unit-tests, TDD and BDD
  DEPENDS:=+libc +libstdcpp
endef

define Package/catch/description
	A modern, C++-native, header-only, framework for unit-tests, TDD and BDD
endef

define Build/Compile
	# NOOP
endef

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/include/
	$(CP) $(PKG_BUILD_DIR)/include/* $(1)/usr/include/
endef

$(eval $(call BuildPackage,catch))
