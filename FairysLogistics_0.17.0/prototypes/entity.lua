data:extend(
{
  {
    type = "container",
    name = "fairy-steel-chest",
    icon = "__FairysLogistics__/graphics/icons/fairy-steel-chest.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "fairy-steel-chest"},
    max_health = 350,
    corpse = "small-remnants",
    open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
    close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
    resistances =
    {
      {
        type = "fire",
        percent = 90
      },
      {
        type = "impact",
        percent = 60
      }
    },
    collision_box = {{-1.65, -1.65}, {1.65, 1.65}},
    selection_box = {{-2, -2}, {2, 2}},
    fast_replaceable_group = "container",
    inventory_size = 300,
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    picture =
    {
      filename = "__FairysLibrary__/graphics/entity/fairy-steel-chest.png",
      priority = "extra-high",
      width = 129,
      height = 100,
      shift = util.by_pixel(2.2, 0)
    },
    circuit_wire_connection_point =
    {
      shadow =
      {
        red = util.by_pixel(38, 39),
        green = util.by_pixel(35, 44),
      },
      wire =
      {
        red = util.by_pixel(29, 33),
        green = util.by_pixel(29, 38),
      }
    },
    circuit_connector_sprites = circuit_connector_definitions["chest"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance
  },
  {
    type = "logistic-container",
    name = "fairy-logistic-chest-passive-provider",
    icon = "__FairysLogistics__/graphics/icons/fairy-logistic-chest-passive-provider.png",
    icon_size = 32,
    flags = {"placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "fairy-logistic-chest-passive-provider"},
    max_health = 350,
    corpse = "small-remnants",
    collision_box = {{-1.65, -1.65}, {1.65, 1.65}},
    selection_box = {{-2, -2}, {2, 2}},
    resistances =
    {
      {
        type = "fire",
        percent = 90
      },
      {
        type = "impact",
        percent = 60
      }
    },
    fast_replaceable_group = "container",
    inventory_size = 300,
    logistic_mode = "passive-provider",
    open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
    close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    picture =
    {
      filename = "__FairysLibrary__/graphics/entity/fairy-logistic-chest-passive-provider.png",
      priority = "extra-high",
      width = 129,
      height = 100,
      shift = util.by_pixel(2.2, 0)
    },
    circuit_wire_connection_point =
    {
      shadow =
      {
        red = util.by_pixel(38, 39),
        green = util.by_pixel(35, 44),
      },
      wire =
      {
        red = util.by_pixel(29, 33),
        green = util.by_pixel(29, 38),
      }
    },
    circuit_connector_sprites = circuit_connector_definitions["chest"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance
  },
  {
    type = "logistic-container",
    name = "fairy-logistic-chest-active-provider",
    icon = "__FairysLogistics__/graphics/icons/fairy-logistic-chest-active-provider.png",
    icon_size = 32,
    flags = {"placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "fairy-logistic-chest-active-provider"},
    max_health = 350,
    corpse = "small-remnants",
    collision_box = {{-1.65, -1.65}, {1.65, 1.65}},
    selection_box = {{-2, -2}, {2, 2}},
    resistances =
    {
      {
        type = "fire",
        percent = 90
      },
      {
        type = "impact",
        percent = 60
      }
    },
    fast_replaceable_group = "container",
    inventory_size = 300,
    logistic_mode = "active-provider",
    open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
    close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    picture =
    {
      filename = "__FairysLibrary__/graphics/entity/fairy-logistic-chest-active-provider.png",
      priority = "extra-high",
      width = 129,
      height = 100,
      shift = util.by_pixel(2.2, 0)
    },
    circuit_wire_connection_point =
    {
      shadow =
      {
        red = util.by_pixel(38, 39),
        green = util.by_pixel(35, 44),
      },
      wire =
      {
        red = util.by_pixel(29, 33),
        green = util.by_pixel(29, 38),
      }
    },
    circuit_connector_sprites = circuit_connector_definitions["chest"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance
  },
  {
    type = "logistic-container",
    name = "fairy-logistic-chest-storage",
    icon = "__FairysLogistics__/graphics/icons/fairy-logistic-chest-storage.png",
    icon_size = 32,
    flags = {"placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "fairy-logistic-chest-storage"},
    max_health = 350,
    corpse = "small-remnants",
    collision_box = {{-1.65, -1.65}, {1.65, 1.65}},
    selection_box = {{-2, -2}, {2, 2}},
    resistances =
    {
      {
        type = "fire",
        percent = 90
      },
      {
        type = "impact",
        percent = 60
      }
    },
    fast_replaceable_group = "container",
    inventory_size = 300,
    logistic_mode = "storage",
    open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
    close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    picture =
    {
      filename = "__FairysLibrary__/graphics/entity/fairy-logistic-chest-storage.png",
      priority = "extra-high",
      width = 129,
      height = 100,
      shift = util.by_pixel(2.2, 0)
    },
    circuit_wire_connection_point =
    {
      shadow =
      {
        red = util.by_pixel(38, 39),
        green = util.by_pixel(35, 44),
      },
      wire =
      {
        red = util.by_pixel(29, 33),
        green = util.by_pixel(29, 38),
      }
    },
    circuit_connector_sprites = circuit_connector_definitions["chest"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance
  },
  {
    type = "logistic-container",
    name = "fairy-logistic-chest-requester",
    icon = "__FairysLogistics__/graphics/icons/fairy-logistic-chest-requester.png",
    icon_size = 32,
    flags = {"placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "fairy-logistic-chest-requester"},
    max_health = 350,
    corpse = "small-remnants",
    collision_box = {{-1.65, -1.65}, {1.65, 1.65}},
    selection_box = {{-2, -2}, {2, 2}},
    resistances =
    {
      {
        type = "fire",
        percent = 90
      },
      {
        type = "impact",
        percent = 60
      }
    },
    fast_replaceable_group = "container",
    inventory_size = 300,
    logistic_mode = "requester",
    logistic_slots_count = 12,
    open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
    close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    picture =
    {
      filename = "__FairysLibrary__/graphics/entity/fairy-logistic-chest-requester.png",
      priority = "extra-high",
      width = 129,
      height = 100,
      shift = util.by_pixel(2.2, 0)
    },
    circuit_wire_connection_point =
    {
      shadow =
      {
        red = util.by_pixel(38, 39),
        green = util.by_pixel(35, 44),
      },
      wire =
      {
        red = util.by_pixel(29, 33),
        green = util.by_pixel(29, 38),
      }
    },
    circuit_connector_sprites = circuit_connector_definitions["chest"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance
  }
}
)
