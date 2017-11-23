class AddImageRefToRatings < ActiveRecord::Migration[5.1]
  def change
    add_reference :ratings, :image, foreign_key: true
  end
end
