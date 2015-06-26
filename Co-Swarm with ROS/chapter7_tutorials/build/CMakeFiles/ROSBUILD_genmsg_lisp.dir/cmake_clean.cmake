FILE(REMOVE_RECURSE
  "../msg_gen"
  "../srv_gen"
  "../src/chapter7_tutorials/msg"
  "../src/chapter7_tutorials/srv"
  "../msg_gen"
  "../srv_gen"
  "CMakeFiles/ROSBUILD_genmsg_lisp"
  "../msg_gen/lisp/Twist.lisp"
  "../msg_gen/lisp/_package.lisp"
  "../msg_gen/lisp/_package_Twist.lisp"
  "../msg_gen/lisp/Move.lisp"
  "../msg_gen/lisp/_package.lisp"
  "../msg_gen/lisp/_package_Move.lisp"
  "../msg_gen/lisp/Vector3.lisp"
  "../msg_gen/lisp/_package.lisp"
  "../msg_gen/lisp/_package_Vector3.lisp"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ROSBUILD_genmsg_lisp.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
