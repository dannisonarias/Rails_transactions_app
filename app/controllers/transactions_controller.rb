class TransactionsController < ApplicationController
  def index
    @user = User.includes(:transactions,:groups).find(current_user.id)
  end

  def show
  end

  def new
    @transaction = Transaction.new()
  end

  def create
    @transaction = Transaction.new(name:t_params[:name],amount:t_params[:amount],user_id:current_user.id)
    if @transaction.save
      flash[:success] = "group created!"
      redirect_to user_transactions_path
    else
      flash[:warning] = "error!"
      redirect_to user_transactions_path
    end
  end

  def t_params
    params.require(:transaction).permit(:name,:amount)
  end
end
