local test = require("projector").projects_choicer

local busted = require("busted")
local describe = busted.describe
local it = busted.it
local assert = busted.assert

describe("projector basic tests", function()
  it("projects choicer", function()
    local result = test()
    assert.is_true(result)
  end)
end)
