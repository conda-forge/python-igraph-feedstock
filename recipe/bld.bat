:: Install needed packages in msys2
bash -lc "pacman --needed --noconfirm -Sy pacman-mirrors"
bash -lc "pacman --noconfirm -Sy"
bash -lc "pacman --noconfirm -S autoconf automake bison flex libtool mingw-w64-x86_64-libtool mingw-w64-i686-libxml2 mingw-w64-x86_64-libxml2 zip"

set IGRAPH_EXTRA_CONFIGURE_ARGS="--disable-graphml"
python -m pip install --no-deps --ignore-installed .