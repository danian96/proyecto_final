require 'test_helper'

class AppliDetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @appli_detail = appli_details(:one)
  end

  test "should get index" do
    get appli_details_url
    assert_response :success
  end

  test "should get new" do
    get new_appli_detail_url
    assert_response :success
  end

  test "should create appli_detail" do
    assert_difference('AppliDetail.count') do
      post appli_details_url, params: { appli_detail: { convocatory_id: @appli_detail.convocatory_id, date: @appli_detail.date, person_id: @appli_detail.person_id, state: @appli_detail.state } }
    end

    assert_redirected_to appli_detail_url(AppliDetail.last)
  end

  test "should show appli_detail" do
    get appli_detail_url(@appli_detail)
    assert_response :success
  end

  test "should get edit" do
    get edit_appli_detail_url(@appli_detail)
    assert_response :success
  end

  test "should update appli_detail" do
    patch appli_detail_url(@appli_detail), params: { appli_detail: { convocatory_id: @appli_detail.convocatory_id, date: @appli_detail.date, person_id: @appli_detail.person_id, state: @appli_detail.state } }
    assert_redirected_to appli_detail_url(@appli_detail)
  end

  test "should destroy appli_detail" do
    assert_difference('AppliDetail.count', -1) do
      delete appli_detail_url(@appli_detail)
    end

    assert_redirected_to appli_details_url
  end
end
