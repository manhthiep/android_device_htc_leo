# Copyright (C) 2010 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Prebuilt libraries that are needed to build open-source libraries
PRODUCT_COPY_FILES := \
    device/htc/leo/proprietary/system/lib/libcamera.so:obj/lib/libcamera.so

PRODUCT_COPY_FILES += \
    device/htc/leo/proprietary/system/bin/akmd:system/bin/akmd \
    device/htc/leo/proprietary/system/bin/parse_radio_log:system/bin/parse_radio_log \
    device/htc/leo/proprietary/system/etc/vpimg:system/etc/vpimg

# Video
PRODUCT_COPY_FILES += \
    device/htc/leo/proprietary/system/lib/libOmxCore.so:system/lib/libOmxCore.so \
    device/htc/leo/proprietary/system/lib/libOmxVdec.so:system/lib/libOmxVdec.so \
    device/htc/leo/proprietary/system/lib/libOmxVidEnc.so:system/lib/libOmxVidEnc.so \
    device/htc/leo/proprietary/system/lib/libqc-opt.so:system/lib/libqc-opt.so \
    device/htc/leo/proprietary/system/lib/libmm-omxcore.so:system/lib/libmm-omxcore.so

# RIL
PRODUCT_COPY_FILES += \
    device/htc/leo/proprietary/system/lib/libhtc_ril.so:system/lib/libhtc_ril.so

# Audio
PRODUCT_COPY_FILES += \
    device/htc/leo/proprietary/system/etc/AdieHWCodecSetting.csv:system/etc/AdieHWCodecSetting.csv \
    device/htc/leo/proprietary/system/etc/AudioBTID.csv:system/etc/AudioBTID.csv \
    device/htc/leo/proprietary/system/lib/libhtc_acoustic.so:system/lib/libhtc_acoustic.so

# WiFi
PRODUCT_COPY_FILES += \
    device/htc/leo/proprietary/system/etc/firmware/bcm4329.hcd:system/etc/firmware/bcm4329.hcd \
    device/htc/leo/proprietary/system/etc/firmware/default.acdb:system/etc/firmware/default.acdb \

# Camera
PRODUCT_COPY_FILES += \
    device/htc/leo/proprietary/system/lib/libcamera.so:system/lib/libcamera.so \
    device/htc/leo/proprietary/system/lib/liboemcamera.so:system/lib/liboemcamera.so

# GPS
PRODUCT_COPY_FILES += \
    device/htc/leo/proprietary/system/lib/librpc.so:system/lib/librpc.so \
    device/htc/leo/proprietary/system/lib/libgps.so:system/lib/libgps.so

PRODUCT_COPY_FILES += \
    device/htc/leo/proprietary/system/vendor/lib/libwvdrm_L1.so:system/vendor/lib/libwvdrm_L1.so \
    device/htc/leo/proprietary/system/vendor/lib/libwvm.so:system/vendor/lib/libwvm.so \
    device/htc/leo/proprietary/system/vendor/lib/libWVStreamControlAPI_L1.so:system/vendor/lib/libWVStreamControlAPI_L1.so

# HW Acceleration
PRODUCT_COPY_FILES += \
    device/htc/leo/proprietary/system/lib/egl/egl.cfg:system/lib/egl/egl.cfg \
    device/htc/leo/proprietary/system/lib/egl/eglsubAndroid.so:system/lib/egl/eglsubAndroid.so \
    device/htc/leo/proprietary/system/lib/egl/libEGL_adreno200.so:system/lib/egl/libEGL_adreno200.so \
    device/htc/leo/proprietary/system/lib/egl/libGLESv1_CM_adreno200.so:system/lib/egl/libGLESv1_CM_adreno200.so \
    device/htc/leo/proprietary/system/lib/egl/libGLESv2_adreno200.so:system/lib/egl/libGLESv2_adreno200.so \
    device/htc/leo/proprietary/system/lib/egl/libq3dtools_adreno200.so:system/lib/egl/libq3dtools_adreno200.so \
    device/htc/leo/proprietary/system/lib/egl/libGLESv2S3D_adreno200.so:system/lib/egl/libGLESv2S3D_adreno200.so

PRODUCT_COPY_FILES += \
    device/htc/leo/proprietary/system/lib/libc2d2_z180.so:system/lib/libc2d2_z180.so \
    device/htc/leo/proprietary/system/lib/libC2D2.so:system/lib/libC2D2.so \
    device/htc/leo/proprietary/system/lib/libgsl.so:system/lib/libgsl.so \
    device/htc/leo/proprietary/system/lib/libOpenVG.so:system/lib/libOpenVG.so \
    device/htc/leo/proprietary/system/lib/libsc-a2xx.so:system/lib/libsc-a2xx.so

# Firmware
PRODUCT_COPY_FILES += \
    device/htc/leo/proprietary/system/etc/firmware/yamato_pfp.fw:system/etc/firmware/yamato_pfp.fw \
    device/htc/leo/proprietary/system/etc/firmware/yamato_pm4.fw:system/etc/firmware/yamato_pm4.fw

