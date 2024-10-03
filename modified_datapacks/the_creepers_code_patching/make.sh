#!/usr/bin/env sh

curl "https://cdn.modrinth.com/data/m9UqKPU2/versions/eiAqBZn0/datapack.zip" > datapack.zip
curl "https://cdn.modrinth.com/data/m9UqKPU2/versions/eiAqBZn0/resourcepack.zip" > resourcepack.zip

mkdir -p original/datapack
mkdir -p original/resourcepack

mv datapack.zip original/datapack/
mv resourcepack.zip original/resourcepack/

cd original/datapack/
unzip datapack.zip
rm datapack.zip
cd ../..

cd original/resourcepack/
unzip resourcepack.zip
rm resourcepack.zip
cd ../..

patch -p1 -d original/ < my_changes.patch

cd original/datapack
zip -r tcc_datapack.zip pack.mcmeta pack.png data/
cd ../..
mv original/datapack/tcc_datapack.zip .

cd original/resourcepack
zip -r tcc_resourcepack.zip pack.mcmeta pack.png assets/
cd ../..
mv original/resourcepack/tcc_resourcepack.zip .

rm -r original

echo "Done, use tcc_datapack.zip and tcc_resourcepack.zip"
echo "Remember to check out the full pack: https://modrinth.com/datapack/the-creepers-code"


