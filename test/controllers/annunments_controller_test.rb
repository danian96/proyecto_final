require 'test_helper'

class AnnunmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @annunment = annunments(:one)
  end

  test "should get index" do
    get annunments_url
    assert_response :success
  end

  test "should get new" do
    get new_annunment_url
    assert_response :success
  end

  test "should create annunment" do
    assert_difference('Annunment.count') do
      post annunments_url, params: { annunment: { departament_id: @annunment.departament_id, descripcion: @annunment.descripcion, status: @annunment.status, title: @annunment.title } }
    end

    assert_redirected_to annunment_url(Annunment.last)
  end

  test "should show annunment" do
    get annunment_url(@annunment)
    assert_response :success
  end

  test "should get edit" do
    get edit_annunment_url(@annunment)
    assert_response :success
  end

  test "should update annunment" do
    patch annunment_url(@annunment), params: { annunment: { departament_id: @annunment.departament_id, descripcion: @annunment.descripcion, status: @annunment.status, title: @annunment.title } }
    assert_redirected_to annunment_url(@annunment)
  end

  test "should destroy annunment" do
    assert_difference('Annunment.count', -1) do
      delete annunment_url(@annunment)
    end

    assert_redirected_to annunments_url
  end
end
