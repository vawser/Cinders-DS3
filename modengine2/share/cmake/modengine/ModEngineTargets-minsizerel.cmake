#----------------------------------------------------------------
# Generated CMake target import file for configuration "MinSizeRel".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "modengine2" for configuration "MinSizeRel"
set_property(TARGET modengine2 APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(modengine2 PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/modengine2/lib/modengine2.lib"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/modengine2/bin/modengine2.dll"
  )

list(APPEND _cmake_import_check_targets modengine2 )
list(APPEND _cmake_import_check_files_for_modengine2 "${_IMPORT_PREFIX}/modengine2/lib/modengine2.lib" "${_IMPORT_PREFIX}/modengine2/bin/modengine2.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
