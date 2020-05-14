class Wine < ApplicationRecord
  belongs_to :vineyard
  enum status: {draft: 0, published: 1}
    extend FriendlyId
  friendly_id :title, use: :slugged
  validates_presence_of :title, :variety, :description, :wine_image, :price


end
