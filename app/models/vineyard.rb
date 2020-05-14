class Vineyard < ApplicationRecord
    has_one_attached :main_image
    validates_presence_of :title, :about, :main_image
end
