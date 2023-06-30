@echo on

mkdir build
if errorlevel 1 exit 1

set IGRAPH_CMAKE_EXTRA_ARGS=^
      -GNinja ^
      -DCMAKE_BUILD_TYPE=Release ^
      -DCMAKE_POSITION_INDEPENDENT_CODE=on ^
      -DIGRAPH_USE_INTERNAL_BLAS=0 ^
      -DIGRAPH_USE_INTERNAL_LAPACK=0 ^
      -DIGRAPH_USE_INTERNAL_ARPACK=1 ^
      -DIGRAPH_USE_INTERNAL_GLPK=0 ^
      -DIGRAPH_USE_INTERNAL_GMP=0 ^
      -DBUILD_SHARED_LIBS=off ^
      -DIGRAPH_ENABLE_LTO=1 ^
      -DIGRAPH_ENABLE_TLS=1 ^
      -DIGRAPH_GRAPHML_SUPPORT=1
set IGRAPH_EXTRA_LIBRARIES=gmp,blas,cxsparse,glpk,lapack,libxml2

%PYTHON% -m pip install --no-deps --ignore-installed . -vvv
if errorlevel 1 exit 1
