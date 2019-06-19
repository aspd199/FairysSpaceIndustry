data:extend(
{
  {
    type = "item",
    name = "fairy-gun-turret",
    icon = "__FairysMilitary__/graphics/icons/fairy-gun-turret.png",
    icon_size = 32,
    subgroup = "fairy-ship",
    order = "d[fairy-gun-turret]",
    place_result = "fairy-gun-turret",
    stack_size = 50
  },
  {
    type = "item",
    name = "fairy-anti-gravity-engine",
    icon = "__FairysMilitary__/graphics/icons/fairy-anti-gravity-engine.png",
    icon_size = 32,
    subgroup = "fairy-ship",
    order = "a[fairy-anti-gravity-engine]",
    stack_size = 100
  },
  {
    type = "item-with-entity-data",
    name = "fairy-cruiser",
    icon = "__FairysMilitary__/graphics/icons/fairy-cruiser.png",
    icon_size = 32,
    subgroup = "fairy-ship",
    order = "b[fairy-cruiser]",
    place_result = "fairy-cruiser",
    stack_size = 1
  },
  {
    type = "item-with-entity-data",
    name = "fairy-crawler",
    icon = "__FairysMilitary__/graphics/icons/fairy-crawler.png",
    icon_size = 32,
    subgroup = "fairy-ship",
    order = "c[fairy-crawler]",
    place_result = "fairy-crawler",
    stack_size = 1
  },
  {
    type = "item-with-entity-data",
    name = "fairy-holy-shadow",
    icon = "__FairysMilitary__/graphics/icons/fairy-holy-shadow.png",
    icon_size = 32,
    subgroup = "fairy-ship",
    order = "d[fairy-holy-shadow]",
    place_result = "fairy-holy-shadow",
    stack_size = 1
  },
  {
    type = "item-with-entity-data",
    name = "fairy-frigate",
    icon = "__FairysMilitary__/graphics/icons/fairy-frigate.png",
    icon_size = 32,
    subgroup = "fairy-ship",
    order = "e[fairy-frigate]",
    place_result = "fairy-frigate",
    stack_size = 1
  },
  {
    type = "gun",
    name = "fairy-railgun",
    icon = "__base__/graphics/icons/railgun.png",
    icon_size = 32,
    flags = {"hidden"},
    subgroup = "gun",
    order = "g[fairy-railgun]",
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "fairy-railgun",
      cooldown = 1 * 60,
      movement_slow_down_factor = 0,
      projectile_creation_distance = 5.6,
      range = 100,
      sound =
      {
        {
          filename = "__base__/sound/railgun.ogg",
          volume = 0.8
        }
      }
    },
    stack_size = 5
  },
  {
    type = "ammo",
    name = "fairy-railgun-dart",
    icon = "__base__/graphics/icons/railgun-ammo.png",
    icon_size = 32,
    flags = {"hidden"},
    ammo_type =
    {
      category = "fairy-railgun",
      target_type = "direction",
      action =
      {
        type = "line",
        range = 100,
        width = 15,

        source_effects =
        {
          type = "create-explosion",
          entity_name = "railgun-beam"
        },
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            type = "damage",
            damage = { amount = 800, type="physical"}
          }
        }
      }
    },
    magazine_size = 1,
    subgroup = "ammo",
    order = "g-d[fairy-railgun]",
    stack_size = 200
  },
  {
    type = "gun",
    name = "fairy-cannon",
    icon = "__base__/graphics/icons/tank-cannon.png",
    icon_size = 32,
    flags = {"goes-to-main-inventory", "hidden"},
    subgroup = "gun",
    order = "f[fairy-cannon]",
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "fairy-cannon-shell",
      cooldown = 5 * 60,
      movement_slow_down_factor = 0,
      projectile_creation_distance = 5.6,
      projectile_center = {0, 0},
      range = 100,
      sound =
      {
        {
          filename = "__base__/sound/fight/tank-cannon.ogg",
          volume = 1.0
        }
      },
    },
    stack_size = 5
  },
  {
    type = "ammo",
    name = "fairy-cannon-shell",
    icon = "__base__/graphics/icons/cannon-shell.png",
    icon_size = 32,
    flags = {"goes-to-main-inventory"},
    ammo_type =
    {
      category = "fairy-cannon-shell",
      target_type = "direction",
      action =
      {
        type = "direct",
        action_delivery =
        {
          type = "projectile",
          projectile = "cannon-projectile",
          starting_speed = 1,
          direction_deviation = 0.1,
          range_deviation = 15,
          max_range = 100,
          source_effects =
          {
            type = "create-explosion",
            entity_name = "explosion-gunshot"
          },
        }
      },
    },
    subgroup = "ammo",
    order = "g-c[fairy-cannon-shell]",
    stack_size = 200
  },
  {
    type = "gun",
    name = "fairy-flamethrower",
    icon = "__base__/graphics/icons/flamethrower.png",
    icon_size = 32,
    flags = {"goes-to-main-inventory", "hidden"},
    subgroup = "gun",
    order = "e[fairy-flamethrower]",
    attack_parameters =
    {
      type = "stream",
      ammo_category = "fairy-flamethrower",
      cooldown = 1,
      projectile_creation_distance = 5.6,
      gun_barrel_length = 1.4 * 10,
      gun_center_shift = {0, 0},
      range = 40,
      min_range = 15,
      cyclic_sound =
      {
        begin_sound =
        {
          {
            filename = "__base__/sound/fight/flamethrower-start.ogg",
            volume = 1
          }
        },
        middle_sound =
        {
          {
            filename = "__base__/sound/fight/flamethrower-mid.ogg",
            volume = 1
          }
        },
        end_sound =
        {
          {
            filename = "__base__/sound/fight/flamethrower-end.ogg",
            volume = 1
          }
        }
      }
    },
    stack_size = 1
  },
  {
    type = "ammo",
    name = "fairy-flamethrower-ammo",
    icon = "__base__/graphics/icons/flamethrower-ammo.png",
    icon_size = 32,
    flags = {"goes-to-main-inventory"},
    ammo_type =
    {
      {
        source_type = "vehicle",
        consumption_modifier = 1.125,
        category = "fairy-flamethrower",
        target_type = "position",
        clamp_position = true,

        action =
        {
          type = "direct",
          action_delivery =
          {
            type = "stream",
            stream = "tank-flamethrower-fire-stream",
            max_length = 40,
            duration = 480,
          }
        }
      }
    },
    magazine_size = 10,
    subgroup = "ammo",
    order = "g-b[fairy-flamethrower-ammo]",
    stack_size = 100
  },
  {
    type = "gun",
    name = "fairy-machine-gun",
    icon = "__base__/graphics/icons/submachine-gun.png",
    icon_size = 32,
    flags = {"goes-to-main-inventory", "hidden"},
    subgroup = "gun",
    order = "d[fairy-machine-gun]",
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "fairy-bullet",
      cooldown = 24,
      movement_slow_down_factor = 0.7,
      damage_modifier = 2,
      shell_particle =
      {
        name = "shell-particle",
        direction_deviation = 0.1,
        speed = 0.1,
        speed_deviation = 0.03,
        center = {0, 0},
        creation_distance = 0,
        starting_frame_speed = 0.4,
        starting_frame_speed_deviation = 0.1
      },
      projectile_center = {0, 0},
      projectile_creation_distance = 0,
      range = 50,
      sound = make_heavy_gunshot_sounds(),
    },
    stack_size = 1
  },
  {
    type = "ammo",
    name = "fairy-machine-magazine",
    icon = "__base__/graphics/icons/firearm-magazine.png",
    icon_size = 32,
    flags = {"goes-to-main-inventory"},
    ammo_type =
    {
      category = "fairy-bullet",
      action =
      {
        {
          type = "direct",
          action_delivery =
          {
            {
              type = "instant",
              source_effects =
              {
                {
                  type = "create-explosion",
                  entity_name = "explosion-gunshot"
                }
              },
              target_effects =
              {
                {
                  type = "create-entity",
                  entity_name = "explosion-hit"
                },
                {
                  type = "damage",
                  damage = { amount = 150 , type = "physical"}
                }
              }
            }
          }
        }
      }
    },
    magazine_size = 1,
    subgroup = "ammo",
    order = "g-a[fairy-machine-magazine]",
    stack_size = 200
  },
}
)
