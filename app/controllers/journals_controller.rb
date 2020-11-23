class JournalsController < ApplicationController
  # GET /journals
  def index
    @journals = Journal.all
  end

  # GET /journals/new
  def new
    @journal = Journal.new
  end

  # POST /journals
  def create
    @journal = Journal.new(journal_params)

    if @journal.save
      redirect_to journals_url, notice: "Journal was successfully created."
    else
      render :new
    end
  end

  private

    # Only allow a trusted parameter "white list" through.
    def journal_params
      params.require(:journal).permit(:from_user_id, :to_user_id, :amount, :send_type)
    end
end
