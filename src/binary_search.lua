local function binary_search(haystack, needle)
  local lo, hi = 1, #haystack

  while lo <= hi do
    local m = math.floor((lo + hi) / 2)
    local val = haystack[m]
    if val == needle then
      return true
    elseif val < needle then
      lo = m + 1
    elseif val > needle then
      hi = m - 1
    end
  end

  return false
end

return binary_search
