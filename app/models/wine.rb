class Wine < ApplicationRecord
  belongs_to :vineyard

  has_many :wine_lists_item, dependent: :destroy

  has_one_attached :wine_image

  extend FriendlyId
  friendly_id :title, use: :slugged

  enum status: {draft: 0, published: 1}
  
  validates_presence_of :title, :variety, :description, :wine_image, :price


end
