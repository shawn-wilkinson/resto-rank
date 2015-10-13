class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    if @user.save!
      session[:user_id] = @user.id
      redirect_to '/'
    else
      @error = "Invalid Registration."
      render :new
    end
  end

  def login
    @user = User.new
  end

  def logout
    session[:user_id] = nil
    redirect_to "/"
  end

  def authenticate
    @user = User.find_by name: params[:name]
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to "/"
    else
      @error = "Invalid Login"
      render :login
    end
  end

  def show
  end

  private

  def user_params
    params.require(:user).permit(:name,:email,:password)
  end


end
