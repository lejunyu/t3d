cmake_minimum_required(VERSION 3.10...3.20)


# Find jsoncpp using the config file provided by vcpkg
find_package(jsoncpp CONFIG REQUIRED)

# Get the include directory from the imported target
get_target_property(JSONCPP_INCLUDE_DIRS JsonCpp::JsonCpp INTERFACE_INCLUDE_DIRECTORIES)

# The INTERFACE_LINK_LIBRARIES property will contain the path to the library
get_target_property(JSONCPP_LIBRARIES JsonCpp::JsonCpp INTERFACE_LINK_LIBRARIES)

# Now, find Drogon. Its find script should now be able to find the jsoncpp variables.
find_package(Drogon REQUIRED)

add_executable(${EXE_SERVER_NAME} main.cc)

target_link_libraries(${EXE_SERVER_NAME}
  PUBLIC
    Drogon::Drogon
    JsonCpp::JsonCpp
)
