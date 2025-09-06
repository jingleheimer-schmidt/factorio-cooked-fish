
local sounds = require("__base__.prototypes.entity.sounds")

---@type data.ItemPrototype
local cooked_cod_item = {
    name = "cooked-cod",
    type = "capsule",
    icon = "__factorio-cooked-fish__/graphics/more-fish/Cooked_Cod_JE4_BE3.png",
    icon_size = 160,
    subgroup = "raw-resource",
    order = "h[raw-fish][cod][cooked]",
    capsule_action =
    {
        type = "use-on-self",
        attack_parameters =
        {
            type = "projectile",
            activation_type = "consume",
            ammo_category = "capsule",
            cooldown = 30,
            range = 0,
            ammo_type =
            {
                category = "capsule",
                target_type = "position",
                action =
                {
                    type = "direct",
                    action_delivery =
                    {
                        type = "instant",
                        target_effects =
                        {
                            {
                                type = "damage",
                                damage = { type = "physical", amount = -120 }
                            },
                            {
                                type = "play-sound",
                                sound = sounds.eat_fish,
                            },
                        }
                    }
                }
            }
        }
    },
    stack_size = 100,
    spoil_result = feature_flags["spoiling"] and "spoilage" or nil,
    spoil_ticks = feature_flags["spoiling"] and 453000 * 2 or nil
}

---@type data.ItemPrototype
local cooked_salmon_item = {
    name = "cooked-salmon",
    type = "capsule",
    icon = "__factorio-cooked-fish__/graphics/more-fish/Cooked_Salmon_JE2_BE2.png",
    icon_size = 160,
    subgroup = "raw-resource",
    order = "h[raw-fish][salmon][cooked]",
    capsule_action =
    {
        type = "use-on-self",
        attack_parameters =
        {
            type = "projectile",
            activation_type = "consume",
            ammo_category = "capsule",
            cooldown = 30,
            range = 0,
            ammo_type =
            {
                category = "capsule",
                target_type = "position",
                action =
                {
                    type = "direct",
                    action_delivery =
                    {
                        type = "instant",
                        target_effects =
                        {
                            {
                                type = "damage",
                                damage = { type = "physical", amount = -120 }
                            },
                            {
                                type = "play-sound",
                                sound = sounds.eat_fish,
                            },
                        }
                    }
                }
            }
        }
    },
    stack_size = 100,
    spoil_result = feature_flags["spoiling"] and "spoilage" or nil,
    spoil_ticks = feature_flags["spoiling"] and 453000 * 2 or nil
}

---@type data.RecipePrototype
local cooked_cod_recipe = {
    type = "recipe",
    name = "cooked-cod",
    category = "cooking",
    energy_required = 16,
    enabled = true,
    ingredients = { { type = "item", name = "raw-cod", amount = 1 } },
    results = { { type = "item", name = "cooked-cod", amount = 1 } }
}

---@type data.RecipePrototype
local cooked_salmon_recipe = {
    type = "recipe",
    name = "cooked-salmon",
    category = "cooking",
    energy_required = 16,
    enabled = true,
    ingredients = { { type = "item", name = "raw-salmon", amount = 1 } },
    results = { { type = "item", name = "cooked-salmon", amount = 1 } }
}

if mods["more-fish"] then
    data:extend({
        cooked_cod_item,
        cooked_cod_recipe,
        cooked_salmon_item,
        cooked_salmon_recipe
    })
end
