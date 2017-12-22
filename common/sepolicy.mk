#
# This policy configuration will be used by all products that
# inherit from cygnus
#

BOARD_PLAT_PRIVATE_SEPOLICY_DIR += \
    device/cygnus/sepolicy/common/private

BOARD_SEPOLICY_DIRS += \
    device/cygnus/sepolicy/common/vendor
