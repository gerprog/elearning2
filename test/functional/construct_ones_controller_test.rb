require 'test_helper'

class ConstructOnesControllerTest < ActionController::TestCase
  setup do
    @construct_one = construct_ones(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:construct_ones)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create construct_one" do
    assert_difference('ConstructOne.count') do
      post :create, construct_one: { description: @construct_one.description, title: @construct_one.title }
    end

    assert_redirected_to construct_one_path(assigns(:construct_one))
  end

  test "should show construct_one" do
    get :show, id: @construct_one
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @construct_one
    assert_response :success
  end

  test "should update construct_one" do
    put :update, id: @construct_one, construct_one: { description: @construct_one.description, title: @construct_one.title }
    assert_redirected_to construct_one_path(assigns(:construct_one))
  end

  test "should destroy construct_one" do
    assert_difference('ConstructOne.count', -1) do
      delete :destroy, id: @construct_one
    end

    assert_redirected_to construct_ones_path
  end
end
