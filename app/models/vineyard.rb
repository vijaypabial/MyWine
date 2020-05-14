class Vineyard < ApplicationRecord
    validates_presence_of :title, :about, :main_image
end
