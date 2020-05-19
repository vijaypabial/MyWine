class WineListsItemsController < ApplicationController
before_action :wine, only: [:index, :create]
    def create
       if [@wines.ids].each.include? "params[:wine_id]"
         puts "This item exists already"
       else
         current_user.wine_lists_items.create!(wine_id: params[:wine_id])
         redirect_to
       end
    end

    def index
        @wines = current_user.wines
    end

    private

    def wine
        @wines = current_user.wines
    end
        
       
end