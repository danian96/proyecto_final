require 'test_helper'

class CivilStatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @civil_state = civil_states(:one)
  end

  test "should get index" do
    get civil_states_url
    assert_response :success
  end

  test "should get new" do
    get new_civil_state_url
    assert_response :success
  end

  test "should create civil_state" do
    assert_difference('CivilState.count') do
      post civil_states_url, params: { civil_state: { name: @civil_state.name } }
    end

    assert_redirected_to civil_state_url(CivilState.last)
  end

  test "should show civil_state" do
    get civil_state_url(@civil_state)
    assert_response :success
  end

  test "should get edit" do
    get edit_civil_state_url(@civil_state)
    assert_response :success
  end

  test "should update civil_state" do
    patch civil_state_url(@civil_state), params: { civil_state: { name: @civil_state.name } }
    assert_redirected_to civil_state_url(@civil_state)
  end

  test "should destroy civil_state" do
    assert_difference('CivilState.count', -1) do
      delete civil_state_url(@civil_state)
    end

    assert_redirected_to civil_states_url
  end
end
