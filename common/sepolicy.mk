#
# This policy configuration will be used by all products that
# inherit from Cygnus
#

ifeq ($(TARGET_COPY_OUT_VENDOR), vendor)
ifeq ($(BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE),)
TARGET_USES_PREBUILT_VENDOR_SEPOLICY ?= true
endif
endif

BOARD_PLAT_PUBLIC_SEPOLICY_DIR += \
    device/cygnus/sepolicy/common/public

BOARD_PLAT_PRIVATE_SEPOLICY_DIR += \
    device/cygnus/sepolicy/common/private

ifeq ($(TARGET_USES_PREBUILT_VENDOR_SEPOLICY), true)
BOARD_PLAT_PRIVATE_SEPOLICY_DIR += \
    device/cygnus/sepolicy/common/dynamic
else
BOARD_SEPOLICY_DIRS += \
    device/cygnus/sepolicy/common/dynamic \
    device/cygnus/sepolicy/common/vendor
endif
