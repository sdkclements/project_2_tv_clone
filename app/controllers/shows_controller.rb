class ShowsController < ApplicationController
  
  def index
  	@shows = Show.all
  end

  def new
  	@show = Show.new
  end

  def create
    @show = Show.create!(params[:show])
  end

  def show
  	@show = Show.find(params[:id])
  end
  
  def edit
  @show = Show.find(params[:id])
  end


  def update
    @show = Show.update(params[:id])
    redirect_to shows_path
  end

  def destroy
  @show = Show.find(params[:id])
  @show.destroy
  redirect_to shows_path
  end

  
end
