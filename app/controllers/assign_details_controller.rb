class AssignDetailsController < ApplicationController
  before_action :set_assign_detail, only: [:show, :edit, :update, :destroy]

  # GET /assign_details
  # GET /assign_details.json
  def index
    @assign_details = AssignDetail.all
  end

  # GET /assign_details/1
  # GET /assign_details/1.json
  def show
  end

  # GET /assign_details/new
  def new
    @assign_detail = AssignDetail.new
  end

  # GET /assign_details/1/edit
  def edit
  end

  # POST /assign_details
  # POST /assign_details.json
  def create
    @assign_detail = AssignDetail.new(assign_detail_params)

    respond_to do |format|
      if @assign_detail.save
        format.html { redirect_to @assign_detail, notice: 'Assign detail was successfully created.' }
        format.json { render :show, status: :created, location: @assign_detail }
      else
        format.html { render :new }
        format.json { render json: @assign_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /assign_details/1
  # PATCH/PUT /assign_details/1.json
  def update
    respond_to do |format|
      if @assign_detail.update(assign_detail_params)
        format.html { redirect_to @assign_detail, notice: 'Assign detail was successfully updated.' }
        format.json { render :show, status: :ok, location: @assign_detail }
      else
        format.html { render :edit }
        format.json { render json: @assign_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /assign_details/1
  # DELETE /assign_details/1.json
  def destroy
    @assign_detail.destroy
    respond_to do |format|
      format.html { redirect_to assign_details_url, notice: 'Assign detail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_assign_detail
      @assign_detail = AssignDetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def assign_detail_params
      params.require(:assign_detail).permit(:quantity, :stock_id, :assignation_stock_id)
    end
end
