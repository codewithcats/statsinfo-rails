require 'test_helper'

class SaleLinesControllerTest < ActionController::TestCase
  setup do
    @sale_line = sale_lines(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sale_lines)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sale_line" do
    assert_difference('SaleLine.count') do
      post :create, sale_line: { date: @sale_line.date, discount: @sale_line.discount, order_amount: @sale_line.order_amount, price_unit: @sale_line.price_unit, product_id: @sale_line.product_id, product_name: @sale_line.product_name, sale_id: @sale_line.sale_id, sale_line_code: @sale_line.sale_line_code, subtotal: @sale_line.subtotal }
    end

    assert_redirected_to sale_line_path(assigns(:sale_line))
  end

  test "should show sale_line" do
    get :show, id: @sale_line
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sale_line
    assert_response :success
  end

  test "should update sale_line" do
    put :update, id: @sale_line, sale_line: { date: @sale_line.date, discount: @sale_line.discount, order_amount: @sale_line.order_amount, price_unit: @sale_line.price_unit, product_id: @sale_line.product_id, product_name: @sale_line.product_name, sale_id: @sale_line.sale_id, sale_line_code: @sale_line.sale_line_code, subtotal: @sale_line.subtotal }
    assert_redirected_to sale_line_path(assigns(:sale_line))
  end

  test "should destroy sale_line" do
    assert_difference('SaleLine.count', -1) do
      delete :destroy, id: @sale_line
    end

    assert_redirected_to sale_lines_path
  end
end
