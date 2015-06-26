FILE(REMOVE_RECURSE
  "../msg_gen"
  "../srv_gen"
  "../src/chapter7_tutorials/msg"
  "../src/chapter7_tutorials/srv"
  "../msg_gen"
  "../srv_gen"
  "CMakeFiles/clean-test-results"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/clean-test-results.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
