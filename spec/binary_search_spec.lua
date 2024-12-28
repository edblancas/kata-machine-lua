local bin_search = require('src.binary_search')

describe('binary search', function()
  it('should find the needle in the haystack', function()
    assert.are.equal(bin_search({ 3, 4, 5, 6, 77 }, 5), true)
  end)

  it('should not find the needle in the haystack', function()
    assert.are.equal(bin_search({ 3, 4, 5, 6, 77 }, 9), false)
  end)
end)
