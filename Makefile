normal:
	echo "Making all datapacks and resource packs"
	cd modified_datapacks/survivors_elegy_patching; ./make.sh
	mv modified_datapacks/survivors_elegy_patching/se_datapack.zip .
	mv modified_datapacks/survivors_elegy_patching/se_resourcepack.zip .
	cd modified_datapacks/the_creepers_code_patching; ./make.sh
	mv modified_datapacks/the_creepers_code_patching/tcc_datapack.zip .
	mv modified_datapacks/the_creepers_code_patching/tcc_resourcepack.zip .
	cd my_random_tweaks; ./make.sh
	mv my_random_tweaks/diamonds_loot_changes.zip .
	mv my_random_tweaks/world_gen_tweaks.zip .
	mv my_random_tweaks/trading_changes.zip .

clean:
	rm se_datapack.zip
	rm se_resourcepack.zip
	rm tcc_datapack.zip
	rm tcc_resourcepack.zip
	rm diamonds_loot_changes.zip
	rm world_gen_tweaks.zip
	rm trading_changes.zip
