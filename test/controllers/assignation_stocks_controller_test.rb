require 'test_helper'

class AssignationStocksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @assignation_stock = assignation_stocks(:one)
  end

  test "should get index" do
    get assignation_stocks_url
    assert_response :success
  end

  test "should get new" do
    get new_assignation_stock_url
    assert_response :success
  end

  test "should create assignation_stock" do
    assert_difference('AssignationStock.count') do
      post assignation_stocks_url, params: { assignation_stock: { assign_date: @assignation_stock.assign_date, user_id: @assignation_stock.user_id } }
    end

    assert_redirected_to assignation_stock_url(AssignationStock.last)
  end

  test "should show assignation_stock" do
    get assignation_stock_url(@assignation_stock)
    assert_response :success
  end

  test "should get edit" do
    get edit_assignation_stock_url(@assignation_stock)
    assert_response :success
  end

  test "should update assignation_stock" do
    patch assignation_stock_url(@assignation_stock), params: { assignation_stock: { assign_date: @assignation_stock.assign_date, user_id: @assignation_stock.user_id } }
    assert_redirected_to assignation_stock_url(@assignation_stock)
  end

  test "should destroy assignation_stock" do
    assert_difference('AssignationStock.count', -1) do
      delete assignation_stock_url(@assignation_stock)
    end

    assert_redirected_to assignation_stocks_url
  end
end
