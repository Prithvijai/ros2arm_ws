# generated from ament/cmake/core/templates/nameConfig.cmake.in

# prevent multiple inclusion
if(_final_moveit_CONFIG_INCLUDED)
  # ensure to keep the found flag the same
  if(NOT DEFINED final_moveit_FOUND)
    # explicitly set it to FALSE, otherwise CMake will set it to TRUE
    set(final_moveit_FOUND FALSE)
  elseif(NOT final_moveit_FOUND)
    # use separate condition to avoid uninitialized variable warning
    set(final_moveit_FOUND FALSE)
  endif()
  return()
endif()
set(_final_moveit_CONFIG_INCLUDED TRUE)

# output package information
if(NOT final_moveit_FIND_QUIETLY)
  message(STATUS "Found final_moveit: 0.0.0 (${final_moveit_DIR})")
endif()

# warn when using a deprecated package
if(NOT "" STREQUAL "")
  set(_msg "Package 'final_moveit' is deprecated")
  # append custom deprecation text if available
  if(NOT "" STREQUAL "TRUE")
    set(_msg "${_msg} ()")
  endif()
  # optionally quiet the deprecation message
  if(NOT ${final_moveit_DEPRECATED_QUIET})
    message(DEPRECATION "${_msg}")
  endif()
endif()

# flag package as ament-based to distinguish it after being find_package()-ed
set(final_moveit_FOUND_AMENT_PACKAGE TRUE)

# include all config extra files
set(_extras "")
foreach(_extra ${_extras})
  include("${final_moveit_DIR}/${_extra}")
endforeach()