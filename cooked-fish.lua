local sounds = require ("__base__.prototypes.entity.demo-sounds")

local cookedFish = {
  name = "cooked-fish",
  type = "capsule",
  icon = "__factorio-cooked-fish__/graphics/32px-Cooked_fish.png",
  icon_size = 32,
  subgroup = "raw-resource",
  order = "h[raw-fish][cooked-fish]",
  capsule_action =
  {
    type = "use-on-self",
    attack_parameters =
    {
      type = "projectile",
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
                damage = {type = "physical", amount = -120}
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

data:extend({
  cookedFish
})
