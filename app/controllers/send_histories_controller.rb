class SendHistoriesController < ApplicationController
  before_action :set_send_history, only: [:show, :edit, :update, :destroy]

  # GET /send_histories
  def index
    @send_histories = SendHistory.all
  end

  # GET /send_histories/1
  def show
  end

  # GET /send_histories/new
  def new
    @send_history = SendHistory.new
  end

  # GET /send_histories/1/edit
  def edit
  end

  # POST /send_histories
  def create
    @send_history = SendHistory.new(send_history_params)

    if @send_history.save
      redirect_to @send_history, notice: 'Send history was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /send_histories/1
  def update
    if @send_history.update(send_history_params)
      redirect_to @send_history, notice: 'Send history was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /send_histories/1
  def destroy
    @send_history.destroy
    redirect_to send_histories_url, notice: 'Send history was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_send_history
      @send_history = SendHistory.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def send_history_params
      params.require(:send_history).permit(:from_user_id, :to_user_id, :amount, :send_type)
    end
end
