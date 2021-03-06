
data:extend({
  {
    type = "technology",
    name = "logistic-train-network",
    icon = "__LogisticTrainNetwork__/thumbnail.png",
    icon_size = 144,
    prerequisites = {"automated-rail-transportation", "circuit-network"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "logistic-train-stop"
      }
    },
    unit =
    {
      count = 300,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1}
      },
      time = 30
    },
    order = "c-g-c"
  }
})

-- support for cargo ship ports
if mods["cargo-ships"] then
  table.insert( data.raw["technology"]["logistic-train-network"].effects,
    {
        type = "unlock-recipe",
        recipe = "ltn-port"
    } )
end
