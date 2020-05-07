class GroupsController < ApplicationController
  def show
  end
  def index
    @groups = Group.where.not(name:"none").sort_recent
  end
  def new
    @group = Group.new()
  end
  def create
    @group = Group.new(user_id:current_user.id,name:group_params[:name],icon:group_params[:image])
    if @group.save
      flash[:success] = "group created!"
      redirect_to groups_path
    else
      flash[:warning] = "error!"
      redirect_to new_group_path
    end
  end
  def group_params
    params.require(:group).permit(:name,:image)
  end
end
