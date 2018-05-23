class TecnicEvaluationsController < ApplicationController
  before_action :set_tecnic_evaluation, only: [:show, :edit, :update, :destroy]

  # GET /tecnic_evaluations
  # GET /tecnic_evaluations.json
  def index
    @tecnic_evaluations = TecnicEvaluation.all
  end

  # GET /tecnic_evaluations/1
  # GET /tecnic_evaluations/1.json
  def show
  end

  # GET /tecnic_evaluations/new
  def new
    @tecnic_evaluation = TecnicEvaluation.new
  end

  # GET /tecnic_evaluations/1/edit
  def edit
  end

  # POST /tecnic_evaluations
  # POST /tecnic_evaluations.json
  def create
    @tecnic_evaluation = TecnicEvaluation.new(tecnic_evaluation_params)

    respond_to do |format|
      if @tecnic_evaluation.save
        format.html { redirect_to @tecnic_evaluation, notice: 'Tecnic evaluation was successfully created.' }
        format.json { render :show, status: :created, location: @tecnic_evaluation }
      else
        format.html { render :new }
        format.json { render json: @tecnic_evaluation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tecnic_evaluations/1
  # PATCH/PUT /tecnic_evaluations/1.json
  def update
    respond_to do |format|
      if @tecnic_evaluation.update(tecnic_evaluation_params)
        format.html { redirect_to @tecnic_evaluation, notice: 'Tecnic evaluation was successfully updated.' }
        format.json { render :show, status: :ok, location: @tecnic_evaluation }
      else
        format.html { render :edit }
        format.json { render json: @tecnic_evaluation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tecnic_evaluations/1
  # DELETE /tecnic_evaluations/1.json
  def destroy
    @tecnic_evaluation.destroy
    respond_to do |format|
      format.html { redirect_to tecnic_evaluations_url, notice: 'Tecnic evaluation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tecnic_evaluation
      @tecnic_evaluation = TecnicEvaluation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tecnic_evaluation_params
      params.require(:tecnic_evaluation).permit(:observations, :qualification, :appli_detail_id)
    end
end
