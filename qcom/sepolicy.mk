#
# This policy configuration will be used by all qcom products
# that inherit from cygnus
#

ifeq ($(TARGET_COPY_OUT_VENDOR), vendor)
ifeq ($(BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE),)
TARGET_USES_PREBUILT_VENDOR_SEPOLICY ?= true
endif
endif

BOARD_PLAT_PRIVATE_SEPOLICY_DIR += \
    device/cygnus/sepolicy/qcom/private

ifeq ($(TARGET_USES_PREBUILT_VENDOR_SEPOLICY), true)
BOARD_PLAT_PRIVATE_SEPOLICY_DIR += \
    device/cygnus/sepolicy/qcom/dynamic
else
BOARD_SEPOLICY_DIRS += \
    device/cygnus/sepolicy/qcom/dynamic \
    device/cygnus/sepolicy/qcom/vendor
endif
