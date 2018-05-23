require 'test_helper'

class PsicologicEvaluationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @psicologic_evaluation = psicologic_evaluations(:one)
  end

  test "should get index" do
    get psicologic_evaluations_url
    assert_response :success
  end

  test "should get new" do
    get new_psicologic_evaluation_url
    assert_response :success
  end

  test "should create psicologic_evaluation" do
    assert_difference('PsicologicEvaluation.count') do
      post psicologic_evaluations_url, params: { psicologic_evaluation: { appli_detail_id: @psicologic_evaluation.appli_detail_id, observations: @psicologic_evaluation.observations, recomendations: @psicologic_evaluation.recomendations } }
    end

    assert_redirected_to psicologic_evaluation_url(PsicologicEvaluation.last)
  end

  test "should show psicologic_evaluation" do
    get psicologic_evaluation_url(@psicologic_evaluation)
    assert_response :success
  end

  test "should get edit" do
    get edit_psicologic_evaluation_url(@psicologic_evaluation)
    assert_response :success
  end

  test "should update psicologic_evaluation" do
    patch psicologic_evaluation_url(@psicologic_evaluation), params: { psicologic_evaluation: { appli_detail_id: @psicologic_evaluation.appli_detail_id, observations: @psicologic_evaluation.observations, recomendations: @psicologic_evaluation.recomendations } }
    assert_redirected_to psicologic_evaluation_url(@psicologic_evaluation)
  end

  test "should destroy psicologic_evaluation" do
    assert_difference('PsicologicEvaluation.count', -1) do
      delete psicologic_evaluation_url(@psicologic_evaluation)
    end

    assert_redirected_to psicologic_evaluations_url
  end
end
