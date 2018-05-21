class MemorandumTypesController < ApplicationController
  before_action :set_memorandum_type, only: [:show, :edit, :update, :destroy]

  # GET /memorandum_types
  # GET /memorandum_types.json
  def index
    @memorandum_types = MemorandumType.all
  end

  # GET /memorandum_types/1
  # GET /memorandum_types/1.json
  def show
  end

  # GET /memorandum_types/new
  def new
    @memorandum_type = MemorandumType.new
  end

  # GET /memorandum_types/1/edit
  def edit
  end

  # POST /memorandum_types
  # POST /memorandum_types.json
  def create
    @memorandum_type = MemorandumType.new(memorandum_type_params)

    respond_to do |format|
      if @memorandum_type.save
        format.html { redirect_to @memorandum_type, notice: 'Memorandum type was successfully created.' }
        format.json { render :show, status: :created, location: @memorandum_type }
      else
        format.html { render :new }
        format.json { render json: @memorandum_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /memorandum_types/1
  # PATCH/PUT /memorandum_types/1.json
  def update
    respond_to do |format|
      if @memorandum_type.update(memorandum_type_params)
        format.html { redirect_to @memorandum_type, notice: 'Memorandum type was successfully updated.' }
        format.json { render :show, status: :ok, location: @memorandum_type }
      else
        format.html { render :edit }
        format.json { render json: @memorandum_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /memorandum_types/1
  # DELETE /memorandum_types/1.json
  def destroy
    @memorandum_type.destroy
    respond_to do |format|
      format.html { redirect_to memorandum_types_url, notice: 'Memorandum type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_memorandum_type
      @memorandum_type = MemorandumType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def memorandum_type_params
      params.require(:memorandum_type).permit(:name)
    end
end
