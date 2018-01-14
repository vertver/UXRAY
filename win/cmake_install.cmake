# Install script for directory: E:/UXRAY_exp

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Program Files (x86)/xray-1.7.0")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "RelWithDebInfo")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("E:/UXRAY_exp/win/code/3rd-party/dxsdk/cmake_install.cmake")
  include("E:/UXRAY_exp/win/code/3rd-party/ZLib/cmake_install.cmake")
  include("E:/UXRAY_exp/win/code/3rd-party/minizip/cmake_install.cmake")
  include("E:/UXRAY_exp/win/code/3rd-party/dxerr2015/cmake_install.cmake")
  include("E:/UXRAY_exp/win/code/3rd-party/ode/cmake_install.cmake")
  include("E:/UXRAY_exp/win/code/3rd-party/openal/cmake_install.cmake")
  include("E:/UXRAY_exp/win/code/3rd-party/luajit/cmake_install.cmake")
  include("E:/UXRAY_exp/win/code/3rd-party/luabind/cmake_install.cmake")
  include("E:/UXRAY_exp/win/code/3rd-party/imdexlib/cmake_install.cmake")
  include("E:/UXRAY_exp/win/code/3rd-party/libogg/cmake_install.cmake")
  include("E:/UXRAY_exp/win/code/3rd-party/libtheora/cmake_install.cmake")
  include("E:/UXRAY_exp/win/code/3rd-party/libvorbis/cmake_install.cmake")
  include("E:/UXRAY_exp/win/code/3rd-party/libvorbisfile/cmake_install.cmake")
  include("E:/UXRAY_exp/win/code/3rd-party/ATI/cmake_install.cmake")
  include("E:/UXRAY_exp/win/code/3rd-party/NVAPI/cmake_install.cmake")
  include("E:/UXRAY_exp/win/code/3rd-party/DPlay/cmake_install.cmake")
  include("E:/UXRAY_exp/win/code/3rd-party/eax/cmake_install.cmake")
  include("E:/UXRAY_exp/win/code/3rd-party/cs/cmake_install.cmake")
  include("E:/UXRAY_exp/win/code/3rd-party/boost/cmake_install.cmake")
  include("E:/UXRAY_exp/win/code/engine/xrCore/cmake_install.cmake")
  include("E:/UXRAY_exp/win/code/engine/xrAPI/cmake_install.cmake")
  include("E:/UXRAY_exp/win/code/engine/xrCDB/cmake_install.cmake")
  include("E:/UXRAY_exp/win/code/engine/xrXMLParser/cmake_install.cmake")
  include("E:/UXRAY_exp/win/code/engine/xrSound/cmake_install.cmake")
  include("E:/UXRAY_exp/win/code/engine/xrNetServer/cmake_install.cmake")
  include("E:/UXRAY_exp/win/code/engine/xrEngine/cmake_install.cmake")
  include("E:/UXRAY_exp/win/code/engine/xrCPU_Pipe/cmake_install.cmake")
  include("E:/UXRAY_exp/win/code/engine/xrParticles/cmake_install.cmake")
  include("E:/UXRAY_exp/win/code/engine/xrPhysics/cmake_install.cmake")
  include("E:/UXRAY_exp/win/code/engine/xrGame/cmake_install.cmake")
  include("E:/UXRAY_exp/win/code/engine/xrRenderPC_R1/cmake_install.cmake")
  include("E:/UXRAY_exp/win/code/engine/xrRenderPC_R2/cmake_install.cmake")
  include("E:/UXRAY_exp/win/code/engine/xrRenderPC_R3/cmake_install.cmake")
  include("E:/UXRAY_exp/win/code/engine/xrRenderPC_R4/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "E:/UXRAY_exp/win/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
