cmake_minimum_required(VERSION 3.10...3.20)

project(t3d CXX)

set(T3D_MAJOR_VERSION 0)
set(T3D_MINOR_VERSION 1)
set(T3D_PATCH_VERSION 1)
set(T3D_VERSION
    ${T3D_MAJOR_VERSION}.${T3D_MINOR_VERSION}.${T3D_PATCH_VERSION})
set(T3D_VERSION_STRING "${T3D_VERSION}")

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)


# Libraries
# add_subdirectory(lib)

# Public Targets
add_subdirectory(src)
