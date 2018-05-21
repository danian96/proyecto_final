class AssignationStocksController < ApplicationController
  before_action :set_assignation_stock, only: [:show, :edit, :update, :destroy]

  # GET /assignation_stocks
  # GET /assignation_stocks.json
  def index
    @assignation_stocks = AssignationStock.all
  end

  # GET /assignation_stocks/1
  # GET /assignation_stocks/1.json
  def show
  end

  # GET /assignation_stocks/new
  def new
    @assignation_stock = AssignationStock.new
  end

  # GET /assignation_stocks/1/edit
  def edit
  end

  # POST /assignation_stocks
  # POST /assignation_stocks.json
  def create
    @assignation_stock = AssignationStock.new(assignation_stock_params)

    respond_to do |format|
      if @assignation_stock.save
        format.html { redirect_to @assignation_stock, notice: 'Assignation stock was successfully created.' }
        format.json { render :show, status: :created, location: @assignation_stock }
      else
        format.html { render :new }
        format.json { render json: @assignation_stock.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /assignation_stocks/1
  # PATCH/PUT /assignation_stocks/1.json
  def update
    respond_to do |format|
      if @assignation_stock.update(assignation_stock_params)
        format.html { redirect_to @assignation_stock, notice: 'Assignation stock was successfully updated.' }
        format.json { render :show, status: :ok, location: @assignation_stock }
      else
        format.html { render :edit }
        format.json { render json: @assignation_stock.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /assignation_stocks/1
  # DELETE /assignation_stocks/1.json
  def destroy
    @assignation_stock.destroy
    respond_to do |format|
      format.html { redirect_to assignation_stocks_url, notice: 'Assignation stock was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_assignation_stock
      @assignation_stock = AssignationStock.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def assignation_stock_params
      params.require(:assignation_stock).permit(:assign_date, :user_id)
    end
end
