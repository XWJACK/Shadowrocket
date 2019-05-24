

MONKEYDEV_PATH="/opt/MonkeyDev"
# monkeyparser
MONKEYPARSER="${MONKEYDEV_PATH}/bin/monkeyparser"
# build plugin path
BUILD_PLUGIN_PATH="${BUILT_PRODUCTS_DIR}/${TARGET_NAME}.appex"

# Remove project appex
rm -rf "${BUILT_PRODUCTS_DIR}/${PRODUCT_NAME}.appex"
# Copy real appex
cp -R -H "${SRCROOT}/${PROJECT_NAME}/Resources/${PROJECT_NAME}.app/Plugins/${PRODUCT_NAME}.appex" "${BUILD_PLUGIN_PATH}"
# Codesign
${MONKEYPARSER} codesign -i "${EXPANDED_CODE_SIGN_IDENTITY}" -t "${BUILD_PLUGIN_PATH}"
