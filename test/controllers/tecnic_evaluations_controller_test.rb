require 'test_helper'

class TecnicEvaluationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tecnic_evaluation = tecnic_evaluations(:one)
  end

  test "should get index" do
    get tecnic_evaluations_url
    assert_response :success
  end

  test "should get new" do
    get new_tecnic_evaluation_url
    assert_response :success
  end

  test "should create tecnic_evaluation" do
    assert_difference('TecnicEvaluation.count') do
      post tecnic_evaluations_url, params: { tecnic_evaluation: { appli_detail_id: @tecnic_evaluation.appli_detail_id, observations: @tecnic_evaluation.observations, qualification: @tecnic_evaluation.qualification } }
    end

    assert_redirected_to tecnic_evaluation_url(TecnicEvaluation.last)
  end

  test "should show tecnic_evaluation" do
    get tecnic_evaluation_url(@tecnic_evaluation)
    assert_response :success
  end

  test "should get edit" do
    get edit_tecnic_evaluation_url(@tecnic_evaluation)
    assert_response :success
  end

  test "should update tecnic_evaluation" do
    patch tecnic_evaluation_url(@tecnic_evaluation), params: { tecnic_evaluation: { appli_detail_id: @tecnic_evaluation.appli_detail_id, observations: @tecnic_evaluation.observations, qualification: @tecnic_evaluation.qualification } }
    assert_redirected_to tecnic_evaluation_url(@tecnic_evaluation)
  end

  test "should destroy tecnic_evaluation" do
    assert_difference('TecnicEvaluation.count', -1) do
      delete tecnic_evaluation_url(@tecnic_evaluation)
    end

    assert_redirected_to tecnic_evaluations_url
  end
end
