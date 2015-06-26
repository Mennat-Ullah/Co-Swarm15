FILE(REMOVE_RECURSE
  "../msg_gen"
  "../srv_gen"
  "../src/chapter7_tutorials/msg"
  "../src/chapter7_tutorials/srv"
  "../msg_gen"
  "../srv_gen"
  "CMakeFiles/ROSBUILD_gensrv_cpp"
  "../srv_gen/cpp/include/chapter7_tutorials/Neighbor.h"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ROSBUILD_gensrv_cpp.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
