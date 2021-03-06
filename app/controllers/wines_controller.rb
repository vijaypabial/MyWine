class WinesController < ApplicationController
  before_action :set_wine, only: [:show, :edit, :update, :destroy, :toggle_status]
  before_action :authenticate_user!, except: [:show, :index]
    def index
        @wines = Wine.all
        @page_title = "Wines"
    end

    def new
        @wine=Wine.new
    end

    def edit
    end

    def show
      @page_title = @wine.title
    end

    def destroy
      @wine.destroy
        respond_to do |format|
        format.html { redirect_to wines_url, notice: 'Item was successfully removed.' }
        format.json { head :no_content }
        end
    end

    def toggle_status
      if @wine.draft?
          @wine.published! 
        elsif
          @wine.published?
          @wine.draft!
      end
        redirect_to wines_path, notice: "Status has been updated."
    end

    def create
      @wine = Wine.new(wine_params)
      respond_to do |format|
        if @wine.save
          format.html { redirect_to wines_path, notice: 'Item was successfully created.' }
        else
          format.html { render :new }
        end
      end
    end

    def update
      respond_to do |format|
        if @wine.update(wine_params)
         format.html { redirect_to wines_path, notice: 'Item was successfully updated.' }
        else
          format.html { render :edit }
        end
      end
    end

    private
    def set_wine
      @wine = Wine.friendly.find(params[:id])
    end

    def wine_params
      params.require(:wine).permit(:title,:variety, :description, :wine_image,:price, :vineyard_id)
    end
end
