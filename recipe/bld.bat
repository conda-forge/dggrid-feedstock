mkdir build_cpp
cd build_cpp

cmake %SRC_DIR% -G "NMake Makefiles" ^
                -DCMAKE_PREFIX_PATH="%PREFIX%" ^
                -DWITH_EXT_SHAPELIB=ON ^
                -DWITH_H3=OFF ^
                -DCMAKE_BUILD_TYPE=Release
if errorlevel 1 exit 1

nmake
if errorlevel 1 exit 1

REM nmake install
REM if errorlevel 1 exit 1

copy src\apps\dggrid\dggrid.exe %PREFIX%\Library\bin\dggrid.exe
if errorlevel 1 exit 1
