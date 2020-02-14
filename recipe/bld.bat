set MSYSTEM=MINGW64
set IGRAPH_EXTRA_CONFIGURE_ARGS="--disable-graphml"
:: Copy missing MSVC files
xcopy /E /Y /F %RECIPE_DIR%\msvc %SRC_DIR%\vendor\source\igraph\msvc\
python -m pip install --no-deps --ignore-installed .