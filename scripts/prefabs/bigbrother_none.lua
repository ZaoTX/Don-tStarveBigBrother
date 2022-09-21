local assets =
{
	Asset( "ANIM", "anim/bigbrother.zip" ),
	Asset( "ANIM", "anim/ghost_bigbrother_build.zip" ),
}

local skins =
{
	normal_skin = "bigbrother",
	ghost_skin = "ghost_bigbrother_build",
}

return CreatePrefabSkin("bigbrother_none",
{
	base_prefab = "bigbrother",
	type = "base",
	assets = assets,
	skins = skins, 
	skin_tags = {"ESCTEMPLATE", "CHARACTER", "BASE"},
	build_name_override = "bigbrother",
	rarity = "Character",
})