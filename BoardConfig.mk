USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/zte/warp2/BoardConfigVendor.mk

TARGET_SPECIFIC_HEADER_PATH := device/zte/warp2/include

TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := msm7x30
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_BOOTLOADER_BOARD_NAME := warp2
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_NEON := true
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp -march=armv7-a
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp -march=armv7-a
TARGET_BOARD_PLATFORM_GPU := qcom-adreno220
TARGET_BOARD_PLATFORM_FPU := neon
BOARD_USES_ADRENO_200 := true
#TARGET_PROVIDES_INIT_RC := true
ARCH_ARM_HAVE_ARMV7A := true

# QCOM hardware
BOARD_USES_QCOM_HARDWARE := true
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE

WEBCORE_INPAGE_VIDEO := true
TARGET_HAVE_TSLIB := false

BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := default

#Browser
TARGET_FORCE_CPU_UPLOAD := true
WITH_JIT := true
ENABLE_JSC_JIT := true
JS_ENGINE := v8

# Wi-Fi
WIFI_BAND := 802_11_ABGN
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE := bcmdhd
WIFI_SDIO_IF_DRIVER_MODULE_PATH :=  "/system/lib/modules/librasdioif.ko"
WIFI_SDIO_IF_DRIVER_MODULE_NAME :=  "librasdioif"
WIFI_DRIVER_FW_PATH_STA := "/system/etc/firmware/fw_bcmdhd.bin"
WIFI_DRIVER_FW_PATH_AP := "/system/etc/firmware/fw_bcmdhd_apsta.bin"
WIFI_DRIVER_FW_PATH_P2P := "/system/etc/firmware/fw_bcmdhd_p2p.bin"
WIFI_DRIVER_FW_PATH_PARAM := "/sys/module/bcmdhd/parameters/firmware_path"
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_SOFTAP_DEVICE := bcmdhd

BOARD_CDMA_NETWORK := true

BOARD_USES_QCOM_LIBS := true
BOARD_USES_QCOM_LIBRPC := true
BOARD_USES_QCOM_GPS := true

# Audio
#TARGET_PROVIDES_LIBAUDIO := true
BOARD_USES_AUDIO_LEGACY := false
BOARD_USES_ALSA_AUDIO := true

# Camera
#COMMON_GLOBAL_CFLAGS += -DICS_CAMERA_BLOB
BOARD_NEEDS_MEMORYHEAPPMEM := true
BOARD_CAMERA_USE_GETBUFFERINFO := true
#TARGET_PROVIDES_LIBCAMERA := true

TARGET_DISABLE_ARM_PIE := true
BOARD_USE_NASTY_PTHREAD_CREATE_HACK := true
COMMON_GLOBAL_CFLAGS += -DBINDER_COMPAT

#Graphics
BOARD_EGL_CFG := device/zte/warp2/prebuilts/lib/egl/egl.cfg
USE_OPENGL_RENDERER := true
TARGET_USES_C2D_COMPOSITION := true
# trying hal TARGET_USES_OVERLAY := true
TARGET_USE_SCORPION_BIONIC_OPTIMIZATION := true
TARGET_USE_SCORPION_PLD_SET := true
TARGET_SCORPION_BIONIC_PLDOFFS := 6
TARGET_SCORPION_BIONIC_PLDSIZE := 128
BOARD_USE_QCOM_PMEM := true
#TARGET_USES_ION := false
TARGET_HARDWARE_3D := true
BOARD_USES_GENLOCK := true

# HWComposer
BOARD_USES_HWCOMPOSER := true

COMMON_GLOBAL_CFLAGS += -DFORCE_CPU_UPLOAD -DQCOM_ICS_COMPAT -DQCOM_NO_SECURE_PLAYBACK
COMMON_GLOBAL_CFLAGS += -DQCOM_ACDB_ENABLED -DLEGACY_QCOM_VOICE -DPOLL_CALL_STATE -DUSE_QMI
TARGET_NO_HW_VSYNC := true
BOARD_ADRENO_DECIDE_TEXTURE_TARGET := true
BOARD_USE_SKIA_LCDTEXT := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

BOARD_KERNEL_CMDLINE := console=ttyMSM1,115200 androidboot.hardware=warp2
BOARD_KERNEL_BASE := 0x00200000
BOARD_KERNEL_PAGESIZE := 2048
#BOARD_FORCE_RAMDISK_ADDRESS := 

TARGET_KERNEL_CONFIG := warp2_defconfig
TARGET_PREBUILT_KERNEL := device/zte/warp2/kernel
TARGET_KERNEL_CUSTOM_TOOLCHAIN := arm-eabi-4.4.3

# Partition Sizes
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 520167424
BOARD_USERDATAIMAGE_PARTITION_SIZE := 2757529600
BOARD_CACHEIMAGE_PARTITION_SIZE := 313737216
BOARD_PERSISTIMAGE_PARTITION_SIZE := 8241152 
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_USES_MMCUTILS := true
BOARD_HAS_SDCARD_INTERNAL := true

# recovery
TARGET_PREBUILT_RECOVERY_KERNEL := device/zte/warp2/recovery/kernel
TARGET_RECOVERY_INITRC := device/zte/warp2/recovery/recovery.rc
BOARD_CUSTOM_GRAPHICS := ../../../device/zte/warp2/recovery/graphics.c
BOARD_HAS_NO_SELECT_BUTTON := true

# default props
ADDITIONAL_DEFAULT_PROPERTIES += ro.secure=0
ADDITIONAL_DEFAULT_PROPERTIES += ro.allow.mock.location=0
ADDITIONAL_DEFAULT_PROPERTIES += ro.debuggable=1
ADDITIONAL_DEFAULT_PROPERTIES += persist.service.adb.enable=1
ADDITIONAL_DEFAULT_PROPERTIES += ro.config.sec_storage=1
ADDITIONAL_DEFAULT_PROPERTIES += persist.sys.usb.config=mass_storage,adb

# USB Mass Storage
BOARD_CUSTOM_USB_CONTROLLER := ../../device/zte/warp2/UsbController.cpp
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/platform/msm_hsusb/gadget/lun0/file"
BOARD_UMS_LUNFILE := "/sys/devices/platform/msm_hsusb/gadget/lun0/file"

# Releasetools
TARGET_PROVIDES_RELEASETOOLS := true
TARGET_RELEASETOOL_OTA_FROM_TARGET_SCRIPT := ./device/zte/warp2/releasetools/warp2_ota_from_target_files
