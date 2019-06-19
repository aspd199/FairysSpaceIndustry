data:extend(
{
  {
    type = "solar-panel",
    name = "fairy-solar-panel",
    icon = "__FairysSpaceIndustry__/graphics/icons/fairy-solar-panel.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "fairy-solar-panel"},
    max_health = 200,
    corpse = "big-remnants",
    collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    energy_source =
    {
      type = "electric",
      usage_priority = "solar"
    },
    picture =
    {
      filename = "__FairysLibrary__/graphics/entity/fairy-solar-panel.png",
      priority = "high",
      width = 104,
      height = 96,
      shift = util.by_pixel(3, -3)
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    production = "300kW"  
  },
  {
    type = "assembling-machine",
    name = "fairy-electric-furnace",
    icon = "__FairysSpaceIndustry__/graphics/icons/fairy-electric-furnace.png",
    icon_size = 32,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 1, result = "fairy-electric-furnace"},
    max_health = 350,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    light = {intensity = 1, size = 10},
    resistances =
    {
      {
        type = "fire",
        percent = 80
      }
    },
    collision_box = {{-1.65, -1.65}, {1.65, 1.65}},
    selection_box = {{-2, -2}, {2, 2}},
    module_specification =
    {
      module_slots = 5,
      module_info_icon_shift = {0, 0.8}
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"fairy-smelting"},
    crafting_speed = 4,
    energy_usage = "300kW",
    ingredient_count = 2,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.005
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/electric-furnace.ogg",
        volume = 0.7
      },
      apparent_volume = 1.5
    },
    animation =
    {
      layers = {
      {
        filename = "__FairysLibrary__/graphics/entity/fairy-electric-furnace/fairy-electric-furnace-base.png",
        priority = "high",
        width = 129,
        height = 100,
        frame_count = 1,
        shift = util.by_pixel(4, 0)
      },
      {
        filename = "__FairysLibrary__/graphics/entity/fairy-electric-furnace/fairy-electric-furnace-shadow.png",
        priority = "high",
        width = 129,
        height = 100,
        frame_count = 1,
        shift = {0.421875, 0},
        draw_as_shadow = true
      }
      }
    },
    working_visualisations =
    {
      {
        animation =
        {
          filename = "__FairysLibrary__/graphics/entity/fairy-electric-furnace/fairy-electric-furnace-heater.png",
          priority = "high",
          width = 40,
          height = 30,
          frame_count = 5,
          animation_speed = 0.5,
          shift = util.by_pixel(-0.5, -27)
        },
        light = {intensity = 0.4, size = 6, shift = {0.0, 1.0}, color = {r = 1.0, g = 1.0, b = 1.0}}
      }
    },
    fast_replaceable_group = "furnace"
  }
}
)

