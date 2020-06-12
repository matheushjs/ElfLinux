The order to execute the autotools should be something like this:

```
libtoolize
aclocal -I m4/ --install
autoheader
autoconf
automake --add-missing
make
```

Remember to set up the dure flags when running the program locally, without installing it in root dirs:

```
LD_LIBRARY_PATH=./build/lib/xviewer/ GSETTINGS_SCHEMA_DIR=./build/share/glib-2.0/schemas/ ./build/bin/xviewer
```
