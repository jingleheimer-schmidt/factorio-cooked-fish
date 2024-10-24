
local sounds = require("__base__.prototypes.entity.sounds")

---@type data.ItemPrototype
local cooked_fish_item = {
    name = "cooked-fish",
    type = "capsule",
    icon = "__factorio-cooked-fish__/icon.png",
    icon_size = 32,
    subgroup = "raw-resource",
    order = "h[raw-fish][aaaaaraw-fish][cooked]",
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
local cooked_fish_recipe = {
    type = "recipe",
    name = "cooked-fish",
    category = "cooking",
    energy_required = 16,
    enabled = true,
    ingredients = { { type = "item", name = "raw-fish", amount = 1 } },
    results = { { type = "item", name = "cooked-fish", amount = 1 } }
}

---@type data.RecipeCategory
local cooking_category = {
    type = "recipe-category",
    name = "cooking",
}

data:extend({
    cooked_fish_item,
    cooked_fish_recipe,
    cooking_category
})
