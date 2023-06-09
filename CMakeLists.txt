cmake_minimum_required(VERSION 3.14)
set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

project(prototype_sandbox)

include(FetchContent)
FetchContent_Declare(
    googletest
    URL https://github.com/google/googletest/archive/03597a01ee50ed33e9dfd640b249b4be3799d395.zip
)

FetchContent_MakeAvailable(googletest)

add_library(
    prototype
    STATIC
    lib/prototype.cpp
)

add_executable(
    main
    main.cpp
)

target_link_libraries(
    main
    prototype
)

enable_testing()

add_executable(
    tests
    tests.cpp
)
target_link_libraries(
    tests
    GTest::gtest_main
    prototype
)

include(GoogleTest)
gtest_discover_tests(tests)
