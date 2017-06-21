#
# Copyright (C) 2014 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=python-setuptools
PKG_VERSION:=28.8.0
PKG_RELEASE:=3

PKG_SOURCE:=setuptools-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://pypi.python.org/packages/25/4e/1b16cfe90856235a13872a6641278c862e4143887d11a12ac4905081197f/

PKG_MD5SUM:=43d6eb25f60e8a2682a8f826ce9e3f42

# PKG_BUILD_DEPENDS:=python-setuptools/host

# PKG_SOURCE_PROTO:=git
# PKG_SOURCE_URL:=https://github.com/pypa/setuptools.git
# PKG_SOURCE_SUBDIR:=setuptools-$(PKG_VERSION)
# PKG_SOURCE_VERSION:=v$(PKG_VERSION)
# PKG_SOURCE:=setuptools-$(PKG_SOURCE_VERSION).tar.gz

PKG_BUILD_DIR:=$(BUILD_DIR)/setuptools-$(PKG_VERSION)

# include $(INCLUDE_DIR)/host-build.mk

include $(INCLUDE_DIR)/package.mk
$(call include_mk, python-package.mk)

define Package/python-setuptools
	SUBMENU:=Python
	SECTION:=lang
	CATEGORY:=Languages
	TITLE:=Tool for installing Python packages.
	URL:=https://bitbucket.org/pypa/setuptools
	DEPENDS:=+python
	MAINTAINER:=Alexandru Ardelean <ardeleanalex@gmail.com>
endef

define Package/python-setuptools/description
 	Easily download, build, install, upgrade, and uninstall Python packages
endef

define Build/Compile
	$(call Build/Compile/PyMod,,\
		install --root="$(PKG_INSTALL_DIR)" --prefix="/usr" \
		--single-version-externally-managed \
	)
endef

define Build/InstallDev
	$(INSTALL_DIR) $(PYTHON_LIB_DIR)
	$(CP) \
		$(PKG_INSTALL_DIR)$(PYTHON_PKG_DIR)/* \
		$(PYTHON_LIB_DIR)
endef

define PyPackage/python-setuptools/install
	$(INSTALL_DIR) $(PYTHON_LIB_DIR)
	$(CP) \
		$(PKG_INSTALL_DIR)$(PYTHON_PKG_DIR)/* \
		$(PYTHON_LIB_DIR)

	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) ./files/easy_install* $(1)/usr/bin/
endef


$(eval $(call PyPackage,python-setuptools))
$(eval $(call BuildPackage,python-setuptools))
