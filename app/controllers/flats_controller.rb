class FlatsController < ApplicationController
  before_action :find_flat, only: [:show, :edit]
  
  def new
    
  end

  def create
  end

  def edit

  end

  def destroy
  end

  def index
    @flats = Flat.all
  end

  def show; end

  private

  def find_flat
    @flat = Flat.find(params[:id])
  end

end
