cmake_minimum_required(VERSION 3.0)

project(uwp-test CXX)

# https://stackoverflow.com/a/44964919
# if (MSVC_VERSION GREATER_EQUAL "1900")
#     include(CheckCXXCompilerFlag)
#     CHECK_CXX_COMPILER_FLAG("/std:c++latest" _cpp_latest_flag_supported)
#     if (_cpp_latest_flag_supported)
#         add_compile_options("/std:c++latest")
#     endif()
# endif()


# set(CMAKE_INSTALL_UCRT_LIBRARIES "ON")

#
add_executable(uwp-test main.cc)

# set(CMAKE_CXX_FLAGS_RELEASE "${CMAKE_CXX_FLAGS_RELEASE} /MT")

# set(CompilerFlags
#         CMAKE_CXX_FLAGS
#         CMAKE_CXX_FLAGS_DEBUG
#         CMAKE_CXX_FLAGS_RELEASE
#         CMAKE_C_FLAGS
#         CMAKE_C_FLAGS_DEBUG
#         CMAKE_C_FLAGS_RELEASE
#         )
# foreach(CompilerFlag ${CompilerFlags})
#   string(REPLACE "/MD" "/MT" ${CompilerFlag} "${${CompilerFlag}}")
# endforeach()

set_property(TARGET uwp-test PROPERTY CXX_STANDARD 17)
set_property(TARGET uwp-test PROPERTY CXX_STANDARD_REQUIRED ON)

