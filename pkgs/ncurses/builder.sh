source $setup

tar -xf $src

cd *

./configure --host=$host --prefix=$out $configureFlags

make

make install
