#
# This policy configuration will be used by all qcom products
# that inherit from cygnus
#

BOARD_PLAT_PRIVATE_SEPOLICY_DIR += \
    device/conquer/sepolicy/qcom/private

BOARD_SEPOLICY_DIRS += \
    device/cygnus/sepolicy/qcom/vendor
