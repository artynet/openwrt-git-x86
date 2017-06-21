# Install script for directory: /home/arturo/Scaricati/openwrt-15.05-x86/package/linino-x86/opencv3/opencv-3.1.0/modules/calib3d

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr")
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
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "libs")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY OPTIONAL FILES
    "/home/arturo/Scaricati/openwrt-15.05-x86/package/linino-x86/opencv3/opencv-3.1.0/lib/libopencv_calib3d.so.3.1.0"
    "/home/arturo/Scaricati/openwrt-15.05-x86/package/linino-x86/opencv3/opencv-3.1.0/lib/libopencv_calib3d.so.3.1"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libopencv_calib3d.so.3.1.0"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libopencv_calib3d.so.3.1"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/home/arturo/Scaricati/openwrt-15.05-x86/package/linino-x86/opencv3/opencv-3.1.0/:" "${file}")
      endif()
    endif()
  endforeach()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/arturo/Scaricati/openwrt-15.05-x86/package/linino-x86/opencv3/opencv-3.1.0/lib/libopencv_calib3d.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libopencv_calib3d.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libopencv_calib3d.so")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/home/arturo/Scaricati/openwrt-15.05-x86/package/linino-x86/opencv3/opencv-3.1.0/:" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libopencv_calib3d.so")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2" TYPE FILE OPTIONAL FILES "/home/arturo/Scaricati/openwrt-15.05-x86/package/linino-x86/opencv3/opencv-3.1.0/modules/calib3d/include/opencv2/calib3d.hpp")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/calib3d" TYPE FILE OPTIONAL FILES "/home/arturo/Scaricati/openwrt-15.05-x86/package/linino-x86/opencv3/opencv-3.1.0/modules/calib3d/include/opencv2/calib3d/calib3d.hpp")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/calib3d" TYPE FILE OPTIONAL FILES "/home/arturo/Scaricati/openwrt-15.05-x86/package/linino-x86/opencv3/opencv-3.1.0/modules/calib3d/include/opencv2/calib3d/calib3d_c.h")
endif()

