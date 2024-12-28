local linear_search = require('src.linear_search')

describe('linear search', function()
  it('should find the neede in the haystack', function()
    assert.are.equal(linear_search({ 1, 2, 3, 4 }, 4), true)
  end)
end)
