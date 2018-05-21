require 'test_helper'

class MemorandumsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @memorandum = memorandums(:one)
  end

  test "should get index" do
    get memorandums_url
    assert_response :success
  end

  test "should get new" do
    get new_memorandum_url
    assert_response :success
  end

  test "should create memorandum" do
    assert_difference('Memorandum.count') do
      post memorandums_url, params: { memorandum: { description: @memorandum.description, memorandum_type_id: @memorandum.memorandum_type_id, title: @memorandum.title, user_id: @memorandum.user_id } }
    end

    assert_redirected_to memorandum_url(Memorandum.last)
  end

  test "should show memorandum" do
    get memorandum_url(@memorandum)
    assert_response :success
  end

  test "should get edit" do
    get edit_memorandum_url(@memorandum)
    assert_response :success
  end

  test "should update memorandum" do
    patch memorandum_url(@memorandum), params: { memorandum: { description: @memorandum.description, memorandum_type_id: @memorandum.memorandum_type_id, title: @memorandum.title, user_id: @memorandum.user_id } }
    assert_redirected_to memorandum_url(@memorandum)
  end

  test "should destroy memorandum" do
    assert_difference('Memorandum.count', -1) do
      delete memorandum_url(@memorandum)
    end

    assert_redirected_to memorandums_url
  end
end
