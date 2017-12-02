require 'rails_helper'
describe Image do
  before :each do
    @image = Image.create(title: 'Crazy Doggy?', url: "https://cbsnews1.cbsistatic.com/hub/i/2015/06/27/93b1a34a-03fd-4c7e-9ed2-7cf46eccbe63/ugliest-dog-2015-478696466.jpg")
  end
  it 'shows the title on the image page' do
    visit image_path(@image)
    expect(page).to have_content(@image.title)
  end
  it 'creates rating with the correct rating id' do
    visit image_path(@image)
    click_on 'add-rating-link'
    expect(page).to have_content "New Rating for #{@image.title}"
  end

  it 'creates rating that adds correctly to images total rating' do
      visit image_path(@image)
      # note that i've introduced an id here to make the test less brittle
      # save_and_open_page
      click_on 'add-rating-link'
      expect(page).to have_content "New Rating for #{@image.title}"
      fill_in 'Value', with: '12'
      # https://relishapp.com/rspec/rspec-expectations/docs/built-in-matchers/change-matcher
      expect { click_on 'Create Rating' }.to change { @image.ratings.count }.by(1)
      expect(page).to have_content('12')
    end


end
