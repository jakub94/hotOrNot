require 'rails_helper'

describe Image do
  before :each do
    @badImage = Image.create(title: 'Worst', url: "http://static.manilasites.com/images/doc/samdog.jpg")
    @normalImage = Image.create(title: 'Normal', url: "https://static1.squarespace.com/static/57851f0af7e0abff17796539/t/58f5014f1e5b6cb4e1069d08/1492451682024/")
    @bestImage = Image.create(title: 'Best', url: "http://i.huffpost.com/gadgets/slideshows/3233/slide_3233_156651_large.jpg?1287510734167")

    @normalImage.ratings.create(value: 1)
    @badImage.ratings.create(value: -1)
    @bestImage.ratings.create(value: 1)
    @bestImage.ratings.create(value: 1)

  end
  it 'shows the titles of images' do
    visit root_path
    expect(page).to have_content(@badImage.title)
    expect(page).to have_content(@normalImage.title)
    expect(page).to have_content(@bestImage.title)
  end

  it 'has main section with id' do
    visit root_path
    expect(page).to have_selector('#mainSection', count: 1)
  end

  it 'has main section with one subsection per image' do
    visit root_path
    expect(page).to have_selector('.imageSection', count: 3, class: "imageSection")
  end

  it 'image sections should be ordered by rating of the images' do
    visit root_path

    expect(page).to have_selector("#mainSection section:nth-child(1)", id: "imageSection_#{@bestImage.id}")
    expect(page).to have_selector("#mainSection section:nth-child(2)", id: "imageSection_#{@normalImage.id}")
    expect(page).to have_selector("#mainSection section:nth-child(3)", id: "imageSection_#{@badImage.id}")
    #save_and_open_page
  end

end
