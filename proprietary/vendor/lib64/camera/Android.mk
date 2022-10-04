ifeq ($(CAMX_CHICDK_PATH),)
LOCAL_PATH := $(abspath $(call my-dir)/../..)
CAMX_CHICDK_PATH := $(abspath $(LOCAL_PATH)/../../../..)
else
LOCAL_PATH := $(CAMX_CHICDK_PATH)/oem/qcom/bin
endif

$(shell mkdir -p $(TARGET_OUT_VENDOR)/lib64/camera/)
$(shell cp -rf $(LOCAL_PATH)/* $(TARGET_OUT_VENDOR)/lib64/camera/)
