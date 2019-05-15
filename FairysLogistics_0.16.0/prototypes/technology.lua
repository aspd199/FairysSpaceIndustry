data:extend(
{
  {
    type = "technology",
    name = "fairy-logistic-system",
    icon = "__FairysLogistics__/graphics/technology/fairy-logistic-system.png",
    icon_size = 128,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "fairy-logistic-chest-passive-provider"
      },
      {
        type = "unlock-recipe",
        recipe = "fairy-logistic-chest-active-provider"
      },
      {
        type = "unlock-recipe",
        recipe = "fairy-logistic-chest-storage"
      },
      {
        type = "unlock-recipe",
        recipe = "fairy-logistic-chest-requester"
      }
    },
    prerequisites = {"logistic-system"},
    unit =
    {
      count = 300,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"production-science-pack", 1},
        {"high-tech-science-pack", 1}
      },
      time = 30
    },
    order = "c-k-e",
  }
}
)


if data.raw["technology"]["steel-processing"] then
    table.insert(data.raw["technology"]["steel-processing"].effects, {type = "unlock-recipe", recipe = "fairy-steel-chest"})
end
