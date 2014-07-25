require 'test_helper'

class ConstructTwosControllerTest < ActionController::TestCase
  setup do
    @construct_two = construct_twos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:construct_twos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create construct_two" do
    assert_difference('ConstructTwo.count') do
      post :create, construct_two: { description: @construct_two.description, title: @construct_two.title }
    end

    assert_redirected_to construct_two_path(assigns(:construct_two))
  end

  test "should show construct_two" do
    get :show, id: @construct_two
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @construct_two
    assert_response :success
  end

  test "should update construct_two" do
    put :update, id: @construct_two, construct_two: { description: @construct_two.description, title: @construct_two.title }
    assert_redirected_to construct_two_path(assigns(:construct_two))
  end

  test "should destroy construct_two" do
    assert_difference('ConstructTwo.count', -1) do
      delete :destroy, id: @construct_two
    end

    assert_redirected_to construct_twos_path
  end
end
