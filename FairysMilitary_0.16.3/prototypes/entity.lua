function equipmentfunc(w, h)
data:extend(
{
  {
    type = "equipment-grid",
    name = "fairy-equipment-grid-"..w.."x"..h,
    width = w,
    height = h,
    -- equipment_categories = {"angels-energy", "angels-repair", "angels-heavy-defense", "angels-construction", "angels-movement", "tank", "vehicle", "armoured-vehicle"}
    equipment_categories = {"tank", "vehicle", "armoured-vehicle"}
  }
}
)
end
for w = 6, 15, 1 do
    for h = 2, 15, 1 do
        equipmentfunc(w,h)
    end
end

function stripes_func(file, num)
    stripes = {}
    for i = 1, num, 1 do
        table.insert(stripes,
            {
             filename = "__FairysLibrary__/graphics/entity/"..file.."/"..file.."-"..i..".png",
             width_in_frames = 1,
             height_in_frames = 1,
            }
        )
    end
    return stripes
end

function gun_turret_extension(inputs)
return
{
  layers =
  {
    {
      width = 500,
      height = 500,
      frame_count = inputs.frame_count and inputs.frame_count or 8,
      line_length = inputs.line_length and inputs.line_length or 0,
      axially_symmetrical = false,
      direction_count = 4,
      run_mode = inputs.run_mode and inputs.run_mode or "backward",
      shift = util.by_pixel(0, 0),
      stripes = stripes_func("fairy-gun-turret-gun-extension", 32)
    }
  }
}
--[[
{
  filename = "__FairysLibrary__/graphics/entity/fairy-gun-turret/fairy-gun-turret-gun-extension.png",
  priority = "medium",
  width = 65,
  height = 63,
  direction_count = 4,
  frame_count = inputs.frame_count and inputs.frame_count or 5,
  line_length = inputs.line_length and inputs.line_length or 0,
  run_mode = inputs.run_mode and inputs.run_mode or "forward",
  shift = {0.015625, -0.859375},
  axially_symmetrical = false
}
]]
end

--[[
function gun_turret_extension_mask(inputs)
return
{
  filename = "__FairysLibrary__/graphics/entity/fairy-gun-turret/fairy-gun-turret-gun-extension-mask.png",
  flags = { "mask" },
  width = 24,
  height = 31,
  direction_count = 4,
  frame_count = inputs.frame_count and inputs.frame_count or 5,
  line_length = inputs.line_length and inputs.line_length or 0,
  run_mode = inputs.run_mode and inputs.run_mode or "forward",
  shift = {0, -0.890625},
  axially_symmetrical = false,
  apply_runtime_tint = true
}
end

function gun_turret_extension_shadow(inputs)
return
{
  filename = "__FairysLibrary__/graphics/entity/fairy-gun-turret/fairy-gun-turret-gun-extension-shadow.png",
  width = 89,
  height = 49,
  direction_count = 4,
  frame_count = inputs.frame_count and inputs.frame_count or 5,
  line_length = inputs.line_length and inputs.line_length or 0,
  run_mode = inputs.run_mode and inputs.run_mode or "forward",
  shift = {1.20313, 0.015625},
  axially_symmetrical = false,
  draw_as_shadow = true
}
end
]]

function gun_turret_attack(inputs)
return
{
  layers =
  {
    {
      width = 500,
      height = 500,
      frame_count = 1,--inputs.frame_count and inputs.frame_count or 2,
      axially_symmetrical = false,
      direction_count = 64,
      shift = util.by_pixel(0, 0),
      stripes = stripes_func("fairy-gun-turret", 64)
    },
--[[    
    {
      filename = "__FairysLibrary__/graphics/entity/fairy-gun-turret/fairy-gun-turret-gun-mask.png",
      flags = { "mask" },
      line_length = inputs.frame_count and inputs.frame_count or 2,
      width = 29,
      height = 27,
      frame_count = inputs.frame_count and inputs.frame_count or 2,
      axially_symmetrical = false,
      direction_count = 64,
      shift = {0.015625, -1.01563},
      apply_runtime_tint = true
    },
    {
      width = 91,
      height = 50,
      frame_count = inputs.frame_count and inputs.frame_count or 2,
      axially_symmetrical = false,
      direction_count = 64,
      shift = {1.23438, 0},
      draw_as_shadow = true,
      stripes =
      {
        {
          filename = "__FairysLibrary__/graphics/entity/fairy-gun-turret/fairy-gun-turret-gun-shadow-1.png",
          width_in_frames = inputs.frame_count and inputs.frame_count or 2,
          height_in_frames = 32,
        },
        {
          filename = "__FairysLibrary__/graphics/entity/fairy-gun-turret/fairy-gun-turret-gun-shadow-2.png",
          width_in_frames = inputs.frame_count and inputs.frame_count or 2,
          height_in_frames = 32,
        }
      }
    }
]]    
  }
}
end

data:extend(
{
  {
    type = "ammo-turret",
    name = "fairy-gun-turret",
    icon = "__FairysMilitary__/graphics/icons/fairy-gun-turret.png",
    icon_size = 32,
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 0.5, result = "fairy-gun-turret"},
    max_health = 40000,
    corpse = "medium-remnants",
    collision_box = {{-3.65, -3.65}, {3.65, 3.65}},
    selection_box = {{-4, -4}, {4, 4}},
    rotation_speed = 0.015,
    preparing_speed = 0.08,
    folding_speed = 0.08,
    dying_explosion = "medium-explosion",
    inventory_size = 1,
    automated_ammo_count = 10,
    attacking_speed = 3.5,
    folded_animation = 
    {
      layers =
      {
        gun_turret_extension{frame_count=1, line_length = 1},
--        gun_turret_extension_mask{frame_count=1, line_length = 1},
--        gun_turret_extension_shadow{frame_count=1, line_length = 1}
      }
    },
    preparing_animation = 
    {
      layers =
      {
        gun_turret_extension{},
--        gun_turret_extension_mask{},
--        gun_turret_extension_shadow{}
      }
    },
    prepared_animation = gun_turret_attack{frame_count=1},
    attacking_animation = gun_turret_attack{},
    folding_animation = 
    { 
      layers = 
      { 
        gun_turret_extension{run_mode = "forward"},
--        gun_turret_extension_mask{run_mode = "backward"},
--        gun_turret_extension_shadow{run_mode = "backward"}
      }
    },
    base_picture =
    {
      layers =
      {
        {
          filename = "__FairysLibrary__/graphics/entity/fairy-gun-turret/fairy-gun-turret-base.png",
          priority = "high",
          width = 500,
          height = 500,
          axially_symmetrical = false,
          direction_count = 1,
          frame_count = 1,
          shift = util.by_pixel(0, -18.7),
--[[        },
        {
          filename = "__FairysLibrary__/graphics/entity/fairy-gun-turret/fairy-gun-turret-base-mask.png",
          flags = { "mask" },
          line_length = 1,
          width = 52,
          height = 47,
          axially_symmetrical = false,
          direction_count = 1,
          frame_count = 1,
          shift = {0, -0.234375},
          apply_runtime_tint = true
]]        }
      }
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "cannon-shell",
      cooldown = 1 * 60,
      movement_slow_down_factor = 0,
      projectile_creation_distance = 5.6,
      projectile_center = util.by_pixel(-4, -85),
      range = 100,
      sound =
      {
        {
          filename = "__base__/sound/fight/tank-cannon.ogg",
          volume = 1.0
        }
      },
    },
    call_for_help_radius = 40
  },
  {
    type = "car",
    name = "fairy-cruiser",
    icon = "__FairysMilitary__/graphics/icons/fairy-cruiser.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation", "placeable-off-grid", "not-on-map"},
    minable = {mining_time = 1, result = "fairy-cruiser"},
    mined_sound = {filename = "__core__/sound/deconstruct-medium.ogg"},
    max_health = 4.5e5,
    corpse = "big-remnants",
    dying_explosion = "massive-explosion",
    energy_per_hit_point = 50,
    crash_trigger = crash_trigger(),
    resistances =
    {
      {
        type = "fire",
        percent = 50
      },
      {
        type = "impact",
        percent = 30,
        decrease = 50
      }
    },
    collision_box = {{-7, -20}, {7, 20}},
    selection_box = {{-9, -22}, {9, 22}},
    collision_mask = {},
    effectivity = 1.5,
    braking_power = "1kW",

    burner =
    {
      fuel_category = "chemical",
      effectivity = 0.6,
      fuel_inventory_size = 1
    },
    consumption = "1MW",
    friction = 0.02,
    light =
    {
      {
        type = "oriented",
        minimum_darkness = 0.3,
        picture =
        {
          filename = "__core__/graphics/light-cone.png",
          priority = "extra-high",
          flags = { "light" },
          scale = 2,
          width = 200,
          height = 200
        },
        shift = {-0.6, -14},
        size = 20,
        intensity = 0.6,
        color = {r = 0.92, g = 0.77, b = 0.3}
      },
      {
        type = "oriented",
        minimum_darkness = 0.3,
        picture =
        {
          filename = "__core__/graphics/light-cone.png",
          priority = "extra-high",
          flags = { "light" },
          scale = 2,
          width = 200,
          height = 200
        },
        shift = {0.6, -14},
        size = 20,
        intensity = 0.6,
        color = {r = 0.92, g = 0.77, b = 0.3}
      }
    },
    render_layer = "air-object",
    final_render_layer = "air-object",
    animation =
    {
      layers =
      {
        {
          priority = "high",
          width = 1440,
          height = 1440,
          frame_count = 1,
          direction_count = 60,
          shift = util.by_pixel(0, 0),
          animation_speed = 8,
          max_advance = 1,
          scale = 1.5,
          stripes = stripes_func("fairy-cruiser", 60)
        },
--[[
        {
          priority = "high",
          width = 500,
          height = 500,
          frame_count = 1,
          apply_runtime_tint = true,
          direction_count = 64,
          shift = {0, 0},
          animation_speed = 8,
          max_advance = 1,
          scale = 1.5,
--          line_length = 4,
          stripes = util.multiplystripes(1, stripes_func("fairy-cruiser-mask-", 64))
        }
]]
      }
    },
--    turret_rotation_speed = 0.35 / 60,
    sound_no_fuel =    --没燃料时候的声音
    {
      {
        filename = "__base__/sound/fight/car-no-fuel-1.ogg",
        volume = 0.6
      }
    },
    stop_trigger_speed = 0.2,
    sound_minimum_speed = 0.2;
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound =
      {
        filename = "__FairysLibrary__/sound/fairy-loop.ogg",
        volume = 0.6
      },
      activate_sound =
      {
        filename = "__FairysLibrary__/sound/fairy-start.ogg",
        volume = 0.6
      },
      deactivate_sound =
      {
        filename = "__FairysLibrary__/sound/fairy-stop.ogg",
        volume = 0.6
      },
      match_speed_to_activity = true,
    },
    open_sound = { filename = "__base__/sound/car-door-open.ogg", volume=0.7 },
    close_sound = { filename = "__base__/sound/car-door-close.ogg", volume = 0.7 },
    rotation_speed = 0.0035,
    acceleration_per_energy = 0.35,
    tank_driving = true,
    weight = 5e3,
    guns = { "fairy-machine-gun", "fairy-flamethrower", "fairy-cannon", "fairy-railgun" },  --武器
    equipment_grid = "fairy-equipment-grid-15x15",  --支持6x2到15x15大小
    inventory_size = 80
  },
  {
    type = "car",
    name = "fairy-crawler",
    icon = "__FairysMilitary__/graphics/icons/fairy-crawler.png",
    icon_size = 32,
--    flags = {"pushable", "placeable-neutral", "player-creation", "placeable-off-grid"},
    flags = {"placeable-neutral", "player-creation", "placeable-off-grid", "not-on-map"},
    minable = {mining_time = 1, result = "fairy-crawler"},
    max_health = 13500,
    corpse = "medium-remnants",
    dying_explosion = "medium-explosion",
    energy_per_hit_point = 0.06,
    crash_trigger = crash_trigger(),
    resistances =
    {
      {
        type = "fire",
        decrease = 10,
        percent = 30
      },
      {
        type = "physical",
        decrease = 25,
        percent = 40
      },
      {
        type = "impact",
        decrease = 40,
        percent = 40
      },
      {
        type = "explosion",
        decrease = 10,
        percent = 30
      },
      {
        type = "acid",
        decrease = 10,
        percent = 30
      }
    },
    collision_box = {{-1.5, -2.25}, {1.5, 2.25}},
    selection_box = {{-1.5, -2.25}, {1.5, 2.25}},
    collision_mask = {},
    effectivity = 0.7,
    braking_power = "800kW",
    burner =
    {
      effectivity = 0.75,
      fuel_inventory_size = 3,
      smoke =
      {
        {
          name = "tank-smoke",
          deviation = {0.25, 0.25},
          frequency = 50,
          position = {0.5, 2},
          starting_frame = 0,
          starting_frame_deviation = 60
        },
        {
          name = "tank-smoke",
          deviation = {0.25, 0.25},
          frequency = 50,
          position = {-0.5, 2},
          starting_frame = 0,
          starting_frame_deviation = 60
        }
      }
    },
    consumption = "1000kW",
    terrain_friction_modifier = 0.2,
    friction = 0.0045,
    light =
    {
      {
        type = "oriented",
        minimum_darkness = 0.3,
        picture =
        {
          filename = "__core__/graphics/light-cone.png",
          priority = "medium",
          scale = 2,
          width = 200,
          height = 200
        },
        shift = {-1, -14},
        size = 2,
        intensity = 0.6
      },
      {
        type = "oriented",
        minimum_darkness = 0.3,
        picture =
        {
          filename = "__core__/graphics/light-cone.png",
          priority = "medium",
          scale = 2,
          width = 200,
          height = 200
        },
        shift = {1, -14},
        size = 2,
        intensity = 0.6
      }
    },
    render_layer = "air-object",
    final_render_layer = "air-object",
    animation =
    {
      layers =
      {
        {
          width = 500,
          height = 500,
          frame_count = 1,
          direction_count = 60,
          shift = {0, 0},
          animation_speed = 8,
          max_advance = 1,
          stripes = stripes_func("fairy-crawler", 60)
        }
      }
    },
    stop_trigger_speed = 0.1,
    sound_no_fuel =
    {
      {
        filename = "__base__/sound/fight/tank-no-fuel-1.ogg",
        volume = 0.6
      },
    },
    stop_trigger =
    {
      {
        type = "play-sound",
        sound =
        {
          {
            filename = "__base__/sound/car-breaks.ogg",
            volume = 0.6
          },
        }
      },
    },
    sound_minimum_speed = 0.1;
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound =
      {
        filename = "__FairysLibrary__/sound/fairy-loop.ogg",
        volume = 1
      },
      activate_sound =
      {
        filename = "__FairysLibrary__/sound/fairy-start.ogg",
        volume = 1
      },
      deactivate_sound =
      {
        filename = "__FairysLibrary__/sound/fairy-stop.ogg",
        volume = 1
      },
      match_speed_to_activity = true,
    },
    open_sound = { filename = "__base__/sound/car-door-open.ogg", volume=0.7 },
    close_sound = { filename = "__base__/sound/car-door-close.ogg", volume = 0.7 },
    rotation_speed = 0.0075,
    tank_driving = true,
    weight = 20000,
    inventory_size = 768,
    --guns = {},
    equipment_grid = "fairy-equipment-grid-15x15"  --支持6x2到15x15大小
  },
  {
    type = "car",
    name = "fairy-holy-shadow",
    icon = "__FairysMilitary__/graphics/icons/fairy-holy-shadow.png",
    icon_size = 32,
--    flags = {"pushable", "placeable-neutral", "player-creation", "placeable-off-grid"},
    flags = {"placeable-neutral", "player-creation", "placeable-off-grid", "not-on-map"},
    minable = {mining_time = 1, result = "fairy-holy-shadow"},
    max_health = 3500,
    corpse = "medium-remnants",
    dying_explosion = "medium-explosion",
    energy_per_hit_point = 0.06,
    crash_trigger = crash_trigger(),
    collision_box = {{-1.5, -2.25}, {1.5, 2.25}},
    selection_box = {{-1.5, -2.25}, {1.5, 2.25}},
    collision_mask = {},
    effectivity = 0.7,
    braking_power = "800kW",
    burner =
    {
      effectivity = 0.75,
      fuel_inventory_size = 3,
      smoke =
      {
        {
          name = "tank-smoke",
          deviation = {0.25, 0.25},
          frequency = 50,
          position = {0.5, 2},
          starting_frame = 0,
          starting_frame_deviation = 60
        },
        {
          name = "tank-smoke",
          deviation = {0.25, 0.25},
          frequency = 50,
          position = {-0.5, 2},
          starting_frame = 0,
          starting_frame_deviation = 60
        }
      }
    },
    consumption = "1000kW",
    terrain_friction_modifier = 0.2,
    friction = 0.0045,
    light =
    {
      {
        type = "oriented",
        minimum_darkness = 0.3,
        picture =
        {
          filename = "__core__/graphics/light-cone.png",
          priority = "medium",
          scale = 2,
          width = 200,
          height = 200
        },
        shift = {-1, -14},
        size = 2,
        intensity = 0.6
      },
      {
        type = "oriented",
        minimum_darkness = 0.3,
        picture =
        {
          filename = "__core__/graphics/light-cone.png",
          priority = "medium",
          scale = 2,
          width = 200,
          height = 200
        },
        shift = {1, -14},
        size = 2,
        intensity = 0.6
      }
    },
    render_layer = "air-object",
    final_render_layer = "air-object",
    animation =
    {
      layers =
      {
        {
          width = 500,
          height = 500,
          frame_count = 1,
          direction_count = 64,
          shift = {0, 0},
          animation_speed = 8,
          max_advance = 1,
          stripes = stripes_func("fairy-holy-shadow", 64)
        }
      }
    },
    stop_trigger_speed = 0.1,
    sound_no_fuel =
    {
      {
        filename = "__base__/sound/fight/tank-no-fuel-1.ogg",
        volume = 0.6
      },
    },
    stop_trigger =
    {
      {
        type = "play-sound",
        sound =
        {
          {
            filename = "__base__/sound/car-breaks.ogg",
            volume = 0.6
          },
        }
      },
    },
    sound_minimum_speed = 0.1;
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound =
      {
        filename = "__FairysLibrary__/sound/fairy-loop.ogg",
        volume = 1
      },
      activate_sound =
      {
        filename = "__FairysLibrary__/sound/fairy-start.ogg",
        volume = 1
      },
      deactivate_sound =
      {
        filename = "__FairysLibrary__/sound/fairy-stop.ogg",
        volume = 1
      },
      match_speed_to_activity = true,
    },
    open_sound = { filename = "__base__/sound/car-door-open.ogg", volume=0.7 },
    close_sound = { filename = "__base__/sound/car-door-close.ogg", volume = 0.7 },
    rotation_speed = 0.0075,
    tank_driving = true,
    weight = 2000,
    inventory_size = 80,
    guns = { "tank-cannon", "tank-machine-gun", "tank-flamethrower" },  --武器
    equipment_grid = "fairy-equipment-grid-10x8"  --支持6x2到15x15大小
  },
  {
    type = "car",
    name = "fairy-frigate",
    icon = "__FairysMilitary__/graphics/icons/fairy-frigate.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation", "placeable-off-grid", "not-on-map"},
    minable = {mining_time = 1, result = "fairy-frigate"},
    mined_sound = {filename = "__core__/sound/deconstruct-medium.ogg"},
    max_health = 2.5e5,
    corpse = "big-remnants",
    dying_explosion = "massive-explosion",
    energy_per_hit_point = 50,
    crash_trigger = crash_trigger(),
    resistances =
    {
      {
        type = "fire",
        percent = 30
      },
      {
        type = "impact",
        percent = 20,
        decrease = 50
      }
    },
    collision_box = {{-7, -20}, {7, 20}},
    selection_box = {{-9, -22}, {9, 22}},
    collision_mask = {},
    effectivity = 1.5,
    braking_power = "600W",

    burner =
    {
      fuel_category = "chemical",
      effectivity = 0.6,
      fuel_inventory_size = 1
    },
    consumption = "600kW",
    friction = 0.02,
    light =
    {
      {
        type = "oriented",
        minimum_darkness = 0.3,
        picture =
        {
          filename = "__core__/graphics/light-cone.png",
          priority = "extra-high",
          flags = { "light" },
          scale = 2,
          width = 200,
          height = 200
        },
        shift = {-0.6, -14},
        size = 20,
        intensity = 0.6,
        color = {r = 0.92, g = 0.77, b = 0.3}
      },
      {
        type = "oriented",
        minimum_darkness = 0.3,
        picture =
        {
          filename = "__core__/graphics/light-cone.png",
          priority = "extra-high",
          flags = { "light" },
          scale = 2,
          width = 200,
          height = 200
        },
        shift = {0.6, -14},
        size = 20,
        intensity = 0.6,
        color = {r = 0.92, g = 0.77, b = 0.3}
      }
    },
    render_layer = "air-object",
    final_render_layer = "air-object",
    animation =
    {
      layers =
      {
        {
          priority = "high",
          width = 800,
          height = 800,
          frame_count = 1,
          direction_count = 64,
          shift = util.by_pixel(0, 0),
          animation_speed = 8,
          max_advance = 1,
          scale = 1.5,
          stripes = stripes_func("fairy-frigate", 64)
        },
--[[
        {
          priority = "high",
          width = 500,
          height = 500,
          frame_count = 1,
          apply_runtime_tint = true,
          direction_count = 64,
          shift = {0, 0},
          animation_speed = 8,
          max_advance = 1,
          scale = 1.5,
--          line_length = 4,
          stripes = util.multiplystripes(1, stripes_func("fairy-cruiser-mask-", 64))
        }
]]
      }
    },
--    turret_rotation_speed = 0.35 / 60,
    sound_no_fuel =    --没燃料时候的声音
    {
      {
        filename = "__base__/sound/fight/car-no-fuel-1.ogg",
        volume = 0.6
      }
    },
    stop_trigger_speed = 0.2,
    sound_minimum_speed = 0.2;
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound =
      {
        filename = "__FairysLibrary__/sound/fairy-loop.ogg",
        volume = 0.6
      },
      activate_sound =
      {
        filename = "__FairysLibrary__/sound/fairy-start.ogg",
        volume = 0.6
      },
      deactivate_sound =
      {
        filename = "__FairysLibrary__/sound/fairy-stop.ogg",
        volume = 0.6
      },
      match_speed_to_activity = true,
    },
    open_sound = { filename = "__base__/sound/car-door-open.ogg", volume=0.7 },
    close_sound = { filename = "__base__/sound/car-door-close.ogg", volume = 0.7 },
    rotation_speed = 0.0045,
    acceleration_per_energy = 0.4,
    tank_driving = true,
    weight = 3e3,
    guns = { "fairy-machine-gun", "fairy-flamethrower", "fairy-cannon" },  --武器
    equipment_grid = "fairy-equipment-grid-12x10",  --支持6x2到15x15大小
    inventory_size = 60
  }
}
)

