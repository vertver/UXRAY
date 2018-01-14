call "/VC/Auxiliary/Build/vcvarsall.bat" x86
           cd /d "E:/UXRAY_exp/code/3rd-party/luajit/src"
           call msvcbuild.bat
           del luajit.exe
           del lua51.exp