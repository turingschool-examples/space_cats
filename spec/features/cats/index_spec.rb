require 'rails_helper'


describe 'Cats Index Page' do
  it 'has a link to add a cat' do
    visit '/cats'
    expect(page).to have_link ("Create a Cat")
  end
end
