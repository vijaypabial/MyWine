class Vineyard < ApplicationRecord

    has_one_attached :main_image

    has_many :wines, dependent: :destroy

    validates_presence_of :title, :about, :main_image
end
