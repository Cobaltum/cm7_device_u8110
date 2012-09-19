#
# Copyright (C) 2011 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

PRODUCT_PACKAGES += \
    libRS \
    librs_jni \
    hwprops \
    rzscontrol \
    gps.u8110 \
    libOmxCore \
    libOmxVidEnc \
    lights.msm7k \
    copybit.msm7k \
    U8110Parts \
    abtfilt \
    setup_fs \
    make_ext4fs \
    e2fsck 

# Gallery 2D
PRODUCT_PACKAGES += Gallery

# Live Wallpapers
PRODUCT_PACKAGES += \
    librs_jni \
    LiveWallpapers \
    LiveWallpapersPicker \
    VisualizationWallpapers

# Live Wallpapers support
PRODUCT_COPY_FILES += \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:/system/etc/permissions/android.software.live_wallpaper.xml

# Theme packages
PRODUCT_PACKAGES += \
       Androidian \
       Cyanbread

PRODUCT_PROPERTY_OVERRIDES += \
       persist.sys.themeId = Cyanbread \
       persist.sys.themePackageName = com.tmobile.theme.Cyanbread

# Hardware permissions
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
    frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/base/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.xml:system/etc/permissions/android.hardware.touchscreen.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/base/data/etc/android.software.sip.xml:system/etc/permissions/android.software.sip.xml

# Init files
PRODUCT_COPY_FILES += \
    device/huawei/u8110/prebuilt/initlogo.rle:root/initlogo.rle \
    device/huawei/u8110/prebuilt/init.u8110.rc:root/init.u8110.rc \
    device/huawei/u8110/prebuilt/ueventd.huawei.rc:root/ueventd.huawei.rc

# Kernel Modules
PRODUCT_COPY_FILES += \
    device/huawei/u8110/prebuilt/modules/ar6000.ko:system/wifi/ar6000.ko \
    device/huawei/u8110/prebuilt/modules/zram.ko:system/lib/modules/zram.ko

# AR6000 related
PRODUCT_COPY_FILES += \
    device/huawei/u8110/firmware/athtcmd_ram.bin:system/wifi/athtcmd_ram.bin \
    device/huawei/u8110/firmware/athwlan.bin.z77:system/wifi/athwlan.bin.z77 \
    device/huawei/u8110/firmware/caldata.bin.ar6002:system/wifi/caldata.bin.ar6002 \
    device/huawei/u8110/firmware/caldata.bin.ar6102:system/wifi/caldata.bin.ar6102 \
    device/huawei/u8110/firmware/data.patch.hw2_0.bin.ar6002:system/wifi/data.patch.hw2_0.bin.ar6002 \
    device/huawei/u8110/firmware/data.patch.hw2_0.bin.ar6102:system/wifi/data.patch.hw2_0.bin.ar6102 \
    device/huawei/u8110/firmware/data.patch.hw2_0.bin:system/wifi/data.patch.hw2_0.bin \
    device/huawei/u8110/firmware/device.bin:system/wifi/device.bin \
    device/huawei/u8110/firmware/eeprom.bin:system/wifi/eeprom.bin \
    device/huawei/u8110/firmware/eeprom.data:system/wifi/eeprom.data

# RIL specific
PRODUCT_COPY_FILES += \
    vendor/huawei/u8110/proprietary/qmuxd:system/bin/qmuxd \
    vendor/huawei/u8110/proprietary/rild:system/bin/rild \
    vendor/huawei/u8110/proprietary/libcm.so:system/lib/libcm.so \
    vendor/huawei/u8110/proprietary/libdiag.so:system/lib/libdiag.so \
    vendor/huawei/u8110/proprietary/libdll.so:system/lib/libdll.so \
    vendor/huawei/u8110/proprietary/libdsm.so:system/lib/libdsm.so \
    vendor/huawei/u8110/proprietary/libdss.so:system/lib/libdss.so \
    vendor/huawei/u8110/proprietary/libgsdi_exp.so:system/lib/libgsdi_exp.so \
    vendor/huawei/u8110/proprietary/libgstk_exp.so:system/lib/libgstk_exp.so \
    vendor/huawei/u8110/proprietary/libmmgsdilib.so:system/lib/libmmgsdilib.so \
    vendor/huawei/u8110/proprietary/libnv.so:system/lib/libnv.so \
    vendor/huawei/u8110/proprietary/liboncrpc.so:system/lib/liboncrpc.so \
    vendor/huawei/u8110/proprietary/libpbmlib.so:system/lib/libpbmlib.so \
    vendor/huawei/u8110/proprietary/libqmi.so:system/lib/libqmi.so \
    vendor/huawei/u8110/proprietary/libqueue.so:system/lib/libqueue.so \
    vendor/huawei/u8110/proprietary/libril.so:system/lib/libril.so \
    vendor/huawei/u8110/proprietary/libril.so:obj/lib/libril.so \
    vendor/huawei/u8110/proprietary/libril-qc-1.so:system/lib/libril-qc-1.so \
    vendor/huawei/u8110/proprietary/libril-qcril-hook-oem.so:system/lib/libril-qcril-hook-oem.so \
    vendor/huawei/u8110/proprietary/libwms.so:system/lib/libwms.so \
    vendor/huawei/u8110/proprietary/libwmsts.so:system/lib/libwmsts.so

# Wi-Fi related
PRODUCT_COPY_FILES += \
    device/huawei/u8110/prebuilt/etc/dhcpcd/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf \
    device/huawei/u8110/prebuilt/bin/hostapd:system/bin/hostapd \
    device/huawei/u8110/prebuilt/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    device/huawei/u8110/prebuilt/etc/wifi/hostapd.conf:system/etc/wifi/hostapd.conf

# GPS
PRODUCT_COPY_FILES += \
     device/huawei/u8110/prebuilt/etc/gps.conf:system/etc/gps.conf

# Audio
PRODUCT_COPY_FILES += \
    device/huawei/u8110/prebuilt/etc/AudioFilter.csv:system/etc/AudioFilter.csv \
    device/huawei/u8100/prebuilt/etc/AudioFilterU8110.csv:system/etc/AudioFilterU8110.csv \
    device/huawei/u8100/prebuilt/etc/AudioFilterU8120.csv:system/etc/AudioFilterU8120.csv \
    device/huawei/u8110/prebuilt/etc/AutoVolumeControl.txt:system/etc/AutoVolumeControl.txt \
    device/huawei/u8110/prebuilt/etc/01_qc.cfg:system/etc/01_qc.cfg \
    vendor/huawei/u8110/proprietary/libaudioeq.so:system/lib/libaudioeq.so

# Camera
PRODUCT_COPY_FILES += \
    vendor/huawei/u8110/proprietary/libcamera.so:obj/lib/libcamera.so \
    vendor/huawei/u8110/proprietary/libcamera.so:system/lib/libcamera.so \
    vendor/huawei/u8110/proprietary/libqcamera.so:system/lib/libqcamera.so \
    vendor/huawei/u8110/proprietary/libmmjpeg.so:system/lib/libmmjpeg.so \
    vendor/huawei/u8110/proprietary/libmmipl.so:system/lib/libmmipl.so \
    vendor/huawei/u8110/proprietary/libmmprocess.so:system/lib/libmmprocess.so

# Sensors
PRODUCT_COPY_FILES += \
    vendor/huawei/u8110/proprietary/akmd2:system/bin/akmd2



# Keylayout
PRODUCT_COPY_FILES += \
    device/huawei/u8110/prebuilt/surf_keypad.kcm.bin:system/usr/keychars/surf_keypad.kcm.bin \
    device/huawei/u8110/prebuilt/7k_handset.kl:system/usr/keylayout/7k_handset.kl \
    device/huawei/u8110/prebuilt/surf_keypad.kl:system/usr/keylayout/surf_keypad.kl

# USB mounting
PRODUCT_COPY_FILES += \
    device/huawei/u8110/prebuilt/cdrom/autorun.iso:system/cdrom/autorun.iso

# Bluetooth
PRODUCT_COPY_FILES += \
    vendor/huawei/u8110/proprietary/hci_qcomm_init:system/bin/hci_qcomm_init \
    vendor/huawei/u8110/proprietary/init.qcom.bt.sh:system/etc/init.qcom.bt.sh

# Hardware drivers
PRODUCT_COPY_FILES += \
    vendor/huawei/u8110/proprietary/gralloc.msm7k.so:system/lib/hw/gralloc.msm7k.so \
    vendor/huawei/u8110/proprietary/sensors.default.so:system/lib/hw/sensors.default.so

# OEM RPC
PRODUCT_COPY_FILES += \
    vendor/huawei/u8110/proprietary/modempre:system/bin/modempre \
    vendor/huawei/u8110/proprietary/oem_rpc_svc:system/bin/oem_rpc_svc \
    vendor/huawei/u8110/proprietary/libhwrpc.so:system/lib/libhwrpc.so \
    vendor/huawei/u8110/proprietary/liboem_rapi.so:system/lib/liboem_rapi.so

# OMX
PRODUCT_COPY_FILES += \
    vendor/huawei/u8110/proprietary/libmm-omxcore.so:system/lib/libmm-omxcore.so \
    vendor/huawei/u8110/proprietary/libmm-adspsvc.so:system/lib/libmm-adspsvc.so \
    vendor/huawei/u8110/proprietary/libomx_aacdec_sharedlibrary.so:system/lib/libomx_aacdec_sharedlibrary.so \
    vendor/huawei/u8110/proprietary/libomx_amrdec_sharedlibrary.so:system/lib/libomx_amrdec_sharedlibrary.so \
    vendor/huawei/u8110/proprietary/libomx_amrenc_sharedlibrary.so:system/lib/libomx_amrenc_sharedlibrary.so \
    vendor/huawei/u8110/proprietary/libomx_avcdec_sharedlibrary.so:system/lib/libomx_avcdec_sharedlibrary.so \
    vendor/huawei/u8110/proprietary/libomx_m4vdec_sharedlibrary.so:system/lib/libomx_m4vdec_sharedlibrary.so \
    vendor/huawei/u8110/proprietary/libomx_mp3dec_sharedlibrary.so:system/lib/libomx_mp3dec_sharedlibrary.so \
    vendor/huawei/u8110/proprietary/libomx_sharedlibrary.so:system/lib/libomx_sharedlibrary.so \
    vendor/huawei/u8110/proprietary/libomx_sharedlibrary_qc.so:system/lib/libomx_sharedlibrary_qc.so \
    vendor/huawei/u8110/proprietary/libOmxH264Dec.so:system/lib/libOmxH264Dec.so \
    vendor/huawei/u8110/proprietary/libOmxMpeg4Dec.so:system/lib/libOmxMpeg4Dec.so \
    vendor/huawei/u8110/proprietary/libOmxVidEnc.so:system/lib/libOmxVidEnc.so \
    vendor/huawei/u8110/proprietary/libOmxWmvDec.so:system/lib/libOmxWmvDec.so

# Other
PRODUCT_COPY_FILES += \
    device/huawei/u8110/prebuilt/lib/egl/egl.cfg:system/lib/egl/egl.cfg \
    device/huawei/u8110/prebuilt/etc/sysctl.conf:system/etc/sysctl.conf \
    device/huawei/u8110/prebuilt/etc/vold.fstab:system/etc/vold.fstab

#Media profile
PRODUCT_COPY_FILES += \
    device/huawei/u8110/prebuilt/etc/media_profiles.xml:system/etc/media_profiles.xml

# Huawei M865 apps
PRODUCT_COPY_FILES += \
    device/huawei/u8110/prebuilt/app/HuaweiBackupV2.1.8.apk:system/app/HuaweiBackupV2.1.8.apk

# rmt_storage
PRODUCT_COPY_FILES += \
    device/huawei/u8110/prebuilt/bin/rmt_storage:system/bin/rmt_storage

# port-bridge
PRODUCT_COPY_FILES += \
    device/huawei/u8110/prebuilt/bin/port-bridge:system/bin/port-bridge

# Zipalign, tweaks and MAC
PRODUCT_COPY_FILES += \
    device/huawei/u8110/prebuilt/etc/init.d/02huawei:system/etc/init.d/02huawei \
    device/huawei/u8110/prebuilt/bin/zipalign:system/bin/zipalign \
    device/huawei/u8110/prebuilt/etc/init.d/70zipalign:system/etc/init.d/70zipalign \
    device/huawei/u8110/prebuilt/etc/check_property.sh:system/etc/check_property.sh \
    device/huawei/u8110/firmware/softmac:system/wifi/softmac

# Update hosts file
PRODUCT_COPY_FILES += \
    device/huawei/u8110/prebuilt/etc/hosts:system/etc/hosts 

# swap sd
PRODUCT_COPY_FILES += \
    device/huawei/u8110/prebuilt/bin/mksdswap.sh:system/bin/mksdswap.sh

# Enable Google-specific location features,
# like NetworkLocationProvider and LocationCollector
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.locationfeatures=1 \
    ro.com.google.networklocation=1

# Extended JNI checks
# The extended JNI checks will cause the system to run more slowly, but they can spot a variety of nasty bugs 
# before they have a chance to cause problems.
# Default=true for development builds, set by android buildsystem.
PRODUCT_PROPERTY_OVERRIDES += \
    ro.kernel.android.checkjni=0 \
    dalvik.vm.checkjni=false

# RIL properties
PRODUCT_PROPERTY_OVERRIDES += \
    rild.libargs=-d/dev/smd0 \
    rild.libpath=/system/lib/libril-qc-1.so \
    ro.telephony.default_network=0 \
    ro.telephony.call_ring.delay=0 \
    ro.telephony.call_ring.multiple=false

# Networking properties
PRODUCT_PROPERTY_OVERRIDES += \
    wifi.interface=eth0 \
    wifi.supplicant_scan_interval=60 \

# Performance & graphics properties
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.heapsize=24m \
    persist.sys.purgeable_assets=1 \
    persist.sys.rotationanimation=0 \
    persist.sys.scrollingcache=3 \
    persist.sys.use_16bpp_alpha=1 \
    persist.sys.use_dithering=0 \
    ro.media.dec.jpeg.memcap=20000000 \
    ro.opengles.version=65537 \
    ro.sf.lcd_density=120 \
    ro.vold.umsdirtyratio=20

# Touchscreen properties
PRODUCT_PROPERTY_OVERRIDES += \
    view.fading_edge_length=8 \
    view.minimum_fling_velocity=25 \
    view.scroll_friction=0.008 \
    view.touch_slop=15

# Compcache properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.compcache.default=18



# LDPI assets
PRODUCT_LOCALES += ldpi mdpi
PRODUCT_PACKAGE_OVERLAYS += vendor/cyanogen/overlay/ldpi

PRODUCT_COPY_FILES += device/huawei/u8110/prebuilt/kernel:kernel

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

$(call inherit-product, device/common/gps/gps_ww_supl.mk)
$(call inherit-product-if-exists, vendor/huawei/u8110/u8110-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/huawei/u8110/overlay

# Discard inherited values and use our own instead.
PRODUCT_NAME := huawei_u8110
PRODUCT_DEVICE := u8110
PRODUCT_MODEL := U8110
PRODUCT_BRAND := huawei
PRODUCT_MANUFACTURER := huawei