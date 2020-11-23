class UsersController < ApplicationController
  def index
    users = User.all
    render json: { success: true, users: users.map(&:as_api_json) }
  end

  def show
    user = User.find(params[:id])
    render json: { success: true, users: user.as_api_json }
  end

  def create
    user = User.new
    user.title = params[:user][:title]
    user.first_name = params[:user][:first_name]
    user.last_name = params[:user][:last_name]
    user.save
    render json: { success: true, user: user.as_api_json }, status: :created
  end

  def update
    user = User.find(params[:id])
    user.title = params[:user][:title]
    user.first_name = params[:user][:first_name]
    user.last_name = params[:user][:last_name]
    user.save
    render json: { success: true, user: user.as_api_json }
  end
  
  def destroy
    user = User.find(params[:id])
    user.destroy
    render json: { success: true }
  end
end
