class UsersController < ApplicationController
  def new
  end

  def create
    @user = User.new
    @user["username"] = params["username"]
    @user["email"] = params["email"]
      # encrypt user's password before storing in database
    @user["password"] = BCrypt::Password.create(params["password"])
    @user.save
    redirect_to "/"
  end
end
