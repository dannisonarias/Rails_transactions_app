class GroupsController < ApplicationController
  @defaultimage =
    def show
      @group = Group.find(params[:id])
      # find transactions with group id of params for show.
      @transactions = Transaction.where(group_id: params[:id])
    end

  def index
    @groups = Group.with_attached_icon.where.not(name: 'none').sort_recent
  end

  def new
    @group = Group.new
  end

  def create
    @group = Group.new(user_id: current_user.id, name: group_params[:name], icon: group_params[:image])
    unless @group.icon.attached?
      # rubocop:disable  Layout/LineLength
      @group.icon.attach(io: File.open('app/assets/images/category-icons/noimage.png'), filename: 'noimage.png', content_type: 'image/png')
      # rubocop:enable  Layout/LineLength
    end
    if @group.save
      flash[:success] = 'group created!'
      redirect_to groups_path
    else
      flash[:warning] = 'error!'
      redirect_to new_group_path
    end
  end

  def group_params
    params.require(:group).permit(:name, :image)
  end
end
