class MyWorriesController < ApplicationController
  before_action :set_my_worry, only: [:show, :edit, :update, :destroy]

  # GET /my_worries
  # GET /my_worries.json
  def index
    @my_worries = MyWorry.all
  end

  # GET /my_worries/1
  # GET /my_worries/1.json
  def show
  end

  # GET /my_worries/new
  def new
    @my_worry = MyWorry.new
  end

  # GET /my_worries/1/edit
  def edit
  end

  # POST /my_worries
  # POST /my_worries.json
  def create
    @my_worry = MyWorry.new(my_worry_params)

    respond_to do |format|
      if @my_worry.save
        format.html { redirect_to @my_worry, notice: 'My worry was successfully created.' }
        format.json { render :show, status: :created, location: @my_worry }
      else
        format.html { render :new }
        format.json { render json: @my_worry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /my_worries/1
  # PATCH/PUT /my_worries/1.json
  def update
    respond_to do |format|
      if @my_worry.update(my_worry_params)
        format.html { redirect_to @my_worry, notice: 'My worry was successfully updated.' }
        format.json { render :show, status: :ok, location: @my_worry }
      else
        format.html { render :edit }
        format.json { render json: @my_worry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /my_worries/1
  # DELETE /my_worries/1.json
  def destroy
    @my_worry.destroy
    respond_to do |format|
      format.html { redirect_to my_worries_url, notice: 'My worry was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_my_worry
      @my_worry = MyWorry.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def my_worry_params
      params.require(:my_worry).permit(:index)
    end
end
