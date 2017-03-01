class SeasonsController < ApplicationController

   def index
    @show = Show.find(params[:show_id])
  	@seasons = @show.seasons.all
  end

  def new
  	@season = Season.new
    @show = Show.find(params[:show_id])
  end

  def show
    @season = Season.find(params[:id])
  end

  def create
    @show = Show.find(params[:show_id])
    @season = @show.seasons.create!(season_params)
    redirect_to show_seasons_path(@show)
  end

  

  def edit
  @season = Season.find(params[:id])
  end


  def update
    @show = Show.find(params[:show_id])
    @season = @show.seasons.find(season_params)
    @season.update(season_params)
    redirect_to show_season_path(@season)
  end

  def destroy
  # @show = Show.find(params[:show_id])
  @season = Season.find(params[:id])
  @season.destroy
  redirect_to show_seasons_path
  end

  private
  def season_params
    params.require(:season).permit(:name, :numb)
  end

end
