data:extend(
{
  {
    type = "technology",
    name = "fairy-solar-energy",
    icon = "__FairysSpaceIndustry__/graphics/technology/fairy-solar-panel.png",
    icon_size = 128,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "fairy-solar-panel"
      }
    },
    prerequisites = {"solar-energy"},
    unit =
    {
      count = 100,
      ingredients =
      {
        {"science-pack-1", 2},
        {"science-pack-2", 1}
      },
      time = 30
    },
    order = "a-i-a",
  },
  {
    type = "technology",
    name = "fairy-material-processing",
    icon = "__FairysSpaceIndustry__/graphics/technology/fairy-electric-furnace.png",
    icon_size = 128,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "fairy-electric-furnace"
      }
    },
    prerequisites = {"multi-purpose-furnace-2"},
    unit =
    {
      count = 500,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1}
      },
      time = 30
    },
    order = "c-d-a"
  }
}
)
