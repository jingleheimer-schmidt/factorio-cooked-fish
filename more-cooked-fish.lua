
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
    stack_size = 100
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
    stack_size = 100
}

---@type data.RecipePrototype
local cooked_cod_recipe = {
    type = "recipe",
    name = "cooked-cod-recipe",
    category = "cooking",
    energy_required = 16,
    enabled = true,
    ingredients = { { "raw-cod", 1 } },
    result = "cooked-cod"
}

---@type data.RecipePrototype
local cooked_salmon_recipe = {
    type = "recipe",
    name = "cooked-salmon-recipe",
    category = "cooking",
    energy_required = 16,
    enabled = true,
    ingredients = { { "raw-salmon", 1 } },
    result = "cooked-salmon"
}

if mods["more-fish"] then
    data:extend({
        cooked_cod_item,
        cooked_cod_recipe,
        cooked_salmon_item,
        cooked_salmon_recipe
    })
end
