class ConvocatoriesController < ApplicationController
  before_action :set_convocatory, only: [:show, :edit, :update, :destroy]

  # GET /convocatories
  # GET /convocatories.json
  def index
    @convocatories = Convocatory.all
  end

  # GET /convocatories/1
  # GET /convocatories/1.json
  def show
  end

  # GET /convocatories/new
  def new
    @convocatory = Convocatory.new
  end

  # GET /convocatories/1/edit
  def edit
  end

  # POST /convocatories
  # POST /convocatories.json
  def create
    @convocatory = Convocatory.new(convocatory_params)

    respond_to do |format|
      if @convocatory.save
        format.html { redirect_to @convocatory, notice: 'Convocatory was successfully created.' }
        format.json { render :show, status: :created, location: @convocatory }
      else
        format.html { render :new }
        format.json { render json: @convocatory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /convocatories/1
  # PATCH/PUT /convocatories/1.json
  def update
    respond_to do |format|
      if @convocatory.update(convocatory_params)
        format.html { redirect_to @convocatory, notice: 'Convocatory was successfully updated.' }
        format.json { render :show, status: :ok, location: @convocatory }
      else
        format.html { render :edit }
        format.json { render json: @convocatory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /convocatories/1
  # DELETE /convocatories/1.json
  def destroy
    @convocatory.destroy
    respond_to do |format|
      format.html { redirect_to convocatories_url, notice: 'Convocatory was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_convocatory
      @convocatory = Convocatory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def convocatory_params
      params.require(:convocatory).permit(:title, :description, :stardate, :enddate, :vacancy, :state, :designation_id)
    end
end
