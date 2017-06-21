# Install script for directory: /home/arturo/Scaricati/openwrt-15.05-x86/package/linino-x86/opencv3/opencv-3.1.0/include

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

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv" TYPE FILE FILES
    "/home/arturo/Scaricati/openwrt-15.05-x86/package/linino-x86/opencv3/opencv-3.1.0/include/opencv/cxcore.hpp"
    "/home/arturo/Scaricati/openwrt-15.05-x86/package/linino-x86/opencv3/opencv-3.1.0/include/opencv/highgui.h"
    "/home/arturo/Scaricati/openwrt-15.05-x86/package/linino-x86/opencv3/opencv-3.1.0/include/opencv/cvwimage.h"
    "/home/arturo/Scaricati/openwrt-15.05-x86/package/linino-x86/opencv3/opencv-3.1.0/include/opencv/cvaux.hpp"
    "/home/arturo/Scaricati/openwrt-15.05-x86/package/linino-x86/opencv3/opencv-3.1.0/include/opencv/cvaux.h"
    "/home/arturo/Scaricati/openwrt-15.05-x86/package/linino-x86/opencv3/opencv-3.1.0/include/opencv/cxcore.h"
    "/home/arturo/Scaricati/openwrt-15.05-x86/package/linino-x86/opencv3/opencv-3.1.0/include/opencv/cxmisc.h"
    "/home/arturo/Scaricati/openwrt-15.05-x86/package/linino-x86/opencv3/opencv-3.1.0/include/opencv/cv.hpp"
    "/home/arturo/Scaricati/openwrt-15.05-x86/package/linino-x86/opencv3/opencv-3.1.0/include/opencv/ml.h"
    "/home/arturo/Scaricati/openwrt-15.05-x86/package/linino-x86/opencv3/opencv-3.1.0/include/opencv/cv.h"
    "/home/arturo/Scaricati/openwrt-15.05-x86/package/linino-x86/opencv3/opencv-3.1.0/include/opencv/cxeigen.hpp"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2" TYPE FILE FILES "/home/arturo/Scaricati/openwrt-15.05-x86/package/linino-x86/opencv3/opencv-3.1.0/include/opencv2/opencv.hpp")
endif()

