require 'test_helper'

class SalesControllerTest < ActionController::TestCase
  setup do
    @sale = sales(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sales)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sale" do
    assert_difference('Sale.count') do
      post :create, sale: { amount: @sale.amount, customer_id: @sale.customer_id, date: @sale.date, remark: @sale.remark, sale_code: @sale.sale_code, time_code: @sale.time_code, user_code: @sale.user_code, vat_amount: @sale.vat_amount, vat_rate: @sale.vat_rate }
    end

    assert_redirected_to sale_path(assigns(:sale))
  end

  test "should show sale" do
    get :show, id: @sale
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sale
    assert_response :success
  end

  test "should update sale" do
    put :update, id: @sale, sale: { amount: @sale.amount, customer_id: @sale.customer_id, date: @sale.date, remark: @sale.remark, sale_code: @sale.sale_code, time_code: @sale.time_code, user_code: @sale.user_code, vat_amount: @sale.vat_amount, vat_rate: @sale.vat_rate }
    assert_redirected_to sale_path(assigns(:sale))
  end

  test "should destroy sale" do
    assert_difference('Sale.count', -1) do
      delete :destroy, id: @sale
    end

    assert_redirected_to sales_path
  end
end
