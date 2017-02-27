class EpisodesController < ApplicationController


   def index
  	@episodes = Episode.all
  end

  def new
  	@episode = Episode.new
  end

  def create
    @episode = Episode.create!(params[:episode])
  end

  def episode
  	@episode = Episode.find(params[:id])
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
  redirect_to :root
  end
end
