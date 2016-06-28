class WorriesController < ApplicationController
  include WorriesHelper

  before_action :set_worry, only: [:show]

  # GET /worries
  # GET /worries.json
  def index
    @worries = Worry.closed.all
  end

  # GET /worries/1
  # GET /worries/1.json
  def show
  end

  # GET /worries/new
  def new
    @worry = Worry.new
    @reply = Reply.new(@worry)
  end

  # POST /worries
  # POST /worries.json
  def create
    @worry = Worry.new(worry_params)
    @reply = Reply.new(@worry)

    respond_to do |format|
      if @worry.save
        format.html { redirect_to root_path, notice: 'Worry was successfully created.' }
        format.json { render :show, status: :created, location: @worry }
      else
        format.html { render :new }
        format.json { render json: @worry.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_worry
      @worry = Worry.includes(:advices).find(params[:id])
      @sorted_advices = sort_advices(@worry)
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def worry_params
      params.require(:worry).permit(:detail)
    end
end
