local main = require("src.init")

describe("main module", function()
  it("should add two numbers", function()
    assert.are.equal(main.add(2, 3), 5)
  end)

  it("should add two negative numbers", function()
    assert.are.equal(main.add(-2, -3), -5)
  end)
end)
