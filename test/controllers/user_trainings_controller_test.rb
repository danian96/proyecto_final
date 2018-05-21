require 'test_helper'

class UserTrainingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_training = user_trainings(:one)
  end

  test "should get index" do
    get user_trainings_url
    assert_response :success
  end

  test "should get new" do
    get new_user_training_url
    assert_response :success
  end

  test "should create user_training" do
    assert_difference('UserTraining.count') do
      post user_trainings_url, params: { user_training: { state: @user_training.state, training_id: @user_training.training_id, user_id: @user_training.user_id } }
    end

    assert_redirected_to user_training_url(UserTraining.last)
  end

  test "should show user_training" do
    get user_training_url(@user_training)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_training_url(@user_training)
    assert_response :success
  end

  test "should update user_training" do
    patch user_training_url(@user_training), params: { user_training: { state: @user_training.state, training_id: @user_training.training_id, user_id: @user_training.user_id } }
    assert_redirected_to user_training_url(@user_training)
  end

  test "should destroy user_training" do
    assert_difference('UserTraining.count', -1) do
      delete user_training_url(@user_training)
    end

    assert_redirected_to user_trainings_url
  end
end
