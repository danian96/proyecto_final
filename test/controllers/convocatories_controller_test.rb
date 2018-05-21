require 'test_helper'

class ConvocatoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @convocatory = convocatories(:one)
  end

  test "should get index" do
    get convocatories_url
    assert_response :success
  end

  test "should get new" do
    get new_convocatory_url
    assert_response :success
  end

  test "should create convocatory" do
    assert_difference('Convocatory.count') do
      post convocatories_url, params: { convocatory: { description: @convocatory.description, designation_id: @convocatory.designation_id, enddate: @convocatory.enddate, stardate: @convocatory.stardate, state: @convocatory.state, title: @convocatory.title, vacancy: @convocatory.vacancy } }
    end

    assert_redirected_to convocatory_url(Convocatory.last)
  end

  test "should show convocatory" do
    get convocatory_url(@convocatory)
    assert_response :success
  end

  test "should get edit" do
    get edit_convocatory_url(@convocatory)
    assert_response :success
  end

  test "should update convocatory" do
    patch convocatory_url(@convocatory), params: { convocatory: { description: @convocatory.description, designation_id: @convocatory.designation_id, enddate: @convocatory.enddate, stardate: @convocatory.stardate, state: @convocatory.state, title: @convocatory.title, vacancy: @convocatory.vacancy } }
    assert_redirected_to convocatory_url(@convocatory)
  end

  test "should destroy convocatory" do
    assert_difference('Convocatory.count', -1) do
      delete convocatory_url(@convocatory)
    end

    assert_redirected_to convocatories_url
  end
end
