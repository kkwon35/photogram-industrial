class UsersController < ApplicationController
  def feed
    # @user = User.find_by!(username: params.fetch(:username))
    @user = params[:username] ? User.find_by!(username: params[:username]) : current_user
  end

  def discover
    @user = User.find_by!(username: params.fetch(:username))
  end

  def show
    @user = User.find_by!(username: params.fetch(:username))
  end
  def liked
    @user = User.find_by!(username: params.fetch(:username))
  end
end
