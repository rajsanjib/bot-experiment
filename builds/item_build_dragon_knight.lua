X = {}

local IBUtil = require(GetScriptDirectory() .. "/ItemBuildUtility");
local npcBot = GetBot();
local talents = IBUtil.FillTalenTable(npcBot);
local skills  = IBUtil.FillSkillTable(npcBot, IBUtil.GetSlotPattern(1));

X["items"] = { 
	"item_poor_mans_shield",
	"item_magic_wand",
	"item_power_treads_str",
	"item_armlet",
	"item_black_king_bar",
	"item_assault",
	"item_heart",
	"item_satanic"
};	

X["skills"] = IBUtil.GetBuildPattern(
	  "normal", 
	  {1,3,1,2,1,4,1,3,3,3,4,2,2,2,4}, skills, 
	  {1,4,6,8}, talents
);

return X