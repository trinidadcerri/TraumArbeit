class FavoritesController < ApplicationController
  before_action :set_favorite, only: [:show, :destroy]

  def index
    @favorites = Favorite.where(user_id: current_user.id)
  end

  def show
  end

  def create
    @favorite = Favorite.new
    @job = Job.find(params[:job_id])
    @favorite.job = @job
    @favorite.user = current_user
    if @favorite.save
      redirect_to @job
    else
      render 'jobs/show', status: :unprocessable_entity
    end
  end

  def destroy
    @favorite = Favorite.find(params[:id])
    @job = @favorite.job_id
    if current_user == @favorite.user
      @favorite.destroy
      redirect_to job_path(@job), notice: 'Job position was successfully destroyed.'
    else
      redirect_to favorites_path, alert: 'You are not authorized to perform this action.'
    end
  end

  private

  def favorite_params
    params.require(:favorite)
  end

  def set_favorite
    @favorite = Favorite.find(params[:id])
  end
end
