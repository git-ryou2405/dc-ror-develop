class UserBalancesController < ApplicationController
  before_action :set_user_balance, only: [:show, :edit, :update, :destroy]

  # GET /user_balances
  def index
    @user_balances = UserBalance.all
  end

  # GET /user_balances/1
  def show
  end

  # GET /user_balances/new
  def new
    @user_balance = UserBalance.new
  end

  # GET /user_balances/1/edit
  def edit
  end

  # POST /user_balances
  def create
    @user_balance = UserBalance.new(user_balance_params)

    if @user_balance.save
      redirect_to @user_balance, notice: "User balance was successfully created."
    else
      render :new
    end
  end

  # PATCH/PUT /user_balances/1
  def update
    if @user_balance.update(user_balance_params)
      redirect_to @user_balance, notice: "User balance was successfully updated."
    else
      render :edit
    end
  end

  # DELETE /user_balances/1
  def destroy
    @user_balance.destroy!
    redirect_to user_balances_url, notice: "User balance was successfully destroyed."
  end

  private

    # Use callbacks to share common setup or constraints between actions.
    def set_user_balance
      @user_balance = UserBalance.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_balance_params
      params.require(:user_balance).permit(:balance, :user_id, :last_calculated_jounal_id)
    end
end
