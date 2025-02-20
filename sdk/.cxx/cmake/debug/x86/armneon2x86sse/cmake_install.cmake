# Install script for directory: /Users/tap3/Documents/android_projects/other/PayCards_Android-master/sdk/src/main/cpp/armneon2x86sse

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
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
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

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE FILES "/Users/tap3/Documents/android_projects/other/PayCards_Android-master/sdk/src/main/cpp/armneon2x86sse/NEON_2_SSE.h")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/NEON_2_SSE" TYPE FILE FILES
    "/Users/tap3/Documents/android_projects/other/PayCards_Android-master/sdk/.cxx/cmake/debug/x86/armneon2x86sse/generated/NEON_2_SSEConfig.cmake"
    "/Users/tap3/Documents/android_projects/other/PayCards_Android-master/sdk/.cxx/cmake/debug/x86/armneon2x86sse/generated/NEON_2_SSEConfigVersion.cmake"
    )
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/NEON_2_SSE/NEON_2_SSETargets.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/NEON_2_SSE/NEON_2_SSETargets.cmake"
         "/Users/tap3/Documents/android_projects/other/PayCards_Android-master/sdk/.cxx/cmake/debug/x86/armneon2x86sse/CMakeFiles/Export/lib/cmake/NEON_2_SSE/NEON_2_SSETargets.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/NEON_2_SSE/NEON_2_SSETargets-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/NEON_2_SSE/NEON_2_SSETargets.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/NEON_2_SSE" TYPE FILE FILES "/Users/tap3/Documents/android_projects/other/PayCards_Android-master/sdk/.cxx/cmake/debug/x86/armneon2x86sse/CMakeFiles/Export/lib/cmake/NEON_2_SSE/NEON_2_SSETargets.cmake")
endif()

