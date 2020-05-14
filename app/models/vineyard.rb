class Vineyard < ApplicationRecord
    has_many :wines
    validates_presence_of :title, :about, :main_image
end
