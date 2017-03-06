if(NOT EXISTS "/Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/build/install_manifest.txt")
   message(FATAL_ERROR
      "Cannot find install manifest: \"/Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/build/install_manifest.txt\"")
endif(NOT EXISTS "/Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/build/install_manifest.txt")

file(READ "/Users/charlesfoxw/Documents/ClionProjects/Project_2/fltk-1.3.4-1/build/install_manifest.txt" files)
string(REGEX REPLACE "\n" ";" files "${files}")

foreach(file ${files})
message(STATUS "Uninstalling \"$ENV{DESTDIR}${file}\"")
   exec_program("/usr/local/Cellar/cmake/3.7.2/bin/cmake"
      ARGS "-E remove -f \"$ENV{DESTDIR}${file}\""
      OUTPUT_VARIABLE rm_out
      RETURN_VALUE rm_retval
   )
   if(NOT "${rm_retval}" STREQUAL 0)
      message(FATAL_ERROR "Problem when removing \"$ENV{DESTDIR}${file}\"")
   endif(NOT "${rm_retval}" STREQUAL 0)
endforeach(file)
