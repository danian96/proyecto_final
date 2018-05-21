class MemorandumsController < ApplicationController
  before_action :set_memorandum, only: [:show, :edit, :update, :destroy]

  # GET /memorandums
  # GET /memorandums.json
  def index
    @memorandums = Memorandum.all
  end

  # GET /memorandums/1
  # GET /memorandums/1.json
  def show
  end

  # GET /memorandums/new
  def new
    @memorandum = Memorandum.new
  end

  # GET /memorandums/1/edit
  def edit
  end

  # POST /memorandums
  # POST /memorandums.json
  def create
    @memorandum = Memorandum.new(memorandum_params)

    respond_to do |format|
      if @memorandum.save
        format.html { redirect_to @memorandum, notice: 'Memorandum was successfully created.' }
        format.json { render :show, status: :created, location: @memorandum }
      else
        format.html { render :new }
        format.json { render json: @memorandum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /memorandums/1
  # PATCH/PUT /memorandums/1.json
  def update
    respond_to do |format|
      if @memorandum.update(memorandum_params)
        format.html { redirect_to @memorandum, notice: 'Memorandum was successfully updated.' }
        format.json { render :show, status: :ok, location: @memorandum }
      else
        format.html { render :edit }
        format.json { render json: @memorandum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /memorandums/1
  # DELETE /memorandums/1.json
  def destroy
    @memorandum.destroy
    respond_to do |format|
      format.html { redirect_to memorandums_url, notice: 'Memorandum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_memorandum
      @memorandum = Memorandum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def memorandum_params
      params.require(:memorandum).permit(:title, :description, :memorandum_type_id, :user_id)
    end
end
