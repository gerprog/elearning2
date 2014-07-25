require 'test_helper'

class Quiz1sControllerTest < ActionController::TestCase
  setup do
    @quiz1 = quiz1s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:quiz1s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create quiz1" do
    assert_difference('Quiz1.count') do
      post :create, quiz1: { description: @quiz1.description, image_url: @quiz1.image_url, score: @quiz1.score, title: @quiz1.title }
    end

    assert_redirected_to quiz1_path(assigns(:quiz1))
  end

  test "should show quiz1" do
    get :show, id: @quiz1
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @quiz1
    assert_response :success
  end

  test "should update quiz1" do
    put :update, id: @quiz1, quiz1: { description: @quiz1.description, image_url: @quiz1.image_url, score: @quiz1.score, title: @quiz1.title }
    assert_redirected_to quiz1_path(assigns(:quiz1))
  end

  test "should destroy quiz1" do
    assert_difference('Quiz1.count', -1) do
      delete :destroy, id: @quiz1
    end

    assert_redirected_to quiz1s_path
  end
end
