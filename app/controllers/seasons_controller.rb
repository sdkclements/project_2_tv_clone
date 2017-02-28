class SeasonsController < ApplicationController
  

   def index
  	@seasons = Season.all
  end

  def new
  	@season = Season.new
  end

  def create
    @season = Season.create!(params[:season])
  end

  def season
  	@season = Season.find(params[:id])
  end
  def edit
  @season = Season.find(params[:id])
  end


  def update
    @season = Season.update(params[:id])
    redirect_to season_path
  end

  def destroy
  @season = Season.find(params[:id])
  @season.destroy
  redirect_to season_path
  end
end
