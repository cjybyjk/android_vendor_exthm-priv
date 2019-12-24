LOCAL_PATH := $(call my-dir)
include $(call all-makefiles-under,$(LOCAL_PATH))

VENDOR_PATH := vendor/exthm-priv

# MiPush
PRODUCT_PACKAGES += \
	MiPush \
    MiPushService

PRODUCT_PROPERTY_OVERRIDES += \
    ro.miui.ui.version.name = V10 \
    ro.miui.ui.version.code = 8 \
    ro.miui.version.code_time = 1544025600 \
    ro.fota.oem = Xiaomi \
    ro.miui.internal.storage = /sdcard/

# Lawnchair
PRODUCT_PACKAGES += \
    Lawnchair

PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(VENDOR_PATH)/system/etc/permissions,system/etc/permissions)
