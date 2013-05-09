apt-get update
#Read the file line by line and install
FILENAME=$1
cat $FILENAME | while read LINE
do
apt-get install -y $LINE
done

cd src
make all
cd ..
cp -r build/ /var/www/


