class AdvicesController < ApplicationController
  # GET /advices/new
  def new
    @advice = Advice.new
  end

  # POST /advices
  # POST /advices.json
  def create
    @advice = Advice.new(advice_params)

    respond_to do |format|
      if @advice.save
        format.html { redirect_to root_path, notice: 'Advice was successfully created.' }
        format.json { render :show, status: :created, location: @advice }
      else
        format.html { render :new }
        format.json { render json: @advice.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def advice_params
      params.require(:advice).permit(:detail, :worry_id, :in_reply_to_id)
    end
end
