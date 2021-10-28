#!/bin/sh
cd /home/downloads/ || exit
echo "Downloading newest export..."
wget -O export.sql.zip https://www.worldcubeassociation.org/results/misc/WCA_export.sql.zip
echo "Downloaded...extracting..."
unzip export.sql.zip
echo "Extracted...importing to mysql..."
mysql -uroot -proot wca < WCA_export.sql
echo "Imported...removing temporary files..."
rm export.sql.zip README.md metadata.json WCA_export.sql
echo "Files removed...enjoy the database :)"