-- prototypes/recipe.lua --

data:extend({
    {
        type = "recipe-category",
        name = "gravity-crafting"
    },
    {
        type = "recipe",
        name = "gravity-blue-circuit",
        icon = "__base__/graphics/icons/processing-unit.png",
        icon_size = 64,
        category = "gravity-crafting",
        enabled = false,
        energy_required = 5,
        ingredients = {
            { type = "item", name = "advanced-circuit", amount = 3 },
            { type = "item", name = "electronic-circuit", amount = 10 },
        },
        results = {
            { type = "item", name = "processing-unit", amount = 3 }
        },
        allow_quality = true,
        emissions_multiplier = 4,
    },
    {
        type = "recipe",
        name = "gravity-red-circuit",
        icon = "__base__/graphics/icons/advanced-circuit.png",
        icon_size = 64,
        category = "gravity-crafting",
        enabled = false,
        energy_required = 5,
        ingredients = {
            { type = "item", name = "electronic-circuit", amount = 2 },
            { type = "item", name = "plastic-bar", amount = 2 },
            { type = "item", name = "copper-cable", amount = 4 }
        },
        results = {
            { type = "item", name = "advanced-circuit", amount = 5 }
        }
    },
    {
        type = "recipe",
        name = "gravity-green-circuit",
        icon = "__base__/graphics/icons/electronic-circuit.png",
        icon_size = 64,
        category = "gravity-crafting",
        enabled = false,
        energy_required = 5,
        ingredients = {
            { type = "item", name = "iron-plate", amount = 1 },
            { type = "item", name = "copper-cable", amount = 3 }
        },
        results = {
            { type = "item", name = "electronic-circuit", amount = 5 }
        }
    },
    {
        type = "recipe",
        name = "gravity-assembler",
        icon = "__Gravity-Assembler__/graphics/gravity-assembler-icon.png",
        icon_size = 64,
        category = "crafting",
        enabled = false,
        energy_required = 15,
        ingredients = {
            { type = "item", name = "steel-plate", amount = 500 },
            { type = "item", name = "advanced-circuit", amount = 50 },
            { type = "item", name = "processing-unit", amount = 250 },
            { type = "item", name = "iron-gear-wheel", amount = 100 }
        },
        results = {
            { type = "item", name = "gravity-assembler", amount = 1 }
        }
    }
})