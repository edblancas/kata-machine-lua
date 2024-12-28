function linear_search(array, needle)
  for i = 1, #array do
    if array[i] == needle then
      return true
    end
  end
end

return linear_search
