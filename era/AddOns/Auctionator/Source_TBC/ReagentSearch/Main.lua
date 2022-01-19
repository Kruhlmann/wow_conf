function Auctionator.ReagentSearch.DoTradeSkillReagentsSearch()
  local recipeIndex = GetTradeSkillSelectionIndex()
  local recipeLink =  GetTradeSkillItemLink(recipeIndex)

  local items = {Auctionator.Utilities.GetNameFromLink(recipeLink)}

  for reagentIndex = 1, GetTradeSkillNumReagents(recipeIndex) do
    local reagentName = GetTradeSkillReagentInfo(recipeIndex, reagentIndex)
    table.insert(items, reagentName)
  end

  local alternateVerb = select(5, GetTradeSkillInfo(recipeIndex))

  if alternateVerb == ENSCRIBE then
    -- Enchanting names are pretty unique, and we want to be able to find the
    -- enchantment (which has a name that isn't exactly recipeInfo.name)
    -- Hence we do a non-exact search.
    Auctionator.API.v1.MultiSearch(AUCTIONATOR_L_REAGENT_SEARCH, items)
  else
    -- Exact search to avoid spurious results, say with "Shrouded Cloth"
    Auctionator.API.v1.MultiSearchExact(AUCTIONATOR_L_REAGENT_SEARCH, items)
  end
end

function Auctionator.ReagentSearch.GetSkillReagentsTotal()
  local recipeIndex = GetTradeSkillSelectionIndex()
  local recipeLink =  GetTradeSkillItemLink(recipeIndex)

  local total = 0

  for reagentIndex = 1, GetTradeSkillNumReagents(recipeIndex) do
    local multiplier = select(3, GetTradeSkillReagentInfo(recipeIndex, reagentIndex))
    local link = select(1, GetTradeSkillReagentItemLink(recipeIndex, reagentIndex))
    if link ~= nil then
      local unitPrice

      local dbKey = Auctionator.Utilities.BasicDBKeyFromLink(link)
      if AUCTIONATOR_VENDOR_PRICE_CACHE[dbKey] ~= nil then
        unitPrice = AUCTIONATOR_VENDOR_PRICE_CACHE[dbKey]
      else
        unitPrice = Auctionator.API.v1.GetAuctionPriceByItemLink(AUCTIONATOR_L_REAGENT_SEARCH, link)
      end

      if unitPrice ~= nil then
        total = total + multiplier * unitPrice
      end
    end
  end

  return total
end

function Auctionator.ReagentSearch.GetAHProfit()
  local recipeIndex = GetTradeSkillSelectionIndex()
  local recipeLink =  GetTradeSkillItemLink(recipeIndex)

  local currentAH = Auctionator.API.v1.GetAuctionPriceByItemLink(AUCTIONATOR_L_REAGENT_SEARCH, recipeLink)
  if currentAH == nil then
    currentAH = 0
  end
  local toCraft = Auctionator.ReagentSearch.GetSkillReagentsTotal()

  return math.max(0, math.floor(currentAH * 0.95 - toCraft))
end
