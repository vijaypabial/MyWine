class WineListsItemsController < ApplicationController

    def index
        @wines = current_user.wines
    end

end