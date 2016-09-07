# This will define the following:
#
#  TEENSY_FOUND       - teensy sdk was found
#  TEENSY_INCLUDE_DIR - teensy sdk include directory
#  TEENSY_LIBRARIES   - teensy sdk libraries

include(FindPackageHandleStandardArgs)

if(NOT DEFINED TEENSY_SRC_ROOT_FOLDER)
    get_filename_component(TEENSY_SRC_ROOT_FOLDER ${CMAKE_CURRENT_SOURCE_DIR} ABSOLUTE)
endif()

list(APPEND _TEENSY_INCLUDE ${TEENSY_SRC_ROOT_FOLDER}/cores/teensy3)
list(APPEND _TEENSY_INCLUDE ${TEENSY_SRC_ROOT_FOLDER}/cores/teensy3/avr)
list(APPEND _TEENSY_INCLUDE ${TEENSY_SRC_ROOT_FOLDER}/cores/teensy3/util)

set(_TEENSY_LIBRARIES teensy)

find_package_handle_standard_args(TEENSY DEFAULT_MSG _TEENSY_LIBRARIES _TEENSY_INCLUDE)
mark_as_advanced(_TEENSY_INCLUDE _TEENSY_LIBRARIES)

# Set up output variables
if(TEENSY_FOUND)
  set(TEENSY_INCLUDES ${_TEENSY_INCLUDE})
  set(TEENSY_LIBRARIES ${_TEENSY_LIBRARIES})
else(TEENSY_FOUND)
  set(TEENSY_INCLUDES)
  set(TEENSY_LIBRARIES)
endif(TEENSY_FOUND)