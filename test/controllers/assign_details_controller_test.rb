require 'test_helper'

class AssignDetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @assign_detail = assign_details(:one)
  end

  test "should get index" do
    get assign_details_url
    assert_response :success
  end

  test "should get new" do
    get new_assign_detail_url
    assert_response :success
  end

  test "should create assign_detail" do
    assert_difference('AssignDetail.count') do
      post assign_details_url, params: { assign_detail: { assignation_stock_id: @assign_detail.assignation_stock_id, quantity: @assign_detail.quantity, stock_id: @assign_detail.stock_id } }
    end

    assert_redirected_to assign_detail_url(AssignDetail.last)
  end

  test "should show assign_detail" do
    get assign_detail_url(@assign_detail)
    assert_response :success
  end

  test "should get edit" do
    get edit_assign_detail_url(@assign_detail)
    assert_response :success
  end

  test "should update assign_detail" do
    patch assign_detail_url(@assign_detail), params: { assign_detail: { assignation_stock_id: @assign_detail.assignation_stock_id, quantity: @assign_detail.quantity, stock_id: @assign_detail.stock_id } }
    assert_redirected_to assign_detail_url(@assign_detail)
  end

  test "should destroy assign_detail" do
    assert_difference('AssignDetail.count', -1) do
      delete assign_detail_url(@assign_detail)
    end

    assert_redirected_to assign_details_url
  end
end
