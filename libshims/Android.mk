LOCAL_PATH := $(call my-dir)

# OMX Shims
include $(CLEAR_VARS)
LOCAL_MODULE := libshims_omx
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := omx/libshim_omx.cpp
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_SHARED_LIBRARY)
