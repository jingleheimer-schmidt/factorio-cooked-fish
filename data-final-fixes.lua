for key, furnace in pairs(data.raw.furnace) do
  local cooking_enabled = false
  for each, category in pairs(furnace.crafting_categories) do
    if category == "cooking" then
      cooking_enabled = true
    end
  end
  if not cooking_enabled then
    table.insert(data.raw.furnace[key].crafting_categories, "cooking")
  end
end
