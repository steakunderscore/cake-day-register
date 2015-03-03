class CakeDaysController < ApplicationController
  before_action :set_cake_day, only: [:show, :edit, :update, :destroy]

  # GET /cake_days
  # GET /cake_days.json
  def index
    @cake_days = CakeDay.all
  end

  # GET /cake_days/1
  # GET /cake_days/1.json
  def show
  end

  # GET /cake_days/new
  def new
    @cake_day = CakeDay.new
  end

  # GET /cake_days/1/edit
  def edit
  end

  # POST /cake_days
  # POST /cake_days.json
  def create
    @cake_day = CakeDay.new(cake_day_params)

    respond_to do |format|
      if @cake_day.save
        format.html { redirect_to @cake_day, notice: 'Cake day was successfully created.' }
        format.json { render :show, status: :created, location: @cake_day }
      else
        format.html { render :new }
        format.json { render json: @cake_day.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cake_days/1
  # PATCH/PUT /cake_days/1.json
  def update
    respond_to do |format|
      if @cake_day.update(cake_day_params)
        format.html { redirect_to @cake_day, notice: 'Cake day was successfully updated.' }
        format.json { render :show, status: :ok, location: @cake_day }
      else
        format.html { render :edit }
        format.json { render json: @cake_day.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cake_days/1
  # DELETE /cake_days/1.json
  def destroy
    @cake_day.destroy
    respond_to do |format|
      format.html { redirect_to cake_days_url, notice: 'Cake day was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cake_day
      @cake_day = CakeDay.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cake_day_params
      params.require(:cake_day).permit(:baker_id, :date)
    end
end
