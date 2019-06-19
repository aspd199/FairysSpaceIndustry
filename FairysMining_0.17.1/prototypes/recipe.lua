data:extend(
{
  {
    type = "recipe",
    name = "fairy-bucketw",
    energy_required = 15,
    enabled = false,
    ingredients =
    {
      {"concrete", 2000},
      {"titanium-plate", 500},
      {"advanced-circuit", 25},
      {"express-transport-belt", 100},
      {"electric-engine-unit", 100}
    },
    result = "fairy-bucketw"
  }
}
)

function slagrecipe(i, n, o)
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
    result = "slag",
    icon = "__angelsrefining__/graphics/icons/slag.png",
    icon_size = 32,
    subgroup = "fairy-slag",
    order = o
  }
}
)
end
slagrecipe("alien-artifact-red", "slag-red", "a")
slagrecipe("alien-artifact-green", "slag-green", "b")
slagrecipe("alien-artifact-blue", "slag-blue", "c")
slagrecipe("alien-artifact-purple", "slag-purple", "d")
slagrecipe("alien-artifact-yellow", "slag-yellow", "e")
-- slagrecipe("alien-artifact-white", "slag-white", "f")
slagrecipe("alien-artifact", "slag-normal", "g")
slagrecipe("alien-artifact-orange", "slag-orange", "h")
