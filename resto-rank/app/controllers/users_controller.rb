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

  end
end
