require 'rails_helper'

describe 'Show a cat' do
  it 'I can show a cat' do
    grumpy = Cat.create(name: "Grumpy")
    visit "/cats/#{grumpy.id}"

    expect(page).to have_content("Grumpy")
  end
end
