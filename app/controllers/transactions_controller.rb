class TransactionsController < ApplicationController
  
  def index
    if params[:category] == "0"
      @group = Group.where(name:"none")
      @user ||= User.includes(:groups,:transactions).where(:transactions=>{group_id: 1}).find(current_user.id)
      @total = @user.transactions.where(:group_id=>1).sum(:amount) 
    else
      @group = Group.where.not(name:"none")
      @user = User.includes(:transactions).where.not(:transactions=>{group_id: 1}).find(current_user.id)
      @total = @user.transactions.where.not(:group_id=>1).sum(:amount) 
    end
  end

  def show
  end

  def new
    @transaction = Transaction.new()
    @group_options = Group.all.map{ |u| [ u.name, u.id ] }
  end

  def create
    @transaction = Transaction.new(name:t_params[:name],amount:t_params[:amount],user_id:current_user.id,group_id:t_params[:group_id])
    if @transaction.save
      flash[:success] = "group created!"
      redirect_to user_transactions_path
    else
      flash[:warning] = "error!"
      redirect_to user_transactions_path
    end
  end

  def t_params
    params.require(:transaction).permit(:name,:amount,:group_id)
  end
end
