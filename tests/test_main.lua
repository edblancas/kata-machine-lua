local main = require("src.main")

describe("main module", function()
  it("should add two numbers", function()
    assert.is_equal(main.add(2, 3), 5)
  end)

  it("should add two negative numbers", function()
    assert.is_equal(main.add(-2, -3), 5)
  end)
end)
