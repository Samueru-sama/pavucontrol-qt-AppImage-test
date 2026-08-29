#!/bin/sh

set -eu

ARCH=$(uname -m)

echo "Installing package dependencies..."
echo "---------------------------------------------------------------"
pacman -Syu --noconfirm pavucontrol-qt kvantum lxqt-qtplugin breeze plasma-integration oxygen vulkan-headers qt6-tools

echo "Installing debloated packages..."
echo "---------------------------------------------------------------"
get-debloated-pkgs --add-common --prefer-nano

make-aur-package qt6ct-kde
