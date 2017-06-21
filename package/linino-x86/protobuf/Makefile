#
# Copyright (C) 2007-2015 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=protobuf
PKG_VERSION:=3.0.0-beta-1
PKG_RELEASE:=1

PKG_SOURCE:=v3.0.0-beta-1.tar.gz
PKG_SOURCE_URL:=https://github.com/google/protobuf/archive/v$(PKG_VERSION)
# PKG_MD5SUM:=11aaac2d704eef8efd1867a807865d85

PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=protobuf/host
PKG_USE_MIPS16:=0 # MIPS16 prevents protobuf's usage of the 'sync' asm-opcode

PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk

define Package/protobuf
  SECTION:=libs
  CATEGORY:=Libraries
  TITLE:=A structured data encoding library
  URL:=http://code.google.com/p/protobuf/
  DEPENDS:=+zlib +libpthread +libstdcpp
  MAINTAINER:=Jacob Siverskog <jacob@teenageengineering.com>
endef

define Package/protobuf/description
 Protocol Buffers are a way of encoding structured data in an efficient
 yet extensible format. Google uses Protocol Buffers for almost all
 of its internal RPC protocols and file formats.
endef

CONFIGURE_ARGS += --with-protoc=$(STAGING_DIR_HOST)/bin/protoc


define Host/Prepare
	$(Host/Prepare/Default)
	(cd $(HOST_BUILD_DIR) && ./autogen.sh)
endef

define Build/Prepare
	$(Build/Prepare/Default)
	(cd $(PKG_BUILD_DIR) && ./autogen.sh)
endef

define Build/InstallDev
	$(INSTALL_DIR) \
		$(1)/usr/lib \
		$(1)/usr/include

	$(CP) \
		$(PKG_INSTALL_DIR)/usr/include/* \
		$(1)/usr/include/

	$(CP) \
		$(PKG_INSTALL_DIR)/usr/lib/* \
		$(1)/usr/lib/
endef

define Package/protobuf/install
	$(INSTALL_DIR) \
		$(1)/usr/lib

	$(CP) \
		$(PKG_INSTALL_DIR)/usr/lib/libprotoc.so*  \
		$(1)/usr/lib/

	$(CP) \
		$(PKG_INSTALL_DIR)/usr/lib/libprotobuf-lite.so* \
		$(1)/usr/lib/

	$(CP) \
		$(PKG_INSTALL_DIR)/usr/lib/libprotobuf.so* \
		$(1)/usr/lib/
endef

$(eval $(call HostBuild))
$(eval $(call BuildPackage,protobuf))
