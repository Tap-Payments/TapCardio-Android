# Install script for directory: /Users/tap3/Documents/android_projects/other/PayCards_Android-master/sdk/src/main/cpp

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "0")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/Users/tap3/Documents/android_projects/other/PayCards_Android-master/sdk/.cxx/cmake/release/armeabi-v7a/armneon2x86sse/cmake_install.cmake")
  include("/Users/tap3/Documents/android_projects/other/PayCards_Android-master/sdk/.cxx/cmake/release/armeabi-v7a/eigen/cmake_install.cmake")
  include("/Users/tap3/Documents/android_projects/other/PayCards_Android-master/sdk/.cxx/cmake/release/armeabi-v7a/protobuf/cmake_install.cmake")
  include("/Users/tap3/Documents/android_projects/other/PayCards_Android-master/sdk/.cxx/cmake/release/armeabi-v7a/caffe/cmake_install.cmake")
  include("/Users/tap3/Documents/android_projects/other/PayCards_Android-master/sdk/.cxx/cmake/release/armeabi-v7a/libyuv/cmake_install.cmake")
  include("/Users/tap3/Documents/android_projects/other/PayCards_Android-master/sdk/.cxx/cmake/release/armeabi-v7a/crossplatform/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/Users/tap3/Documents/android_projects/other/PayCards_Android-master/sdk/.cxx/cmake/release/armeabi-v7a/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
