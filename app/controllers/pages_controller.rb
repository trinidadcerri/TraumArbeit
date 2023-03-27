class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def candidatesindex
    @users = User.all
  end

  def candidatesshow
    @user = User.find(params[:id])
  end
end
