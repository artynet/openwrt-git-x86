#
# Copyright (C) 2015-2016 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=ply
PKG_VERSION:=3.10
PKG_RELEASE:=2

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://pypi.python.org/packages/ce/3d/1f9ca69192025046f02a02ffc61bfbac2731aab06325a218370fd93e18df/
# ply-3.10.tar.gz#md5=1d63c166ab250bab87d8dcc42dcca70e
# PKG_HASH:=0d7e2940b9c57151392fceaa62b0865c45e06ce1e36687fd8d03f011a907f43e

PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)-$(PKG_VERSION)
PKG_UNPACK=$(HOST_TAR) -C $(PKG_BUILD_DIR) --strip-components=1 -xzf $(DL_DIR)/$(PKG_SOURCE)

HOST_BUILD_DEPENDS:=
HOST_BUILD_DEPENDS+=python/host

PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=README.md
PKG_MAINTAINER:=Jeffery To <jeffery.to@gmail.com>

include $(INCLUDE_DIR)/host-build.mk
include $(INCLUDE_DIR)/package.mk
$(call include_mk, python-package.mk)

define Package/python-ply/Default
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  URL:=http://www.dabeaz.com/ply/
endef

define Package/python-ply
$(call Package/python-ply/Default)
  TITLE:=python-ply
  DEPENDS:=+python-light
  VARIANT:=python
endef

define Package/python-ply/description
PLY is a 100% Python implementation of the common parsing tools lex
and yacc.
endef

define Host/Compile/python-ply
	$(call Build/Compile/HostPyMod,,install --prefix="" --root="$(STAGING_DIR_HOSTPKG)")
endef

define Host/Compile
$(call Host/Compile/python-ply)
endef

define Host/Install
endef

define Build/Compile
	$(call Build/Compile/PyMod,,install --prefix="$(PKG_INSTALL_DIR)/usr")
endef

# define PyPackage/python-ply/install
# 	$(INSTALL_DIR) $(1)$(PYTHON_PKG_DIR)
# 	$(CP) \
# 		$(PKG_INSTALL_DIR)$(PYTHON_PKG_DIR)/* \
# 		$(1)$(PYTHON_PKG_DIR)
# endef

$(eval $(call HostBuild))

$(eval $(call PyPackage,python-ply))
$(eval $(call BuildPackage,python-ply))
