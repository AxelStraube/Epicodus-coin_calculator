require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application

describe('the coin combo path', {:type => :feature}) do
  it('processes user change amount and returns number of each coin as a string') do
    visit('/')
    fill_in('change', :with => 116)
    click_button('Calculate')
    expect(page).to have_content('Quarters: 4, Dimes: 1, Nickels: 1, Pennies: 1')
  end
end
