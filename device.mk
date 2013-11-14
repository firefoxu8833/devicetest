$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The GPS configuration appropriate for this device.
$(call inherit-product, device/common/gps/gps_eu_supl.mk)

$(call inherit-product, vendor/huawei/u8833/u8833-vendor.mk)

FRAMEWORKS_BASE_SUBDIRS += ../../$(LOCAL_PATH)/ril/

DEVICE_PACKAGE_OVERLAYS += device/huawei/u8833/overlay

PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

# Video
PRODUCT_PACKAGES += \
    libstagefrighthw \
    libmm-omxcore \
    libOmxCore

# Graphics
PRODUCT_PACKAGES += \
    copybit.msm7x27a \
    gralloc.msm7x27a \
    hwcomposer.msm7x27a \
    libtilerenderer \
    libQcomUI

# Audio
PRODUCT_PACKAGES += \
    audio.primary.u8833 \
    audio_policy.u8833 \
    audio.a2dp.default \
    libaudioutils

# Other HALs
PRODUCT_PACKAGES += \
    gps.u8833
    lights.u8833

# Other Packages
PRODUCT_PACKAGES += \
    dexpreopt \
    make_ext4fs \
    setup_fs \
    hwmac \
    Torch \
    com.android.future.usb.accessory

PRODUCT_COPY_FILES += \
    device/huawei/u8833/ramdisk/init.huawei.rc:root/init.huawei.rc \
    device/huawei/u8833/ramdisk/init.huawei.usb.rc:root/init.huawei.usb.rc \
    device/huawei/u8833/ramdisk/ueventd.huawei.rc:root/ueventd.huawei.rc \
    device/huawei/u8833/ramdisk/tp/1191601.img:root/tp/1191601.img \
    device/huawei/u8833/ramdisk/wifi/ar6000.ko:root/wifi/ar6000.ko \
    device/huawei/u8833/ramdisk/wifi/cfg80211.ko:root/wifi/cfg80211.ko
	
PRODUCT_COPY_FILES += \
  $(call find-copy-subdir-files,*,device/huawei/u8833/prebuilt/system,system)

# Files needed for recovery image
PRODUCT_COPY_FILES += \
    device/huawei/u8833/recovery/sbin/charge_recovery:/recovery/root/sbin/charge_recovery \
    device/huawei/u8833/recovery/sbin/rmt_storage_recovery:/recovery/root/sbin/rmt_storage_recovery \
    device/huawei/u8833/recovery/sbin/rmt_oeminfo_recovery:/recovery/root/sbin/rmt_oeminfo_recovery \
    device/huawei/u8833/recovery/sbin/linker:/recovery/root/sbin/linker \
    device/huawei/u8833/recovery/sbin/charge.sh:/recovery/root/sbin/charge.sh

# Install the features available on this device.
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
    frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/base/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/base/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

PRODUCT_TAGS += dalvik.gc.type-precise

$(call inherit-product, build/target/product/full.mk)

PRODUCT_NAME := huawei_u8833
PRODUCT_DEVICE := u8833
PRODUCT_BRAND := Huawei
