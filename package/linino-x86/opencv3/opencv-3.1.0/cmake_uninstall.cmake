# -----------------------------------------------
# File that provides "make uninstall" target
#  We use the file 'install_manifest.txt'
# -----------------------------------------------
IF(NOT EXISTS "/home/arturo/Scaricati/openwrt-15.05-x86/package/linino-x86/opencv3/opencv-3.1.0/install_manifest.txt")
  MESSAGE(FATAL_ERROR "Cannot find install manifest: \"/home/arturo/Scaricati/openwrt-15.05-x86/package/linino-x86/opencv3/opencv-3.1.0/install_manifest.txt\"")
ENDIF(NOT EXISTS "/home/arturo/Scaricati/openwrt-15.05-x86/package/linino-x86/opencv3/opencv-3.1.0/install_manifest.txt")

FILE(READ "/home/arturo/Scaricati/openwrt-15.05-x86/package/linino-x86/opencv3/opencv-3.1.0/install_manifest.txt" files)
STRING(REGEX REPLACE "\n" ";" files "${files}")
FOREACH(file ${files})
  MESSAGE(STATUS "Uninstalling \"$ENV{DESTDIR}${file}\"")
  IF(EXISTS "$ENV{DESTDIR}${file}")
    EXEC_PROGRAM(
      "/home/arturo/Scaricati/openwrt-15.05-x86/staging_dir/host/bin/cmake" ARGS "-E remove \"$ENV{DESTDIR}${file}\""
      OUTPUT_VARIABLE rm_out
      RETURN_VALUE rm_retval
      )
    IF(NOT "${rm_retval}" STREQUAL 0)
      MESSAGE(FATAL_ERROR "Problem when removing \"$ENV{DESTDIR}${file}\"")
    ENDIF(NOT "${rm_retval}" STREQUAL 0)
  ELSE(EXISTS "$ENV{DESTDIR}${file}")
    MESSAGE(STATUS "File \"$ENV{DESTDIR}${file}\" does not exist.")
  ENDIF(EXISTS "$ENV{DESTDIR}${file}")
ENDFOREACH(file)
