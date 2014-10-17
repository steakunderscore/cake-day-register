class BakersController < ApplicationController
  before_action :authenticate_baker!
  before_action :set_baker, only: [:show, :edit, :update, :destroy]

  def authorize(baker)
    # TODO: Move this else where
    fail if baker != current_baker
  end

  # GET /bakers
  # GET /bakers.json
  def index
    @bakers = Baker.all
  end

  # GET /members
  # GET /members/next.json
  def next
    @baker = Whirl.order(priority: :asc).first.baker
  end

  # GET /bakers/1
  # GET /bakers/1.json
  def show
    authorize(@baker)
  end

  # GET /bakers/1/edit
  def edit
    authorize(@baker)
  end

  # PATCH/PUT /bakers/1
  # PATCH/PUT /bakers/1.json
  def update
    authorize(@baker)
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
    authorize(@baker)
    @baker.destroy
    respond_to do |format|
      format.html { redirect_to bakers_url, notice: 'Baker was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

   def finish_signup
     authorize(current_baker)
     if request.patch? && params[:baker]
       if current_baker.update(baker_params)
         sign_in(current_baker, :bypass => true)
         redirect_path = session[:previous_url] || root_path
         redirect_to redirect_path
       else
         @show_errors = true
       end
     end
   end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_baker
      @baker = Baker.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def baker_params
      params.require(:baker).permit(:name, :email)
    end
end
