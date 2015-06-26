FILE(REMOVE_RECURSE
  "../msg_gen"
  "../srv_gen"
  "../src/chapter7_tutorials/msg"
  "../src/chapter7_tutorials/srv"
  "../msg_gen"
  "../srv_gen"
  "CMakeFiles/ROSBUILD_genmsg_py"
  "../src/chapter7_tutorials/msg/__init__.py"
  "../src/chapter7_tutorials/msg/_Twist.py"
  "../src/chapter7_tutorials/msg/_Move.py"
  "../src/chapter7_tutorials/msg/_Vector3.py"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ROSBUILD_genmsg_py.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
