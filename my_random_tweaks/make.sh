#!/usr/bin/env sh

cd world_gen
zip -r world_gen_tweaks.zip pack.mcmeta data/
cd ..
mv world_gen/world_gen_tweaks.zip .

cd more_diamonds_and_chest_loot
zip -r diamonds_loot_changes.zip pack.mcmeta data/
cd ..
mv more_diamonds_and_chest_loot/diamonds_loot_changes.zip .

cd trading_changes
zip -r trading_changes.zip pack.mcmeta data/
cd ..
mv trading_changes/trading_changes.zip .
