require 'rails_helper'

RSpec.describe "shelter index page", type: :feature do
  it "lets a user add a shelter" do
    visit "/shelters"

    expect(page).to have_selector(:link_or_button, 'New Shelter')
    click_on 'New Shelter'

    expect(page).to have_current_path('/shelters/new')
    expect(page).to have_selector(:link_or_button, 'Create Shelter')
    expect(page).to have_field('Name')
    expect(page).to have_field('Address')
    expect(page).to have_field('City')
    expect(page).to have_field('State')
    expect(page).to have_field('Zip')

    new = {name: 'Tiny Animal Rescue', address: '321 Furry Feet Blv', city: 'My City', state: 'My State', zip: '47449'}

    fill_in 'Name', with: new[:name]
    fill_in 'Address', with: new[:address]
    fill_in 'City', with: new[:city]
    fill_in 'State', with: new[:state]
    fill_in 'Zip', with: new[:zip]

    click_on 'Create Shelter'

    expect(page).to have_current_path('/shelters')
    expect(page).to have_content(new[:name])
  end
end
