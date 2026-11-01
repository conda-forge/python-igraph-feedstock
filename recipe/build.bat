@echo on

rem Build python-igraph against the externally provided libigraph from conda-forge
rem Use pkg-config to discover headers and libraries.
set IGRAPH_USE_PKG_CONFIG=1

rem Ensure pkg-config can find igraph.pc from the host env (both common locations)
set "PKG_CONFIG_PATH=%PREFIX%\Library\lib\pkgconfig;%PREFIX%\lib\pkgconfig;%PKG_CONFIG_PATH%"

%PYTHON% -m pip install --no-deps --no-build-isolation --ignore-installed . -vvv
if errorlevel 1 exit 1
