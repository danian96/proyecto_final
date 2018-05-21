class AppliDetailsController < ApplicationController
  before_action :set_appli_detail, only: [:show, :edit, :update, :destroy]

  # GET /appli_details
  # GET /appli_details.json
  def index
    @appli_details = AppliDetail.all
  end

  # GET /appli_details/1
  # GET /appli_details/1.json
  def show
  end

  # GET /appli_details/new
  def new
    @appli_detail = AppliDetail.new
  end

  # GET /appli_details/1/edit
  def edit
  end

  # POST /appli_details
  # POST /appli_details.json
  def create
    @appli_detail = AppliDetail.new(appli_detail_params)

    respond_to do |format|
      if @appli_detail.save
        format.html { redirect_to @appli_detail, notice: 'Appli detail was successfully created.' }
        format.json { render :show, status: :created, location: @appli_detail }
      else
        format.html { render :new }
        format.json { render json: @appli_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /appli_details/1
  # PATCH/PUT /appli_details/1.json
  def update
    respond_to do |format|
      if @appli_detail.update(appli_detail_params)
        format.html { redirect_to @appli_detail, notice: 'Appli detail was successfully updated.' }
        format.json { render :show, status: :ok, location: @appli_detail }
      else
        format.html { render :edit }
        format.json { render json: @appli_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /appli_details/1
  # DELETE /appli_details/1.json
  def destroy
    @appli_detail.destroy
    respond_to do |format|
      format.html { redirect_to appli_details_url, notice: 'Appli detail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_appli_detail
      @appli_detail = AppliDetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def appli_detail_params
      params.require(:appli_detail).permit(:state, :date, :convocatory_id, :person_id)
    end
end
