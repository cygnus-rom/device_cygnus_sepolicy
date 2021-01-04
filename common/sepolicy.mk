#
# This policy configuration will be used by all products that
# inherit from cygnus
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
endif

BOARD_SEPOLICY_DIRS += \
    device/cygnus/sepolicy/common/dynamic \
    device/cygnus/sepolicy/common/vendor

# Selectively include legacy rules defined by the products
-include device/cygnus/sepolicy/legacy-common/sepolicy.mk
