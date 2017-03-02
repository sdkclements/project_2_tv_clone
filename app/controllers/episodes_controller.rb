class EpisodesController < ApplicationController


   def index
    @show = Show.find(params[:show_id])
    @season = Season.find(params[:season_id])
  	@episodes = @season.episodes.all
  end

  def new
  	@episode = Episode.new
    @season = Season.find(params[:season_id])
    @show = Show.find(params[:show_id])
  end

 

  def show
  	@show = Show.find(params[:show_id])
    @season = Season.find(params[:season_id])
    @episode = @season.episodes.find(params[:id])
  end

   def create
    @show = Show.find(params[:show_id])
    @season= @show.seasons.find(params[:season_id])
    @episode = @season.episodes.create(episode_params)
    redirect_to show_season_episodes_path(@show)
  end
  
  def edit
  @episode = Episode.find(params[:id])
  end


  def update
    @episode = Episode.update(params[:id])
    redirect_to episode_path
  end

  def destroy
  @episode = Episode.find(params[:id])
  @episode.destroy
  redirect_to season_path(@episode.season_id)
  end

  private

  def episode_params
    params.require(:episode).permit(:name, :epnumb, :link_url)
  end
end
