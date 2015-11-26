LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := scripts
LOCAL_DESCRIPTION := Various utility scripts for the carino system
LOCAL_CATEGORY_PATH := system

LOCAL_COPY_FILES := \
	fake_service:bin/ \
	ldd:bin/ \
	service:bin/

LOCAL_CREATE_LINKS := \
	bin/restart:service \
	bin/stop:service

include $(BUILD_CUSTOM)

