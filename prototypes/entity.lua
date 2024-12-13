-- gravity_assembler.lua --

local base = {
    type = "assembling-machine",
    name = "gravity-assembler",
    icon = "__Gravity-Assembler__/graphics/gravity-assembler-icon.png",
    icon_size = 64,
    flags = { "placeable-neutral", "placeable-player", "player-creation" },
    minable = { hardness = 0.2, mining_time = 1, result = "gravity-assembler" },
    max_health = 2000,
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    resistances = { { type = "fire", percent = 90 } },
    crafting_categories = { "gravity-crafting"},
    crafting_speed = 5,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = { pollution = 35 },{ pollen = 35 },
    },
    energy_usage = "1MW",
    module_slots = 4,
    allowed_effects = {"quality" },
    working_sound = {
        audible_distance_modifier = 0.5,
        fade_in_ticks = 4,
        fade_out_ticks = 20,
        sound = { filename = "__base__/sound/assembling-machine-t3-1.ogg", volume = 0.45 }
    },
    source_inventory_size = 1,
    result_inventory_size = 1,
    graphics_set = {
        animation = {
            layers = {
                {
                    filename = "__Gravity-Assembler__/graphics/gravity-assembler-hr-shadow.png",
                    priority = "high",
                    width = 520,
                    height = 500,
                    frame_count = 1,
                    line_length = 1,
                    repeat_count = 99,
                    animation_speed = 0.15,
                    shift = util.by_pixel_hr(0, -16),
                    draw_as_shadow = true,
                    scale = 0.5,
                },
                {
                    priority = "high",
                    width = 320,
                    height = 320,
                    frame_count = 99,
                    shift = util.by_pixel_hr(0, -16),
                    animation_speed = 0.15,
                    scale = 0.5,
                    stripes = {
                        {
                            filename = "__Gravity-Assembler__/graphics/gravity-assembler-hr-animation-1.png",
                            width_in_frames = 8,
                            height_in_frames = 8,
                        },
                        {
                            filename = "__Gravity-Assembler__/graphics/gravity-assembler-hr-animation-2.png",
                            width_in_frames = 8,
                            height_in_frames = 8,
                        },
                    },
                },
            },
        },
        working_visualisations = {
            {
                fadeout = true,
                secondary_draw_order = 1,
                animation = {
                    priority = "high",
                    size = { 320, 320 },
                    shift = util.by_pixel_hr(0, -16),
                    frame_count = 99,
                    draw_as_glow = true,
                    scale = 0.5,
                    animation_speed = 0.15,
                    blend_mode = "additive",
                    stripes = {
                        {
                            filename = "__Gravity-Assembler__/graphics/gravity-assembler-hr-animation-emission-1.png",
                            width_in_frames = 8,
                            height_in_frames = 8,
                        },
                        {
                            filename = "__Gravity-Assembler__/graphics/gravity-assembler-hr-animation-emission-2.png",
                            width_in_frames = 8,
                            height_in_frames = 8,
                        },
                    },
                },
            }
        },
        reset_animation_when_frozen = true
    }
}

local base_item = {
    type = "item",
    name = "gravity-assembler",
    icon = "__Gravity-Assembler__/graphics/gravity-assembler-icon.png",
    icon_size = 64,
    subgroup = "production-machine",
    order = "a-a",
    place_result = "gravity-assembler",
    stack_size = 1
}

local function add_item(entity)
    local item = table.deepcopy(base_item)
    item.name = entity.name
    item.icon = entity.icon
    item.icon_size = entity.icon_size
    item.place_result = item.name
    data:extend({ item })
end

local function add_entity(entity)
    local base_entity = table.deepcopy(base)
    base_entity.name = entity.name
    base_entity.minable.result = entity.name
    base_entity.icon = entity.icon
    base_entity.icon_size = entity.icon_size
    base_entity.fluid_boxes = entity.fluid_boxes
    base_entity.selection_box = entity.selection_box
    base_entity.collision_box = { { -2.5, -2.5 }, { 2.5, 2.5 } }
    data:extend({ base_entity })
    add_item(entity)
end

add_entity({
    name = "gravity-assembler",
    icon = "__Gravity-Assembler__/graphics/gravity-assembler-icon.png",
    icon_size = 64,
    selection_box = { { -2.5, -2.5 }, { 2.5, 2.5 } },
})