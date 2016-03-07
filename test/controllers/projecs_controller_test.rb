require 'test_helper'

class ProjecsControllerTest < ActionController::TestCase
  setup do
    @projec = projecs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:projecs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create projec" do
    assert_difference('Projec.count') do
      post :create, projec: { description: @projec.description, end_date: @projec.end_date, name: @projec.name, start_date: @projec.start_date }
    end

    assert_redirected_to projec_path(assigns(:projec))
  end

  test "should show projec" do
    get :show, id: @projec
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @projec
    assert_response :success
  end

  test "should update projec" do
    patch :update, id: @projec, projec: { description: @projec.description, end_date: @projec.end_date, name: @projec.name, start_date: @projec.start_date }
    assert_redirected_to projec_path(assigns(:projec))
  end

  test "should destroy projec" do
    assert_difference('Projec.count', -1) do
      delete :destroy, id: @projec
    end

    assert_redirected_to projecs_path
  end
end
