data:extend(
{
  {
    type = "technology",
    name = "fairy-anti-gravity-engine",
    icon = "__FairysMilitary__/graphics/technology/fairy-anti-gravity-engine.png",
    icon_size = 128,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "fairy-anti-gravity-engine"
      }
    },
    prerequisites = {"electric-engine"},
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
    order = "b-c"
  },
  {
    type = "technology",
    name = "fairy-crawler",
    icon = "__FairysMilitary__/graphics/technology/fairy-crawler.png",
    icon_size = 128,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "fairy-crawler"
      }
    },
    prerequisites = {"fairy-anti-gravity-engine"},
    unit =
    {
      count = 300,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"production-science-pack", 1}
      },
      time = 45
    },
    order = "b-d"
  },
  {
    type = "technology",
    name = "fairy-cruiser",
    icon = "__FairysMilitary__/graphics/technology/fairy-cruiser.png",
    icon_size = 128,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "fairy-cruiser"
      }
    },
    prerequisites = {"rocket-silo", "fairy-anti-gravity-engine"},
    unit =
    {
      count = 10000,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"military-science-pack", 1},
        {"production-science-pack", 1},
        {"high-tech-science-pack", 1},
        {"space-science-pack", 1}
      },
      time = 120
    },
    order = "k-b-a"
  },
  {
    type = "technology",
    name = "fairy-holy-shadow",
    icon = "__FairysMilitary__/graphics/technology/fairy-holy-shadow.png",
    icon_size = 128,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "fairy-holy-shadow"
      }
    },
    prerequisites = {"fairy-crawler", "fairy-anti-gravity-engine"},
    unit =
    {
      count = 10000,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"military-science-pack", 1},
        {"production-science-pack", 1},
        {"high-tech-science-pack", 1}
      },
      time = 120
    },
    order = "k-a-f"
  },
  {
    type = "technology",
    name = "fairy-frigate",
    icon = "__FairysMilitary__/graphics/technology/fairy-frigate.png",
    icon_size = 128,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "fairy-frigate"
      }
    },
    prerequisites = {"fairy-holy-shadow", "fairy-anti-gravity-engine"},
    unit =
    {
      count = 5000,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"military-science-pack", 1},
        {"production-science-pack", 1},
        {"high-tech-science-pack", 1}
      },
      time = 80
    },
    order = "k-b-b"
  },
  {
    type = "technology",
    name = "fairy-machine-magazine",
    icon = "__base__/graphics/technology/military.png",
    icon_size = 128,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "fairy-machine-magazine"
      }
    },
    prerequisites = {"fairy-cruiser", "military-3"},
    unit =
    {
      count = 400,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"military-science-pack", 1}
      },
      time = 120
    },
    order = "k-b-b"
  },
  {
    type = "technology",
    name = "fairy-flamethrower-ammo",
    icon = "__base__/graphics/technology/military.png",
    icon_size = 128,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "fairy-flamethrower-ammo"
      }
    },
    prerequisites = {"fairy-machine-magazine"},
    unit =
    {
      count = 600,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"military-science-pack", 1}
      },
      time = 120
    },
    order = "k-b-c"
  },
  {
    type = "technology",
    name = "fairy-cannon-shell",
    icon = "__base__/graphics/technology/military.png",
    icon_size = 128,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "fairy-cannon-shell"
      }
    },
    prerequisites = {"fairy-flamethrower-ammo"},
    unit =
    {
      count = 800,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"military-science-pack", 1}
      },
      time = 120
    },
    order = "k-b-d"
  },
  {
    type = "technology",
    name = "fairy-railgun-dart",
    icon = "__base__/graphics/technology/military.png",
    icon_size = 128,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "fairy-railgun-dart"
      }
    },
    prerequisites = {"fairy-cannon-shell"},
    unit =
    {
      count = 1000,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"military-science-pack", 1}
      },
      time = 120
    },
    order = "k-b-e"
  },
  {
    type = "technology",
    name = "fairy-gun-turret",
    icon = "__FairysMilitary__/graphics/technology/fairy-gun-turret.png",
    icon_size = 128,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "fairy-gun-turret"
      }
    },
    prerequisites = {"bob-sniper-turrets-3"},
    unit =
    {
      count = 400,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"military-science-pack", 1},
        {"high-tech-science-pack", 1}
      },
      time = 45
    },
    order = "a-j-a"
  }
}
)
