:: Make links to versioned automake
bash "ln -s /bin/automake-1.15 /bin/automake"
bash "ln -s /bin/aclocal-1.15 /bin/aclocal"

set IGRAPH_EXTRA_CONFIGURE_ARGS="--disable-graphml"
python -m pip install --no-deps --ignore-installed .