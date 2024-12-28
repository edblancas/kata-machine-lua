local function crystal_balls(breaks)
  local jmp_amount = math.ceil(math.sqrt(#breaks))

  local i
  for j = 1, #breaks, jmp_amount do
    if breaks[j] then
      i = j
      break
    end
  end

  i = i - jmp_amount

  for _ = 0, jmp_amount do
    if i > #breaks then
      break
    end
    if breaks[i] then return i end
    i = i + 1
  end

  return -1
end

return crystal_balls
