# SPDX-License-Identifier: GPL-2.0
# Copyright (C) 2025 ROCKNIX (https://github.com/ROCKNIX)

PKG_NAME="rocknix-splash"
PKG_VERSION="c0e9df5e50b217a76ed86667948d49e1654c3a36"
#PKG_VERSION="868e60b090081f71b254007644661925f8c875df" #(src)
PKG_LICENSE="GPL"
PKG_SITE="https://rocknix.org"
PKG_URL="https://github.com/ROCKNIX/${PKG_NAME}/archive/${PKG_VERSION}.tar.gz"
#PKG_URL="https://github.com/ROCKNIX/rocknix-splash-src.git"
PKG_DEPENDS_INIT="toolchain"
PKG_LONGDESC="ROCKNIX splash screen application"
PKG_TOOLCHAIN="manual"
#PKG_USETOKEN="yes"

makeinstall_target() {
  mkdir -p ${INSTALL}/usr/bin
    cp -v rocknix-splash ${INSTALL}/usr/bin
}

post_install() {
  enable_service rocknix-splash.service
}
