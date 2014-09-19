class WhirlsController < ApplicationController
  before_action :set_whirl, only: [:show, :edit, :update, :destroy]

  # GET /whirls
  # GET /whirls.json
  def index
    @whirls = Whirl.all
  end

  # GET /whirls/1
  # GET /whirls/1.json
  def show
  end

  # GET /whirls/new
  def new
    @whirl = Whirl.new
  end

  # GET /whirls/1/edit
  def edit
  end

  # POST /whirls
  # POST /whirls.json
  def create
    @whirl = Whirl.new(whirl_params)

    respond_to do |format|
      if @whirl.save
        format.html { redirect_to @whirl, notice: 'Whirl was successfully created.' }
        format.json { render :show, status: :created, location: @whirl }
      else
        format.html { render :new }
        format.json { render json: @whirl.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /whirls/1
  # PATCH/PUT /whirls/1.json
  def update
    respond_to do |format|
      if @whirl.update(whirl_params)
        format.html { redirect_to @whirl, notice: 'Whirl was successfully updated.' }
        format.json { render :show, status: :ok, location: @whirl }
      else
        format.html { render :edit }
        format.json { render json: @whirl.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /whirls/1
  # DELETE /whirls/1.json
  def destroy
    @whirl.destroy
    respond_to do |format|
      format.html { redirect_to whirls_url, notice: 'Whirl was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_whirl
      @whirl = Whirl.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def whirl_params
      params.require(:whirl).permit(:baker_id, :priority)
    end
end
