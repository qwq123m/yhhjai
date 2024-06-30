LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),PD2049)
include $(call all-subdir-makefiles,$(LOCAL_PATH))
endif