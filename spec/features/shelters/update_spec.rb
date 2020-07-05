require 'rails_helper'

RSpec.describe "shelter update page", type: :feature do
  it "lets a user update a shelter" do
    visit "/shelters"

    petaluma = Shelter.create(name: "Petaluma Shelter")

    expect(page).to have_selector(:link_or_button, 'Update Shelter')
    click_on 'Update Shelter'

    expect(page).to have_current_path('/shelters/:id/edit')
    expect(page).to have_field('Name')
    expect(page).to have_field('Address')
    expect(page).to have_field('City')
    expect(page).to have_field('State')
    expect(page).to have_field('Zip')

    new = {name: 'Squishy Pets Rescue', address: '1010 Squish Lane', city: 'Squishsquish', state: 'Soft', zip: '10203'}

    fill_in 'Name', with: new[:name]
    fill_in 'Address', with: new[:address]
    fill_in 'City', with: new[:city]
    fill_in 'State', with: new[:state]
    fill_in 'Zip', with: new[:zip]

    click_on 'Update Shelter'
  end
end
