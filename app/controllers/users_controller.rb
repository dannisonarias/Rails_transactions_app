class UsersController < ApplicationController
  def show
    @user = User.includes(:groups, :transactions).with_attached_image.find(current_user.id)
  end
end
