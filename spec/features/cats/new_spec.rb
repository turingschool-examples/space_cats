require 'rails_helper'

describe 'Create a cat' do
  it 'I can create a cat' do
    visit '/cats'

    click_on "Create a Cat"

    expect(current_path).to eq("/cats/new")

    fill_in "Name", with: "Grumpy"

    click_on "Create Cat"

    expect(current_path).to eq("/cats")
    expect(page).to have_content("Grumpy")
  end
end
