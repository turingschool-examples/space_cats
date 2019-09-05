require 'rails_helper'

describe 'Create a cat' do
  it 'I can edit a cat' do
    grumpy = Cat.create(name: "Grumpy")
    visit "/cats/#{grumpy.id}"

    click_on "Edit Cat"

    expect(current_path).to eq("/cats/#{grumpy.id}/edit")

    fill_in "Name", with: "Grump"

    click_on "Update Cat"

    expect(current_path).to eq("/cats/#{grumpy.id}")
    expect(page).to have_content("Grump")
    expect(page).to_not have_content("Grumpy")
  end
end
