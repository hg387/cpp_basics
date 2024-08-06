cmake_minimum_required(VERSION 3.5.0)
project(cpp_basics VERSION 0.1.0 LANGUAGES C CXX)
add_subdirectory(data_structures)

add_executable(cpp_basics main.cpp)
target_link_libraries(cpp_basics PUBLIC data_structures)

include(CTest)
enable_testing()

target_compile_features(cpp_basics PUBLIC cxx_std_20)
set(CPACK_PROJECT_NAME ${PROJECT_NAME})
set(CPACK_PROJECT_VERSION ${PROJECT_VERSION})
include(CPack)
