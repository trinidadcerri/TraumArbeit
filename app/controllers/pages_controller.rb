class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def employer_index
    @users = User.all
  end

  def candidates_show
    @user = User.find(params[:id])
  end
end
