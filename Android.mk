LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_BOOTLOADER_BOARD_NAME),u8833)
include $(call all-makefiles-under,$(LOCAL_PATH))
endif
