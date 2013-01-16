require 'test_helper'

class CustomerAreasControllerTest < ActionController::TestCase
  setup do
    @customer_area = customer_areas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:customer_areas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create customer_area" do
    assert_difference('CustomerArea.count') do
      post :create, customer_area: { area_code: @customer_area.area_code, name: @customer_area.name }
    end

    assert_redirected_to customer_area_path(assigns(:customer_area))
  end

  test "should show customer_area" do
    get :show, id: @customer_area
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @customer_area
    assert_response :success
  end

  test "should update customer_area" do
    put :update, id: @customer_area, customer_area: { area_code: @customer_area.area_code, name: @customer_area.name }
    assert_redirected_to customer_area_path(assigns(:customer_area))
  end

  test "should destroy customer_area" do
    assert_difference('CustomerArea.count', -1) do
      delete :destroy, id: @customer_area
    end

    assert_redirected_to customer_areas_path
  end
end
