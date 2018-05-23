class AnnunmentsController < ApplicationController
  before_action :set_annunment, only: [:show, :edit, :update, :destroy]

  # GET /annunments
  # GET /annunments.json
  def index
    @annunments = Annunment.all
  end

  # GET /annunments/1
  # GET /annunments/1.json
  def show
  end

  # GET /annunments/new
  def new
    @annunment = Annunment.new
  end

  # GET /annunments/1/edit
  def edit
  end

  # POST /annunments
  # POST /annunments.json
  def create
    @annunment = Annunment.new(annunment_params)

    respond_to do |format|
      if @annunment.save
        format.html { redirect_to @annunment, notice: 'Annunment was successfully created.' }
        format.json { render :show, status: :created, location: @annunment }
      else
        format.html { render :new }
        format.json { render json: @annunment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /annunments/1
  # PATCH/PUT /annunments/1.json
  def update
    respond_to do |format|
      if @annunment.update(annunment_params)
        format.html { redirect_to @annunment, notice: 'Annunment was successfully updated.' }
        format.json { render :show, status: :ok, location: @annunment }
      else
        format.html { render :edit }
        format.json { render json: @annunment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /annunments/1
  # DELETE /annunments/1.json
  def destroy
    @annunment.destroy
    respond_to do |format|
      format.html { redirect_to annunments_url, notice: 'Annunment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_annunment
      @annunment = Annunment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def annunment_params
      params.require(:annunment).permit(:status, :title, :descripcion, :departament_id)
    end
end
