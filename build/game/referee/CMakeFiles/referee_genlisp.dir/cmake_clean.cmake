file(REMOVE_RECURSE
  "referee_node_automoc.cpp"
)

# Per-language clean rules from dependency scanning.
foreach(lang)
  include(CMakeFiles/referee_genlisp.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()