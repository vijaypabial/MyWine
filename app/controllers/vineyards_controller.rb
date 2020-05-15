class VineyardsController < ApplicationController
  before_action :set_vineyard, only: [:show, :edit, :update, :destroy]

  # GET /vineyards
  # GET /vineyards.json
  def index
    @vineyards = Vineyard.all
  end

  # GET /vineyards/1
  # GET /vineyards/1.json
  def show
  end

  # GET /vineyards/new
  def new
    @vineyard = Vineyard.new
  end

  # GET /vineyards/1/edit
  def edit
  end

  # POST /vineyards
  # POST /vineyards.json
  def create
    @vineyard = Vineyard.new(vineyard_params)

    respond_to do |format|
      if @vineyard.save
        format.html { redirect_to @vineyard, notice: 'Vineyard was successfully created.' }
        format.json { render :show, status: :created, location: @vineyard }
      else
        format.html { render :new }
        format.json { render json: @vineyard.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vineyards/1
  # PATCH/PUT /vineyards/1.json
  def update
    respond_to do |format|
      if @vineyard.update(vineyard_params)
        format.html { redirect_to @vineyard, notice: 'Vineyard was successfully updated.' }
        format.json { render :show, status: :ok, location: @vineyard }
      else
        format.html { render :edit }
        format.json { render json: @vineyard.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vineyards/1
  # DELETE /vineyards/1.json
  def destroy
    @vineyard.destroy
    respond_to do |format|
      format.html { redirect_to vineyards_url, notice: 'Vineyard was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vineyard
      @vineyard = Vineyard.friendly.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def vineyard_params
      params.require(:vineyard).permit(:title, :about, :main_image)
    end
end
