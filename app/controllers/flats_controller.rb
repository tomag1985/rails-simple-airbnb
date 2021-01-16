class FlatsController < ApplicationController
  before_action :find_flat, only: [:show, :update, :edit]
  
  def new
    
  end

  def create
  end

  def edit; end

  def destroy
  end

  def index
    @flats = Flat.all
  end

  def show; end

  def update
    @flat.update(flat_params)
    redirect_to flat_path(@flat)
  end

  private

  def find_flat
    @flat = Flat.find(params[:id])
  end

  def flat_params
    params.require(:flat).permit(:name, :address, :description, :price_per_night, :number_of_guests)
  end
end