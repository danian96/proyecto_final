class UserTrainingsController < ApplicationController
  before_action :set_user_training, only: [:show, :edit, :update, :destroy]

  # GET /user_trainings
  # GET /user_trainings.json
  def index
    @user_trainings = UserTraining.all
  end

  # GET /user_trainings/1
  # GET /user_trainings/1.json
  def show
  end

  # GET /user_trainings/new
  def new
    @user_training = UserTraining.new
  end

  # GET /user_trainings/1/edit
  def edit
  end

  # POST /user_trainings
  # POST /user_trainings.json
  def create
    @user_training = UserTraining.new(user_training_params)

    respond_to do |format|
      if @user_training.save
        format.html { redirect_to @user_training, notice: 'User training was successfully created.' }
        format.json { render :show, status: :created, location: @user_training }
      else
        format.html { render :new }
        format.json { render json: @user_training.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_trainings/1
  # PATCH/PUT /user_trainings/1.json
  def update
    respond_to do |format|
      if @user_training.update(user_training_params)
        format.html { redirect_to @user_training, notice: 'User training was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_training }
      else
        format.html { render :edit }
        format.json { render json: @user_training.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_trainings/1
  # DELETE /user_trainings/1.json
  def destroy
    @user_training.destroy
    respond_to do |format|
      format.html { redirect_to user_trainings_url, notice: 'User training was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_training
      @user_training = UserTraining.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_training_params
      params.require(:user_training).permit(:state, :training_id, :user_id)
    end
end
