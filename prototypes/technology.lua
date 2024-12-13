-- prototypes/technology.lua

data:extend({
    {
        type = "technology",
        name = "gravity-research",
        icon = "__Gravity-Assembler__/graphics/icon2.png",
        icon_size = 256,
        prerequisites = {"space-science-pack"},
        effects = {},
        unit = {
            count = 5000,
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
                {"production-science-pack", 1},
                {"utility-science-pack", 1}
            },
            time = 30
        },
        order = "c-a",
        localised_name = {"technology-name.gravity-research"},
        localised_description = {"technology-description.gravity-research"}
    },
    {
        type = "technology",
        name = "gravity-technology",
        icon = "__Gravity-Assembler__/graphics/icon2.png",
        icon_size = 256,
        prerequisites = {"gravity-research"},
        effects = {
            {
                type = "unlock-recipe",
                recipe = "gravity-assembler"
            }
        },
        unit = {
            count = 4000,
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
                {"production-science-pack", 1},
                {"utility-science-pack", 1}
            },
            time = 30
        },
        order = "c-b",
        localised_name = {"technology-name.gravity-technology"},
        localised_description = {"technology-description.gravity-technology"}
    },
    {
        type = "technology",
        name = "gravity-crafting",
        icon = "__Gravity-Assembler__/graphics/computronics.png",
        icon_size = 256,
        prerequisites = {"gravity-technology"},
        effects = {
            {
                type = "unlock-recipe",
                recipe = "gravity-blue-circuit"
            },
            {
                type = "unlock-recipe",
                recipe = "gravity-red-circuit"
            },
            {
                type = "unlock-recipe",
                recipe = "gravity-green-circuit"
            }
        },
        unit = {
            count = 4000,
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
                {"production-science-pack", 1},
                {"utility-science-pack", 1}
            },
            time = 30
        },
        order = "c-c",
        localised_name = {"technology-name.gravity-crafting"},
        localised_description = {"technology-description.gravity-crafting"}
    }
})