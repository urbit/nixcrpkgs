source $setup

tar -xf $src
cd *

export CFLAGS=-fPIC

case $host in
  *darwin*) CFLAGS="$CFLAGS -mmacosx-version-min=10.11";;
esac

./configure             \
  --disable-shared      \
  --disable-manual      \
  --prefix=$out         \
  --host=$host

make
make install
