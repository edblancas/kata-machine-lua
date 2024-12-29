local bubble_sort = require('src.bubble_sort')

describe('bubble sort', function()
  it('should sort the array', function()
    assert.are.same({ 1, 2, 3, 4, 5 }, bubble_sort({ 2, 1, 3, 4, 5 }))
  end)
end)
