require 'test_helper'

class MemorandumTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @memorandum_type = memorandum_types(:one)
  end

  test "should get index" do
    get memorandum_types_url
    assert_response :success
  end

  test "should get new" do
    get new_memorandum_type_url
    assert_response :success
  end

  test "should create memorandum_type" do
    assert_difference('MemorandumType.count') do
      post memorandum_types_url, params: { memorandum_type: { name: @memorandum_type.name } }
    end

    assert_redirected_to memorandum_type_url(MemorandumType.last)
  end

  test "should show memorandum_type" do
    get memorandum_type_url(@memorandum_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_memorandum_type_url(@memorandum_type)
    assert_response :success
  end

  test "should update memorandum_type" do
    patch memorandum_type_url(@memorandum_type), params: { memorandum_type: { name: @memorandum_type.name } }
    assert_redirected_to memorandum_type_url(@memorandum_type)
  end

  test "should destroy memorandum_type" do
    assert_difference('MemorandumType.count', -1) do
      delete memorandum_type_url(@memorandum_type)
    end

    assert_redirected_to memorandum_types_url
  end
end
