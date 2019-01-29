source $setup

tar -xf $src

mkdir build
cd build

CHOST=$host \
../zlib-$version/configure --prefix=$out --static

make

make install
