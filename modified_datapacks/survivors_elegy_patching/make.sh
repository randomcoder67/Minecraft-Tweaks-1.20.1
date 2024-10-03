#!/usr/bin/env sh

curl "https://cdn.modrinth.com/data/vnA9NZjR/versions/3ahISYMw/Datapack_Survivors_Elegy_alpha_v0.8.4.zip" > datapack.zip
curl "https://cdn.modrinth.com/data/vnA9NZjR/versions/3ahISYMw/Texturepack_Survivors_Elegy_alpha_v0.8.4.zip" > resourcepack.zip

mkdir -p original/datapack
mkdir -p original/resourcepack

mv datapack.zip original/datapack/datapack.zip
mv resourcepack.zip original/resourcepack/resourcepack.zip

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
zip -r se_datapack.zip pack.mcmeta pack.png data/
cd ../..
mv original/datapack/se_datapack.zip .

cd original/resourcepack
zip -r se_resourcepack.zip pack.mcmeta pack.png assets/
cd ../..
mv original/resourcepack/se_resourcepack.zip .

rm -r original

echo "Done, use se_datapack.zip and se_resourcepack.zip"
echo "Remember to check out the full pack: https://modrinth.com/datapack/survivors-elegy"


