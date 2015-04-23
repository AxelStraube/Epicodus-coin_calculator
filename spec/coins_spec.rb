require('rspec')
require('coins')

describe('coins') do
  it("returns the amount of cents entered by user in change (quarters, dimes, nickels, pennies)") do
    expect((116).coins).to eq("Quarters: 4, Dimes: 1, Nickels: 1, Pennies: 1")
  end
end
