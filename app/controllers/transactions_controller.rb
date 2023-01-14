class TransactionsController < ApplicationController
  before_action :authenticate_user!

  # GET /transactions or /transactions.json
  def index
    @transactions = Transaction.all.where(user_id: current_user.id)
  end

  # GET /transactions/new
  def new
    @transaction = Transaction.new
    @categories = Category.all.where(user_id: current_user.id)
  end

  # POST /transactions or /transactions.json
  def create
    @transaction = Transaction.new(transaction_params)
    @transaction.user = current_user
    respond_to do |format|
      if @transaction.save
        format.html { redirect_to transactions_url(@transaction), notice: 'Transaction was successfully created.' }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /transactions/1 or /transactions/1.json
  def destroy
    @transaction = Transaction.find(params[:id])
    @transaction.destroy

    respond_to do |format|
      format.html { redirect_to transactions_url, notice: 'Transaction was successfully destroyed.' }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_transaction
    @transaction = Transaction.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def transaction_params
    params.require(:transaction).permit(:name, :amount, :category_id)
  end
end
