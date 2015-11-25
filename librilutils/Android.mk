# Copyright 2013 The Android Open Source Project

LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES:= \
    librilutils.c \
    record_stream.c

LOCAL_CFLAGS :=

LOCAL_MODULE:= librilutils

LOCAL_LDLIBS += -lpthread

ifeq ($(TARGET_RIL_VARIANT),legacy)
LOCAL_CFLAGS += -DRIL_VARIANT_LEGACY
LOCAL_CFLAGS += -DRIL_SUPPORTS_SEEK
endif

include $(BUILD_SHARED_LIBRARY)


# Create static library for those that want it
# =========================================
include $(CLEAR_VARS)

LOCAL_SRC_FILES:= \
    librilutils.c \
    record_stream.c

LOCAL_STATIC_LIBRARIES :=

LOCAL_CFLAGS :=

LOCAL_MODULE:= librilutils_static

LOCAL_LDLIBS += -lpthread

include $(BUILD_STATIC_LIBRARY)
