PrefabFiles = {
	"bigbrother",
	"bigbrother_none",
}

Assets = {
    Asset( "IMAGE", "images/saveslot_portraits/bigbrother.tex" ),
    Asset( "ATLAS", "images/saveslot_portraits/bigbrother.xml" ),

    Asset( "IMAGE", "images/selectscreen_portraits/bigbrother.tex" ),
    Asset( "ATLAS", "images/selectscreen_portraits/bigbrother.xml" ),
	
    Asset( "IMAGE", "images/selectscreen_portraits/bigbrother_silho.tex" ),
    Asset( "ATLAS", "images/selectscreen_portraits/bigbrother_silho.xml" ),

    Asset( "IMAGE", "bigportraits/bigbrother.tex" ),
    Asset( "ATLAS", "bigportraits/bigbrother.xml" ),
	
	Asset( "IMAGE", "images/map_icons/bigbrother.tex" ),
	Asset( "ATLAS", "images/map_icons/bigbrother.xml" ),
	
	Asset( "IMAGE", "images/avatars/avatar_bigbrother.tex" ),
    Asset( "ATLAS", "images/avatars/avatar_bigbrother.xml" ),
	
	Asset( "IMAGE", "images/avatars/avatar_ghost_bigbrother.tex" ),
    Asset( "ATLAS", "images/avatars/avatar_ghost_bigbrother.xml" ),
	
	Asset( "IMAGE", "images/avatars/self_inspect_bigbrother.tex" ),
    Asset( "ATLAS", "images/avatars/self_inspect_bigbrother.xml" ),
	
	Asset( "IMAGE", "images/names_bigbrother.tex" ),
    Asset( "ATLAS", "images/names_bigbrother.xml" ),
	
	Asset( "IMAGE", "images/names_gold_bigbrother.tex" ),
    Asset( "ATLAS", "images/names_gold_bigbrother.xml" ),
}

AddMinimapAtlas("images/map_icons/bigbrother.xml")

local require = GLOBAL.require
local STRINGS = GLOBAL.STRINGS

-- The character select screen lines
STRINGS.CHARACTER_TITLES.bigbrother = "The Truth Holder"
STRINGS.CHARACTER_NAMES.bigbrother = "Esc"
STRINGS.CHARACTER_DESCRIPTIONS.bigbrother = "*Good at math\n* stinky feet\n* stubborn"
STRINGS.CHARACTER_QUOTES.bigbrother = "\"What I said was correct!\""
STRINGS.CHARACTER_SURVIVABILITY.bigbrother = "Slim"

-- Custom speech strings
STRINGS.CHARACTERS.ESCTEMPLATE = require "speech_bigbrother"

-- The character's name as appears in-game 
STRINGS.NAMES.ESCTEMPLATE = "Esc"
STRINGS.SKIN_NAMES.bigbrother_none = "Esc"

-- The skins shown in the cycle view window on the character select screen.
-- A good place to see what you can put in here is in skinutils.lua, in the function GetSkinModes
local skin_modes = {
    { 
        type = "ghost_skin",
        anim_bank = "ghost",
        idle_anim = "idle", 
        scale = 0.75, 
        offset = { 0, -25 } 
    },
}

-- Add mod character to mod character list. Also specify a gender. Possible genders are MALE, FEMALE, ROBOT, NEUTRAL, and PLURAL.
AddModCharacter("bigbrother", "MALE", skin_modes)
