#!/bin/bash

## Setting up hals
rm -rf vendor/codeaurora/telephony hardware/qcom-caf/msm8996/media hardware/qcom-caf/msm8996/audio hardware/qcom-caf/msm8996/display && git clone https://github.com/wave-project/vendor_codeaurora_telephony --depth=1 --single-branch vendor/codeaurora/telephony/ && git clone --single-branch https://github.com/Jabiyeff/android_hardware_qcom_media hardware/qcom-caf/msm8996/media && git clone --single-branch https://github.com/Jabiyeff/android_hardware_qcom_display hardware/qcom-caf/msm8996/display &&  git clone https://github.com/LineageOS/android_hardware_qcom_audio --single-branch -b lineage-18.1-caf-msm8996 hardware/qcom-caf/msm8996/audio

## Setting up device tree
git clone https://github.com/stormbreaker-project/kernel_xiaomi_ysl --depth=1 --single-branch kernel/xiaomi/ysl && git clone https://github.com/ItsVixano/android_device_xiaomi_ysl --depth=1 --single-branch device/xiaomi/ysl && git clone https://github.com/ItsVixano/android_vendor_xiaomi_ysl --depth=1 --single-branch vendor/xiaomi/ysl

## Let's build
. build/env*
make clobber
lunch revengeos_ysl-userdebug
make bacon
