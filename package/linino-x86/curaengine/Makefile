#
# Copyright (C) 2014 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=curaengine
PKG_VERSION:=15.06.03
PKG_RELEASE:=1

PKG_SOURCE:=CuraEngine-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/Ultimaker/CuraEngine/archive/
PKG_BUILD_DIR:=$(BUILD_DIR)/CuraEngine-$(PKG_VERSION)

PKG_INSTALL:=1

PKG_BUILD_DEPENDS:=python3/host +libprotobuf +libArcus

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/curaengine
  TITLE:=CuraEngine is a powerful, fast and robust engine for processing 3D models into 3D printing instruction
  SECTION:=utils
  DEFAULT:=m
  CATEGORY:=Utilities
  DEPENDS:=+libpthread +libc +libstdcpp +libprotobuf +libArcus
  URL:=https://gitorious.org/curaengine
endef

#CMAKE_OPTIONS = \
        -DCMAKE_PREFIX=/usr \
		-DCMAKE_CXX_FLAGS="$(CXXFLAGS) -I$(TOPDIR)/build_dir/toolchain-i386_i486_gcc-4.8-linaro_uClibc-0.9.33.2/uClibc-0.9.33.2/include/"

# TARGET_CPPFLAGS += -I$(TOPDIR)/build_dir/toolchain-i386_i486_gcc-4.8-linaro_uClibc-0.9.33.2/uClibc-0.9.33.2/include/

define Build/Prepare
	$(Build/Prepare/Default)
	$(CP) $(TOPDIR)/build_dir/toolchain-i386_i486_gcc-4.8-linaro_uClibc-0.9.33.2/uClibc-0.9.33.2/include/execinfo.h $(STAGING_DIR)/usr/include/
endef

define package/curaengine/Description
	CuraEngine is a powerful, fast and robust engine for processing 3D models into 3D printing 
	instruction for Ultimaker and other GCode based 3D printers. It is part of the larger open 
	source project called "Cura".
endef

define Package/curaengine/install
	$(INSTALL_DIR) $(1)/usr/bin

	$(CP) $(PKG_INSTALL_DIR)/usr/bin/CuraEngine $(1)/usr/bin
	$(CP) $(PKG_BUILD_DIR)/fdmprinter.json $(1)/usr/bin
endef

$(eval $(call BuildPackage,curaengine))
