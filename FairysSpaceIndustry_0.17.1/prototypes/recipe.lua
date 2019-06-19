data:extend(
{
  {
    type = "recipe",
    name = "fairy-solar-panel",
    enabled = false,
    energy_required = 15,
    ingredients =
    {
      {"solar-panel", 1},
      {"electronic-circuit", 5},
      {"steel-plate", 20},
      {"copper-plate", 40}
    },
    result = "fairy-solar-panel"
  },
  {
    type = "recipe",
    name = "fairy-electric-furnace",
    enabled = false,
    energy_required = 15,
    ingredients =
    {
      {"electric-furnace", 1},
      {"low-density-structure", 100},
      {"advanced-circuit", 20}, 
      {"steel-plate", 50},
      {"pipe", 20}
    },
    result = "fairy-electric-furnace"
  }
}
)

--[[
function packrecipe(i, n, o, p)
data:extend(
{
  {
    type = "recipe",
    name = "fairy-"..n,
    enabled = false,
    category = "crafting",
    energy_required = 5,
    ingredients =
    {
      {i, 1}
    },
    result_count = 1,
    result = n,
    icon = p,
    subgroup = "fairy-pack",
    order = o
  }
}
)
end
packrecipe("alien-artifact-red", "science-pack-1", "a", "__base__/graphics/icons/science-pack-1.png")
packrecipe("alien-artifact-green", "science-pack-2", "b", "__base__/graphics/icons/science-pack-2.png")
packrecipe("alien-artifact-blue", "science-pack-3", "c", "__base__/graphics/icons/science-pack-3.png")
--packrecipe("alien-artifact-black", "military-science-pack", "d", "__base__/graphics/icons/military-science-pack.png")
packrecipe("alien-artifact-purple", "production-science-pack", "e", "__base__/graphics/icons/production-science-pack.png")
packrecipe("alien-artifact-yellow", "high-tech-science-pack", "f", "__base__/graphics/icons/high-tech-science-pack.png")
--packrecipe("alien-artifact-white", "space-science-pack", "g", "__base__/graphics/icons/space-science-pack.png")
--packrecipe("alien-artifact", "pack", "h", "????/graphics/icons/science-pack.png")
--packrecipe("alien-artifact-orange", "pack", "i", "????/graphics/icons/science-pack.png")
]]
