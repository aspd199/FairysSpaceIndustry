data:extend(
{
  {
    type = "recipe",
    name = "fairy-gun-turret",
    enabled = false,
    energy_required = 60,
    ingredients =
    {
      {"iron-gear-wheel", 100},
      {"copper-tungsten-alloy", 100},
      {"steel-plate", 200},--electronic-circuit
      {"electronic-circuit", 20}--electronic-circuit
    },
    result = "fairy-gun-turret"
  },
  {
    type = "recipe",
    name = "fairy-anti-gravity-engine",
    enabled = false,
    energy_required = 30,
    ingredients =
    {
      {"steel-plate", 100},
      {"electronic-circuit", 20},
      {"battery", 100},
      {"copper-cable", 200}
    },
    result = "fairy-anti-gravity-engine"
  },
  {
    type = "recipe",
    name = "fairy-cruiser",
    energy_required = 30,
    enabled = false,
    ingredients =
    {
      {"fairy-anti-gravity-engine", 100},
      {"steel-plate", 10000},
      {"iron-plate", 20000},
      {"low-density-structure", 5000},
      {"radar", 20},
      {"electric-engine-unit", 1000}
    },
    result = "fairy-cruiser"
  },
  {
    type = "recipe",
    name = "fairy-railgun-dart",
    enabled = false,
    energy_required = 5,
    ingredients =
    {
      {"steel-plate", 5},
      {"battery", 5}
    },
    result = "fairy-railgun-dart"
  },
  {
    type = "recipe",
    name = "fairy-cannon-shell",
    enabled = false,
    energy_required = 20,
    ingredients =
    {
      {"steel-plate", 20},
      {"plastic-bar", 20},
      {"explosives", 10},
    },
    result = "fairy-cannon-shell",
  },
  {
    type = "recipe",
    name = "fairy-flamethrower-ammo",
    category = "chemistry",
    enabled = false,
    energy_required = 20,
    ingredients =
    {
      {type="item", name="steel-plate", amount=50},
      {type="fluid", name="light-oil", amount=500},
      {type="fluid", name="heavy-oil", amount=500}
    },
    result = "fairy-flamethrower-ammo",
    crafting_machine_tint =
    {
      primary = {r = 0.845, g = 0.533, b = 0.000, a = 0.000}, -- #d7870000
      secondary = {r = 0.655, g = 0.000, b = 0.000, a = 0.000}, -- #a7000000
      tertiary = {r = 0.685, g = 0.329, b = 0.000, a = 0.000}, -- #ae530000
    }
  },
  {
    type = "recipe",
    name = "fairy-machine-magazine",
    energy_required = 10,
    ingredients = {{"iron-plate", 40}},
    result = "fairy-machine-magazine",
    result_count = 1
  },
  {
    type = "recipe",
    name = "fairy-crawler",
    energy_required = 10,
    enabled = false,
    ingredients =
    {
      {"fairy-anti-gravity-engine", 20},
      {"steel-plate", 75},
      {"electronic-circuit", 20},
      {"iron-gear-wheel", 25}
    },
    result= "fairy-crawler",
  },
  {
    type = "recipe",
    name = "fairy-holy-shadow",
    energy_required = 10,
    enabled = false,
    ingredients =
    {
      {"fairy-anti-gravity-engine", 20},
      {"steel-plate", 75},
      {"electronic-circuit", 20},
      {"iron-gear-wheel", 25}
    },
    result= "fairy-holy-shadow",
  },
  {
    type = "recipe",
    name = "fairy-frigate",
    energy_required = 20,
    enabled = false,
    ingredients =
    {
      {"fairy-anti-gravity-engine", 50},
      {"steel-plate", 5000},
      {"iron-plate", 10000},
      {"low-density-structure", 2500},
      {"radar", 10},
      {"electric-engine-unit", 500}
    },
    result = "fairy-frigate"
  }
}
)
