--[[ ==========================================================================
	Sandbox Settings for Just Craft The Damn Thing

	Uses dane's Library to properly hide recipes the player disabled in the
	sandbox options. dane's Library exposes:
		require "daneLibrary_Recipes"
		daneLibrary.Recipes.hide("CraftRecipeID")
	which is the clean, supported way to remove a craftRecipe from the menu in
	B42 (there is no vanilla Lua setter for this).

	This mod requires both Just Craft The Damn Thing and dane's Library, so both
	are guaranteed present when this runs.
============================================================================ ]]

require "daneLibrary_Recipes"

local OPTION_TO_RECIPE = {
	enableSewSheetFromRags        = "JCTDT_SewSheetFromRags",
	enableBookToPaper             = "JCTDT_BookToPaper",
	enableClothingToRippedSheets  = "JCTDT_ClothingToRippedSheets",
	enableOpenCanScrewdriver      = "JCTDT_OpenCanScrewdriver",
	enableOpenCanScissors         = "JCTDT_OpenCanScissors",
	enableStonesToWhetstone       = "JCTDT_StonesToWhetstone",
	enableRabbitSkullToBone       = "JCTDT_RabbitSkullToBone",
	enableCraftMetalPipe          = "JCTDT_CraftMetalPipe",
	enableCraftSledgehammer       = "JCTDT_CraftSledgehammer",
	enablePlankToLongSticks       = "JCTDT_PlankToLongSticks",
}

local function applyToggles()
	local vars = SandboxVars and SandboxVars.JCTDTSandbox
	if not vars then return end
	if not (daneLibrary and daneLibrary.Recipes and daneLibrary.Recipes.hide) then
		print("[JCTDTSandbox] dane's Library not available; cannot hide recipes.")
		return
	end
	for optionName, recipeName in pairs(OPTION_TO_RECIPE) do
		if vars[optionName] == false then
			daneLibrary.Recipes.hide(recipeName)
			print("[JCTDTSandbox] hid recipe " .. recipeName)
		end
	end
end

Events.OnGameStart.Add(applyToggles)
