class CivilStatesController < ApplicationController
  before_action :set_civil_state, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /civil_states
  # GET /civil_states.json
  def index
    @civil_states = CivilState.all
  end

  # GET /civil_states/1
  # GET /civil_states/1.json
  def show
  end

  # GET /civil_states/new
  def new
    @civil_state = CivilState.new
  end

  # GET /civil_states/1/edit
  def edit
  end

  # POST /civil_states
  # POST /civil_states.json
  def create
    @civil_state = CivilState.new(civil_state_params)

    respond_to do |format|
      if @civil_state.save
        format.html { redirect_to @civil_state, notice: 'Civil state was successfully created.' }
        format.json { render :show, status: :created, location: @civil_state }
      else
        format.html { render :new }
        format.json { render json: @civil_state.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /civil_states/1
  # PATCH/PUT /civil_states/1.json
  def update
    respond_to do |format|
      if @civil_state.update(civil_state_params)
        format.html { redirect_to @civil_state, notice: 'Civil state was successfully updated.' }
        format.json { render :show, status: :ok, location: @civil_state }
      else
        format.html { render :edit }
        format.json { render json: @civil_state.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /civil_states/1
  # DELETE /civil_states/1.json
  def destroy
    @civil_state.destroy
    respond_to do |format|
      format.html { redirect_to civil_states_url, notice: 'Civil state was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_civil_state
      @civil_state = CivilState.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def civil_state_params
      params.require(:civil_state).permit(:name)
    end
end
