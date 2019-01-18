include(vcpkg_common_functions)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO CaptainCrowbar/rs-core-lib
    REF 79a010bfde7a5c64b3b131160e9a0aba3ed6686e
    SHA512 eeffdcff30d18653a979716014c609e65f668d9c8eedce893ed895874b8bbc96542563ffde2db540796f877f5e2937755f1391b63eb5e957bb2b4cac38c366a3
    HEAD_REF master
)

file(INSTALL ${SOURCE_PATH}/rs-core DESTINATION ${CURRENT_PACKAGES_DIR}/include FILES_MATCHING PATTERN "*.hpp")

# Handle copyright
file(INSTALL ${SOURCE_PATH}/LICENSE.TXT DESTINATION ${CURRENT_PACKAGES_DIR}/share/rs-core-lib RENAME copyright)