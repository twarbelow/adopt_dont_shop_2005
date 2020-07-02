require 'rails_helper'

RSpec.describe "shelter index page", type: :feature do
  it "shows the user the name of each shelter in the system" do
    petaluma = Shelter.create(name: "Petaluma Shelter")
    happy_tails = Shelter.create(name: "Happy Tails Animal Rescue")
    chickens = Shelter.create(name: "WeSaveChickens.com")

    visit "/shelters"

    expect(page).to have_content(petaluma.name)
    expect(page).to have_content(happy_tails.name)
    expect(page).to have_content(chickens.name)
  end
end
