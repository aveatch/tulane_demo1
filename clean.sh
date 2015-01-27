# this is script performs cleaning operations on country files with errors.

cd data/clean

# fix the guinea file - we just want the middle 12 row
echo "fixing guinea.cc.txt file"
head -n 24 Guinea.cc.txt | tail -n 12 > Guinea.cc.txt.clean
mv -v Guinea.cc.txt.clean Guinea.cc.txt

#Fix China file - we just want the top 12 rows
echo "fixing China.cc.txt"
head -n 12 China.cc.txt > China.cc.txt.clean
mv -v China.cc.txt.clean China.cc.txt

#Fix Niger file - we just want the top 12 rows
echo "fixing Niger.cc.txt"
head -n 12 Niger.cc.txt > Niger.cc.txt.clean
mv -v Niger.cc.txt.clean Niger.cc.txt 

cd ../..

sleep 1 