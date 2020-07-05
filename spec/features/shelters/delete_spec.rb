require 'rails_helper'

RSpec.describe "delete shelter" do
  it "allows user to delete shelter" do
    petaluma = Shelter.create(name: "Petaluma Shelter")
    visit "shelters/#{petaluma.id}"
    expect(page).to have_selector(:link_or_button, "Delete Shelter")
    click_on "Delete Shelter"
    expect(page).not_to have_content(petaluma.name)
  end
end
