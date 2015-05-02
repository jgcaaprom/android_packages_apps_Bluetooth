LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional

LOCAL_SRC_FILES := \
        $(call all-java-files-under, src)

LOCAL_PACKAGE_NAME := Bluetooth
LOCAL_CERTIFICATE := platform

LOCAL_JNI_SHARED_LIBRARIES := libbluetooth_jni
LOCAL_JAVA_LIBRARIES += javax.btobex
LOCAL_JAVA_LIBRARIES += telephony-common
LOCAL_STATIC_JAVA_LIBRARIES := com.android.vcard
LOCAL_STATIC_JAVA_LIBRARIES += com.android.emailcommon

LOCAL_REQUIRED_MODULES := bluetooth.default
LOCAL_MULTILIB := 32

LOCAL_PROGUARD_ENABLED := disabled

include $(BUILD_PACKAGE)

include $(call all-makefiles-under,$(LOCAL_PATH))

$(combo_2nd_arch_prefix)TARGET_NDK_GCC_VERSION := 4.8

LOCAL_CC := $$(TARGET_TOOLCHAIN_ROOT)/../arm-linux-androideabi-4.8/bin/arm-linux-androideabi-gcc$$(HOST_EXECUTABLE_SUFFIX)
LOCAL_CXX := $$(TARGET_TOOLCHAIN_ROOT)/../arm-linux-androideabi-4.8/bin/arm-linux-androideabi-g++$$(HOST_EXECUTABLE_SUFFIX)

