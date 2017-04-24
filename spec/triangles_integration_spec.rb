require "capybara/rspec"
require "./app"

Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe("check your triangle", {:type => :feature}) do
  it("processes the user input and returns type of triangle") do
    visit("/")
    fill_in("side_a", :with => 2)
    fill_in("side_b", :with => 3)
    fill_in("side_c", :with => 4)
    click_button("what am i?")
    expect(page).to have_content("it is scalene")
  end
  it("processes the user input and returns type of triangle") do
    visit("/")
    click_button("what am i?")
    expect(page).to have_content("it is not a triangle!")
  end
end
