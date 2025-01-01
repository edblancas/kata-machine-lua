local M = {}

function M.add(a, b)
  return a + b
end

function M:test(foo)
  print('self=', self, 'foo=', foo)
end

-- is like lua inserts the 2 arg before foo, so self is 2
M.test(2)
M:test(3)

-- just one slot between 1: and slot
print("1: ", table.unpack({'hello', 'world', '!'}), '<lost>')

return M

-- throws error
-- print('this is not printed')
