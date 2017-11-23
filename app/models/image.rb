class Image < ApplicationRecord
  has_many :ratings, dependent: :destroy
end
