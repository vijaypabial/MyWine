class WinesController < ApplicationController
    def index
        @wines = Wine.all
    end
    def new
        @wine=Wine.new
    end
    def create
        @wine = Wine.new(params.require(:wine).permit(:title,:variety, :description, :wine_image,:price))
    
        respond_to do |format|
          if @wine.save
            format.html { redirect_to wines_path, notice: 'Item was successfully created.' }
          else
            format.html { render :new }
          end
        end
      end
      def edit
        @wine = Wine.find(params[:id])
      end
      def update
        @wine = Wine.find(params[:id])
        respond_to do |format|
          if @wine.update(params.require(:wine).permit(:title,:variety, :description, :wine_image,:price))
            format.html { redirect_to wines_path, notice: 'Item was successfully updated.' }
          else
            format.html { render :edit }
          end
        end
      end
end
