LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

ifneq ($(filter crosshatch, $(TARGET_DEVICE)),)
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_MODULE := QtiTelephonyService
LOCAL_MODULE_TAGS := optional
LOCAL_BUILT_MODULE_STEM := package.apk
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_CLASS := APPS
LOCAL_SRC_FILES := $(LOCAL_MODULE).apk
LOCAL_CERTIFICATE := platform
include $(BUILD_PREBUILT)
endif
