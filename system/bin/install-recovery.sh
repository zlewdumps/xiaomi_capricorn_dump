#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:25261390:0f43e69a27494d2a8b60113cdfd3fe7febfd93ea; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:23405898:460e1b891bead25c20cbb97286d9a7871feede44 EMMC:/dev/block/bootdevice/by-name/recovery 0f43e69a27494d2a8b60113cdfd3fe7febfd93ea 25261390 460e1b891bead25c20cbb97286d9a7871feede44:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
