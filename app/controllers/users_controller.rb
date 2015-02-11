class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:show, :index]

  def index
    @users = User.all
  end

  def show
    @user = get_user
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def get_user
    @user = User.find(params[:id])
  end

end
