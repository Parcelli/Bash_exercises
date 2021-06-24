for i in {0..9}
do
mkdir dir"$i"
cd dir"$i"
touch "$i".{0..9}
cd ..
done
