class FeedController < ApplicationController
  before_action only: [:show]

  def show
    images = Image.all
    imageRatings = Hash.new

    images.each do |image|
      imageRatings[image] = Rating.where(image_id: Image.find(image.id)).sum(:value) 
    end

    # Image with best image should be first
    @imageRatings = imageRatings.sort_by { |id, rating| -rating }
  end

end
