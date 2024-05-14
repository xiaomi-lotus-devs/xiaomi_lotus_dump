#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/bootdevice/by-name/recovery:33554432:683a22fb0093870779f625b04ce39bc2e1e7a4ea; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/bootdevice/by-name/boot:33554432:2035bb82ef0ae370c8e40d609cbe69f7f603fedc EMMC:/dev/block/platform/bootdevice/by-name/recovery 683a22fb0093870779f625b04ce39bc2e1e7a4ea 33554432 2035bb82ef0ae370c8e40d609cbe69f7f603fedc:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
