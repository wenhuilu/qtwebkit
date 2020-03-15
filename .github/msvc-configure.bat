echo on
set PATH=%GITHUB_WORKSPACE%;%PATH%
cmake --version
cd build
call "C:/Program Files (x86)/Microsoft Visual Studio/2019/Enterprise/VC/Auxiliary/Build/vcvars64.bat"
call "activate.bat"
echo on
cmake .. ^
    -DCMAKE_BUILD_TYPE=Release ^
    -GNinja ^
    -DCMAKE_C_COMPILER_LAUNCHER=ccache ^
    -DCMAKE_CXX_COMPILER_LAUNCHER=ccache ^
    -DQt5_DIR=%GITHUB_WORKSPACE%/qt5/5.14.1/msvc2017_64/lib/cmake/Qt5 ^
    -DQT_CONAN_DIR=.
ninja
