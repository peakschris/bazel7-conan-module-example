@echo off
chcp 65001 > nul
setlocal
echo @echo off > "%~dp0/deactivate_conanrunenv-release-x86_64.bat"
echo echo Restoring environment >> "%~dp0/deactivate_conanrunenv-release-x86_64.bat"
for %%v in (PATH) do (
    set foundenvvar=
    for /f "delims== tokens=1,2" %%a in ('set') do (
        if /I "%%a" == "%%v" (
            echo set "%%a=%%b">> "%~dp0/deactivate_conanrunenv-release-x86_64.bat"
            set foundenvvar=1
        )
    )
    if not defined foundenvvar (
        echo set %%v=>> "%~dp0/deactivate_conanrunenv-release-x86_64.bat"
    )
)
endlocal


set "PATH=C:\Users\browchri\.conan2\p\boost3ff2a4fdb6e27\p\bin;C:\Users\browchri\.conan2\p\bzip2c02b42bf08110\p\bin;C:\Users\browchri\.conan2\p\zlib47a1fa7d4bdbe\p\bin;%PATH%"