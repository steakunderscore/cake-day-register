class BakersController < ApplicationController
  before_action :set_baker, only: [:show, :edit, :update, :destroy]

  # GET /bakers
  # GET /bakers.json
  def index
    @bakers = Baker.all
  end

  # GET /members
  # GET /members/next.json
  def next
    @baker = Baker.order(baked_at: :desc, updated_at: :desc).first
  end

  # GET /bakers/1
  # GET /bakers/1.json
  def show
  end

  # GET /bakers/new
  def new
    @baker = Baker.new
  end

  # GET /bakers/1/edit
  def edit
  end

  # POST /bakers
  # POST /bakers.json
  def create
    @baker = Baker.new(baker_params)

    respond_to do |format|
      if @baker.save
        format.html { redirect_to @baker, notice: 'Baker was successfully created.' }
        format.json { render :show, status: :created, location: @baker }
      else
        format.html { render :new }
        format.json { render json: @baker.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bakers/1
  # PATCH/PUT /bakers/1.json
  def update
    respond_to do |format|
      if @baker.update(baker_params)
        format.html { redirect_to @baker, notice: 'Baker was successfully updated.' }
        format.json { render :show, status: :ok, location: @baker }
      else
        format.html { render :edit }
        format.json { render json: @baker.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bakers/1
  # DELETE /bakers/1.json
  def destroy
    @baker.destroy
    respond_to do |format|
      format.html { redirect_to bakers_url, notice: 'Baker was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_baker
      @baker = Baker.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def baker_params
      params.require(:baker).permit(:name, :baked_at)
    end
end
