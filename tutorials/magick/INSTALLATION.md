In order to install the latest verions of ImageMagick, you download the tar file ([here](https://imagemagick.org/download/ImageMagick.tar.gz) or [here](https://imagemagick.org/script/install-source.php)).

Then you must execute

```
./configure --with-modules --enable-shared --with-perl --prefix="/usr/local/"
make
sudo make install
sudo ldconfig
```

The **configure** step will output the libraries that have been detected. You should install the libraries for the functionalities you want.

For example, if you want support for .webp files, you need to install the package `libwebp-dev`.

You might want to end up with a configuration like this one:

```
==============================================================================
ImageMagick is configured as follows. Please verify that this configuration
matches your expectations.

  Host system type: x86_64-pc-linux-gnu
  Build system type: x86_64-pc-linux-gnu

                 Option                        Value
  ------------------------------------------------------------------------------
  Shared libraries  --enable-shared=yes		yes
  Static libraries  --enable-static=yes		yes
  Build utilities   --with-utilities=yes        yes
  Module support    --with-modules=yes		yes
  GNU ld            --with-gnu-ld=yes		yes
  Quantum depth     --with-quantum-depth=16	16
  High Dynamic Range Imagery
                    --enable-hdri=yes		yes

  Install documentation:			yes

  Delegate Library Configuration:
  BZLIB             --with-bzlib=yes		yes
  Autotrace         --with-autotrace=no		no
  DJVU              --with-djvu=yes		no
  DPS               --with-dps=yes		no
  FFTW              --with-fftw=yes		yes
  FLIF              --with-flif=yes		no
  FlashPIX          --with-fpx=yes		no
  FontConfig        --with-fontconfig=yes	yes
  FreeType          --with-freetype=yes		yes
  Ghostscript lib   --with-gslib=yes		yes
  Graphviz          --with-gvc=yes		yes
  HEIC              --with-heic=yes             no
  JBIG              --with-jbig=yes		yes
  JPEG v1           --with-jpeg=yes		yes
  LCMS              --with-lcms=yes		yes
  LQR               --with-lqr=yes		no
  LTDL              --with-ltdl=yes		yes
  LZMA              --with-lzma=yes		yes
  Magick++          --with-magick-plus-plus=yes	yes
  OpenEXR           --with-openexr=yes		no
  OpenJP2           --with-openjp2=yes		no
  PANGO             --with-pango=yes		yes
  PERL              --with-perl=yes		/usr/bin/perl
  PNG               --with-png=yes		yes
  RAQM              --with-raqm=yes		no
  RAW               --with-raw=yes 	   	no
  RSVG              --with-rsvg=no		no
  TIFF              --with-tiff=yes		yes
  WEBP              --with-webp=yes		yes
  WMF               --with-wmf=yes		no
  X11               --with-x=			yes
  XML               --with-xml=yes		yes
  ZLIB              --with-zlib=yes		yes
  ZSTD              --with-zstd=yes		no
```


