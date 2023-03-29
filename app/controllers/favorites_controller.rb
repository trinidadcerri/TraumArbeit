class FavoritesController < ApplicationController
  before_action :set_favorite, only: [:show, :destroy]

  def index
    @favorites = Favorite.all
  end

  def show
  end

  def create
    @favorite = Favorite.new
    @job = Job.find(params[:job_id])
    @favorite.job = @job
    @favorite.user = current_user
    if @favorite.save
      redirect_to favorites_path
    else
      render 'jobs/show', status: :unprocessable_entity
    end
  end

  def destroy
    @favorite.destroy
  end

  private

  def favorite_params
    params.require(:favorite)
  end

  def set_favorite
    @favorite = Favorite.find(params[:id])
  end
end
