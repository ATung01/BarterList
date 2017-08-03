class TransactionController < ApplicationController


  def create
  end

  def show
		@transaction = Transaction.find(params[:id])
    render json: @transaction
	end



end
