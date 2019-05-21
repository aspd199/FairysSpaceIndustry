function capsuleitem(n, o)
data:extend(
{
  {
    type = "item",
    name = "fairy-"..n.."-capsule",
    icon = "__FairysCapsule__/graphics/icons/fairy-"..n.."-capsule.png",
    icon_size = 32,
    subgroup = "fairy-capsule",
    order = o.."[fairy-"..n.."-capsule]",
    stack_size = 500
  }
}
)
end
capsuleitem("oxygen", "a")
capsuleitem("water-purified", "b")
capsuleitem("sulfuric-acid", "c")
capsuleitem("gas-carbon-dioxide", "d")
capsuleitem("water-yellow-waste", "e")
capsuleitem("water-mineralized", "f")
capsuleitem("crystal-slurry", "g")
capsuleitem("mineral-sludge", "h")

