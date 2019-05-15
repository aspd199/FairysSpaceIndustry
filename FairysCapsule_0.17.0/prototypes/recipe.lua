function capsulerecipe(n, o, p)
data:extend(
{
  {
    type = "recipe",
    name = "fairy-"..n.."-capsule",
    enabled = false,
    category = "crafting-with-fluid",
    energy_required = 5,
    ingredients =
    {
      {"plastic-bar", 1},
      {type = "fluid", name = n, amount = 10000}
    },
    result_count = 100,
    result = "fairy-"..n.."-capsule"
  },
  {
    type = "recipe",
    name = "fairy-"..n.."-capsule-to-fluid",
    enabled = false,
    category = "crafting-with-fluid",
    energy_required = 5,
    ingredients =
    {
      {"fairy-"..n.."-capsule", 1}
    },
    results = 
    {
      {type = "fluid", name = n, amount = 100}
    },
    icon = p,
    icon_size = 32,
    subgroup = "fairy-fluid",
    order = o
  }
}
)
end
capsulerecipe("oxygen", "a", "__bobplates__/graphics/icons/oxygen.png")
capsulerecipe("water-purified", "b", "__angelsrefining__/graphics/icons/water-purified.png")
capsulerecipe("sulfuric-acid", "c", "__base__/graphics/icons/fluid/sulfuric-acid.png")
capsulerecipe("gas-carbon-dioxide", "d", "__angelspetrochem__/graphics/icons/gas-carbon-dioxide.png")
capsulerecipe("water-yellow-waste", "e", "__angelsrefining__/graphics/icons/water-yellow-waste-purification.png")
capsulerecipe("water-mineralized", "f", "__angelsrefining__/graphics/icons/water-mineralized.png")
capsulerecipe("crystal-slurry", "g", "__angelsrefining__/graphics/icons/crystal-slurry.png")
capsulerecipe("mineral-sludge", "h", "__angelsrefining__/graphics/icons/mineral-sludge.png")
