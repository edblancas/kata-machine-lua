local crystal_balls = require('src.crystal_balls')

describe('crystal ball', function()
  it('should find when the crystal ball brokes', function()
    local idx = math.random(10000)
    local data = {}
    for i = 1, 10000 do
      if i >= idx then
        table.insert(data, true)
      else
        table.insert(data, false)
      end
    end

    assert.are.equal(idx, crystal_balls(data))
  end)
end)
