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

  it "shows the user a specific shelter and that shelter's details"
    happy_tails = Shelter.create(name: "Happy Tails Animal Rescue", address: "123 Happy Lane", city: "Waggsville", state: "Meows", zip: "12345")

    visit "/shelters/:id"

    expect(page).to have_content(happy_tails.name)
    expect(page).to have_content(happy_tails.address)
    expect(page).to have_content(happy_tails.city)
    expect(page).to have_content(happy_tails.state)
    expect(page).to have_content(happy_tails.zip)
end
