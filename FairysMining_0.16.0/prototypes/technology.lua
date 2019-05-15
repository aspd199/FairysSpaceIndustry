data:extend(
{
  {
    type = "technology",
    name = "fairy-bucketw-tech",
    icon = "__FairysMining__/graphics/technology/fairy-bucketw-tech.png",
    icon_size = 128,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "fairy-bucketw"
      }
    },
    prerequisites = {"fairy-crawler"},
    unit =
    {
      count = 200,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"production-science-pack", 1}
      },
      time = 30
    },
    order = "a-n-a",
  },
  {
    type = "technology",
    name = "fairy-slag",
    icon = "__FairysMining__/graphics/technology/fairy-slag.png",
    icon_size = 128,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "fairy-slag-red"
      },
      {
        type = "unlock-recipe",
        recipe = "fairy-slag-green"
      },
      {
        type = "unlock-recipe",
        recipe = "fairy-slag-blue"
      },
      {
        type = "unlock-recipe",
        recipe = "fairy-slag-purple"
      },
      {
        type = "unlock-recipe",
        recipe = "fairy-slag-yellow"
      },
      -- {
        -- type = "unlock-recipe",
        -- recipe = "fairy-slag-white"
      -- },
      {
        type = "unlock-recipe",
        recipe = "fairy-slag-normal"
      },
      {
        type = "unlock-recipe",
        recipe = "fairy-slag-orange"
      }
    },
    prerequisites = {"fairy-bucketw-tech"},
    unit =
    {
      count = 200,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"production-science-pack", 1}
      },
      time = 30
    },
    order = "a-n-b",
  }
}
)
