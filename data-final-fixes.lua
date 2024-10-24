
for name, furnace in pairs(data.raw["furnace"]) do
    local cooking_enabled = false
    local smelting_enabled = false
    for _, category in pairs(furnace.crafting_categories) do
        if category == "cooking" then
            cooking_enabled = true
        end
        if category == "smelting" then
            smelting_enabled = true
        end
    end
    if ((not cooking_enabled) and smelting_enabled) then
        table.insert(data.raw["furnace"][name].crafting_categories, "cooking")
    end
end
