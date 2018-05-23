class PsicologicEvaluationsController < ApplicationController
  before_action :set_psicologic_evaluation, only: [:show, :edit, :update, :destroy]

  # GET /psicologic_evaluations
  # GET /psicologic_evaluations.json
  def index
    @psicologic_evaluations = PsicologicEvaluation.all
  end

  # GET /psicologic_evaluations/1
  # GET /psicologic_evaluations/1.json
  def show
  end

  # GET /psicologic_evaluations/new
  def new
    @psicologic_evaluation = PsicologicEvaluation.new
  end

  # GET /psicologic_evaluations/1/edit
  def edit
  end

  # POST /psicologic_evaluations
  # POST /psicologic_evaluations.json
  def create
    @psicologic_evaluation = PsicologicEvaluation.new(psicologic_evaluation_params)

    respond_to do |format|
      if @psicologic_evaluation.save
        format.html { redirect_to @psicologic_evaluation, notice: 'Psicologic evaluation was successfully created.' }
        format.json { render :show, status: :created, location: @psicologic_evaluation }
      else
        format.html { render :new }
        format.json { render json: @psicologic_evaluation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /psicologic_evaluations/1
  # PATCH/PUT /psicologic_evaluations/1.json
  def update
    respond_to do |format|
      if @psicologic_evaluation.update(psicologic_evaluation_params)
        format.html { redirect_to @psicologic_evaluation, notice: 'Psicologic evaluation was successfully updated.' }
        format.json { render :show, status: :ok, location: @psicologic_evaluation }
      else
        format.html { render :edit }
        format.json { render json: @psicologic_evaluation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /psicologic_evaluations/1
  # DELETE /psicologic_evaluations/1.json
  def destroy
    @psicologic_evaluation.destroy
    respond_to do |format|
      format.html { redirect_to psicologic_evaluations_url, notice: 'Psicologic evaluation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_psicologic_evaluation
      @psicologic_evaluation = PsicologicEvaluation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def psicologic_evaluation_params
      params.require(:psicologic_evaluation).permit(:observations, :recomendations, :appli_detail_id)
    end
end
