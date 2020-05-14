class Vineyard < ApplicationRecord
    has_many :wines, dependent: :destroy
    validates_presence_of :title, :about, :main_image
end
