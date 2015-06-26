FILE(REMOVE_RECURSE
  "../msg_gen"
  "../srv_gen"
  "../src/chapter7_tutorials/msg"
  "../src/chapter7_tutorials/srv"
  "../msg_gen"
  "../srv_gen"
  "CMakeFiles/test-results-run"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/test-results-run.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
