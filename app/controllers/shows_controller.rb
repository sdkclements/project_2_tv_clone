class ShowsController < ApplicationController

  def index
    @shows = Show.all
  end

  def new
    @show = Show.new
  end
  def show
    @show = Show.find(show_params)
  end

  def create
    @show = Show.create!(show_params)
    redirect_to shows_path(@show)
  end

  

  def edit
    @show = Show.find(params[:id])
  end


  def update
    @show = Show.find(params[:id])
    @show.update(show_params)
    redirect_to shows_path
  end

  def destroy
    @show = Show.find(params[:show_id]) 
    @show.destroy
    redirect_to :root
  end

  private
  def show_params
    params.require(:show).permit(:name, :rating, :img_url, :info)
  end
end
