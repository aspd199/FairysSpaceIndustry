data:extend(
{
  {
    type = "technology",
    name = "fairy-capsule-package",
    icon = "__FairysCapsule__/graphics/technology/fairy-capsule-package.png",
    icon_size = 128,
    prerequisites = {"fluid-handling"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "fairy-oxygen-capsule"
      },
      {
        type = "unlock-recipe",
        recipe = "fairy-water-purified-capsule"
      },
      {
        type = "unlock-recipe",
        recipe = "fairy-sulfuric-acid-capsule"
      },
      {
        type = "unlock-recipe",
        recipe = "fairy-gas-carbon-dioxide-capsule"
      },
      {
        type = "unlock-recipe",
        recipe = "fairy-water-yellow-waste-capsule"
      },
      {
        type = "unlock-recipe",
        recipe = "fairy-water-mineralized-capsule"
      },
      {
        type = "unlock-recipe",
        recipe = "fairy-crystal-slurry-capsule"
      },
      {
        type = "unlock-recipe",
        recipe = "fairy-mineral-sludge-capsule"
      },
      {
        type = "unlock-recipe",
        recipe = "fairy-oxygen-capsule-to-fluid"
      },
      {
        type = "unlock-recipe",
        recipe = "fairy-water-purified-capsule-to-fluid"
      },
      {
        type = "unlock-recipe",
        recipe = "fairy-sulfuric-acid-capsule-to-fluid"
      },
      {
        type = "unlock-recipe",
        recipe = "fairy-gas-carbon-dioxide-capsule-to-fluid"
      },
      {
        type = "unlock-recipe",
        recipe = "fairy-water-yellow-waste-capsule-to-fluid"
      },
      {
        type = "unlock-recipe",
        recipe = "fairy-water-mineralized-capsule-to-fluid"
      },
      {
        type = "unlock-recipe",
        recipe = "fairy-crystal-slurry-capsule-to-fluid"
      },
      {
        type = "unlock-recipe",
        recipe = "fairy-mineral-sludge-capsule-to-fluid"
      }
    },
    unit =
    {
      count = 200,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1}
      },
      time = 30
    },
    order = "d-a-b"
  },
}
)

