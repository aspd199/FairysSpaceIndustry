data:extend(
{
  {
    type = "mining-drill",  --名字
    name = "fairy-bucketw",    --引用名
    icon = "__FairysMining__/graphics/icons/fairy-bucketw.png",   --图标
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "fairy-bucketw"},
    max_health = 12000,
    resource_categories = {"basic-solid"},
    corpse = "big-remnants",--残骸
    collision_box = {{ -11.35, -11.85}, {11.55, 11.45}},
    selection_box = {{ -11.35, -11.85}, {11.55, 11.45}},
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/electric-mining-drill.ogg",
        volume = 0.75
      },
      apparent_volume = 1.5,
    },
    animations =
    {
      north =
      {
        priority = "extra-high",
        width = 1000,
        height = 1000,
        shift = {0, 0},
        frame_count = 64,
        direction_count = 1,
        animation_speed = 1,
        stripes = stripes_func("fairy-bucketw", 64)
      }
    },
    input_fluid_patch_sprites = fluidpatch,
    mining_speed = 15,
    energy_source =
    {
      type = "electric",
      -- will produce this much * energy pollution units per tick
      emissions = 0.043,
      usage_priority = "secondary-input"
    },
    energy_usage = "16560kW", --Bagger 288
    mining_power = 24,
    resource_searching_radius = 25.5,
    vector_to_place_result = {0, -13},
    module_specification =
    {
      module_slots = 5
    },
    radius_visualisation_picture =
    {
      filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-radius-visualization.png",
      width = 12,
      height = 12
    },
    monitor_visualization_tint = {r=78, g=173, b=255},
--    fast_replaceable_group = "Bucketwheeel-Excavator",
    circuit_wire_connection_points =
    {
      get_circuit_connector_wire_shifting_for_connector({3.5, -3.0},    {3.5, -3.0},    4),
      get_circuit_connector_wire_shifting_for_connector({3.5, 3.0},     {3.5, 3.0},     2),
      get_circuit_connector_wire_shifting_for_connector({-3.5, 3.0},    {-3.5, 3.0},    0),
      get_circuit_connector_wire_shifting_for_connector({-3.5, -3},     {-3.5, -3},     6)
    },
    circuit_connector_sprites =
    {
      get_circuit_connector_sprites({3.5, -3.0},    {3.5, -3.0},    4),
      get_circuit_connector_sprites({3.5, 3.0},     {3.5, 3.0},     2),
      get_circuit_connector_sprites({-3.5, 3.0},    {-3.5, 3.0},    0),
      get_circuit_connector_sprites({-3.5, -3.0},   {-3.5, -3.0},   6)
    },
    circuit_wire_max_distance = 12
  }
}
)

