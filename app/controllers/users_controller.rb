class UsersController < ApplicationController
  def show
    user=User.find(params[:id])
    @nickname=user.nickname
    @tweets=ser.tweets.page(params[:page]).per(5).order("created_at DESC")
  end
end
