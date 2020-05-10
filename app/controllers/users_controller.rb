class UsersController < ApplicationController
  def show
    @user = User.includes(:groups, :transactions).find(current_user.id)
  end
end
