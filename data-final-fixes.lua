-- data-final-fixes.lua

local util = require("util")

-- Liste des recettes dupliquer dans la catégorie gravity-crafting
local baseRecipesToDuplicate = {
    "gravity-blue-circuit",
    "gravity-red-circuit",
    "gravity-green-circuit",
}

-- Fonction pour dupliquer une recette et l'assigner à la catégorie gravity-crafting avec un nom unique (Pas utilisé pour le moment)
local function duplicateRecipe(recipeName, newCategory)
    local original = data.raw.recipe[recipeName]
    if original then
        local newRecipe = table.deepcopy(original)
        newRecipe.name = recipeName .. ""  
        newRecipe.category = newCategory
        data:extend({newRecipe})
        log("Recette dupliquée : " .. newRecipe.name .. " dans la catégorie " .. newCategory)
    else
        log("Recette originale non trouvée : " .. recipeName)
    end
end

-- Duplique les recettes sélectionnées
for _, recipeName in ipairs(baseRecipesToDuplicate) do
    duplicateRecipe(recipeName, "gravity-crafting")
end

-- Autoriser les modules de productivité pour les recettes
for _, module in pairs(data.raw.module) do
    if module.effect and module.effect.productivity and module.limitation then
        table.insert(module.limitation, "gravity-blue-circuit")
        table.insert(module.limitation, "gravity-red-circuit")
        table.insert(module.limitation, "gravity-green-circuit")
    end
end
