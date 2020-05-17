class WineListsItem < ApplicationRecord
  belongs_to :user
  belongs_to :wine

  def self.wines_for_current_user(current_user)
    wines =[]
    WineListItem.where(user_id:current_user.id).each do |wine_list_item|
    @wines.push(Wine.find(wine_list_item.wine_id))
    end
  end
 
end
