# Copyright 2006 The Android Open Source Project

LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES:= \
	rild.c


LOCAL_SHARED_LIBRARIES := \
	liblog \
	libcutils \
	libril \
	libdl

LOCAL_CFLAGS := -DRIL_SHLIB
LOCAL_CFLAGS += -DRIL_VARIANT_LEGACY
LOCAL_CFLAGS += -DRIL_SUPPORTS_SEEK

LOCAL_MODULE:= rild
LOCAL_MODULE_TAGS := optional

LOCAL_C_INCLUDES += $(TARGET_OUT_HEADERS)/libril

include $(BUILD_EXECUTABLE)

# For radiooptions binary
# =======================
include $(CLEAR_VARS)

LOCAL_SRC_FILES:= \
	radiooptions.c

LOCAL_SHARED_LIBRARIES := \
	liblog \
	libcutils \

LOCAL_CFLAGS := \

LOCAL_MODULE:= radiooptions
LOCAL_MODULE_TAGS := debug

include $(BUILD_EXECUTABLE)
