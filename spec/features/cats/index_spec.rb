require 'rails_helper'


describe 'Cats Index Page' do
  it 'has a link to add a cat' do
    visit '/cats'
    expect(page).to have_link ("Create a Cat")
  end

  it 'has all cats listed on the page' do
    cat_1 = Cat.create(name:"Grumpy")
    cat_2 = Cat.create(name:"Mark")
    cat_2 = Cat.create(name:"Peter")

    visit '/cats'

    expect(page).to have_content("Grumpy")
    expect(page).to have_content("Mark")
    expect(page).to have_content("Peter")
  end
end
