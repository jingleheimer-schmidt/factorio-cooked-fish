
local sounds = require("__base__.prototypes.entity.sounds")

local cooked_af_crab = {
  name = "cooked-af-crab",
  type = "capsule",
  icon = "__factorio-cooked-fish__/graphics/advanced_fishing/cooked_crab.png",
  icon_size = 128,
  subgroup = "raw-resource",
  order = "h[raw-fish][crab][cooked]",
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
                damage = { type = "physical", amount = -240 }
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

local cooked_af_salmon = {
  name = "cooked-af-salmon",
  type = "capsule",
  icon = "__factorio-cooked-fish__/graphics/advanced_fishing/cooked_salmon.png",
  icon_size = 128,
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
                damage = { type = "physical", amount = -150 }
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

local cooked_af_tropical = {
  name = "cooked-af-tropical",
  type = "capsule",
  icon = "__factorio-cooked-fish__/graphics/advanced_fishing/cooked_tropical.png",
  icon_size = 128,
  subgroup = "raw-resource",
  order = "h[raw-fish][tropical][cooked]",
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
                damage = { type = "physical", amount = -180 }
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

local cooked_af_squid = {
  name = "cooked-af-squid",
  type = "capsule",
  icon = "__factorio-cooked-fish__/graphics/advanced_fishing/cooked_squid.png",
  icon_size = 128,
  subgroup = "raw-resource",
  order = "h[raw-fish][squid][cooked]",
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
                damage = { type = "physical", amount = -300 }
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

local cooked_af_crab_recipe = {
  type = "recipe",
  name = "cooked-af-crab-recipe",
  category = "cooking",
  energy_required = 16,
  enabled = true,
  ingredients = { { "af-crab", 1 } },
  result = "cooked-af-crab"
}

local cooked_af_salmon_recipe = {
  type = "recipe",
  name = "cooked-af-salmon-recipe",
  category = "cooking",
  energy_required = 16,
  enabled = true,
  ingredients = { { "af-salmon", 1 } },
  result = "cooked-af-salmon"
}

local cooked_af_tropical_recipe = {
  type = "recipe",
  name = "cooked-af-tropical-recipe",
  category = "cooking",
  energy_required = 16,
  enabled = true,
  ingredients = { { "af-tropical", 1 } },
  result = "cooked-af-tropical"
}

local cooked_af_squid_recipe = {
  type = "recipe",
  name = "cooked-af-squid-recipe",
  category = "cooking",
  energy_required = 16,
  enabled = true,
  ingredients = { { "af-squid", 1 } },
  result = "cooked-af-squid"
}

if mods["Advanced_Fishing"] then
  data:extend({
    cooked_af_crab,
    cooked_af_crab_recipe,
    cooked_af_salmon,
    cooked_af_salmon_recipe,
    cooked_af_tropical,
    cooked_af_tropical_recipe,
    cooked_af_squid,
    cooked_af_squid_recipe
  })
  local farm_tech = data.raw.technology["af_fish_farm"].effects
  table.insert(farm_tech, { type = "unlock-recipe", recipe = "cooked-af-crab-recipe" })
  table.insert(farm_tech, { type = "unlock-recipe", recipe = "cooked-af-salmon-recipe" })
  table.insert(farm_tech, { type = "unlock-recipe", recipe = "cooked-af-tropical-recipe" })
  table.insert(farm_tech, { type = "unlock-recipe", recipe = "cooked-af-squid-recipe" })
  data.raw.capsule["af-crab"].capsule_action.attack_parameters.activation_type = "consume"
  data.raw.capsule["af-salmon"].capsule_action.attack_parameters.activation_type = "consume"
  data.raw.capsule["af-tropical"].capsule_action.attack_parameters.activation_type = "consume"
  data.raw.capsule["af-squid"].capsule_action.attack_parameters.activation_type = "consume"
end
