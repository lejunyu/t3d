cmake_minimum_required(VERSION 3.10...3.20)

set(LIB_MODEL3D_NAME model3d)
set(EXE_SERVER_NAME ${PROJECT_NAME}server)

# add_subdirectory(model3d)
add_subdirectory(server)

include(GNUInstallDirs)
install(TARGETS ${EXE_SERVER_NAME} RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR})
