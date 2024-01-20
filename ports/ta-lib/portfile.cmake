vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO 4thlabs/ta-lib
  REF cd6cb5c222e59290a3c43eda6c28ae45d10674cf
  SHA512 0845d952f4fa99b80531c8f242f73cf2ffe7783522f9e24eca6d14eeb4bd556d59d1d67f60a159d7a1f4d4325d4e77a65c8b78714ff0ff526142f100593c9e3c
  HEAD_REF main
)

vcpkg_configure_cmake(
  SOURCE_PATH "${SOURCE_PATH}"
  PREFER_NINJA
)

vcpkg_install_cmake()
vcpkg_fixup_cmake_targets(CONFIG_PATH "lib/cmake/ta-lib")

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")

file(INSTALL "${SOURCE_PATH}/README.md" DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}" RENAME copyright)