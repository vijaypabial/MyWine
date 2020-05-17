class Vineyard < ApplicationRecord

    has_one_attached :main_image

    has_many :wines, dependent: :destroy

    validates_presence_of :title, :about, :main_image

    def self.wines_for_current_vineyard(vineyard)
        wines =[]
        Vineyard.where(vineyard_id:vineyard.id).each do |wine_list|
        @wines.push(Wine.find(wine_list.wine.id))
        end
    end
end
