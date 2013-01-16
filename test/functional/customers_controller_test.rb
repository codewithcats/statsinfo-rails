require 'test_helper'

class CustomersControllerTest < ActionController::TestCase
  setup do
    @customer = customers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:customers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create customer" do
    assert_difference('Customer.count') do
      post :create, customer: { address: @customer.address, area_id: @customer.area_id, buy: @customer.buy, buy_avg: @customer.buy_avg, cont: @customer.cont, contact: @customer.contact, credit_limit: @customer.credit_limit, customer_code: @customer.customer_code, email: @customer.email, fax: @customer.fax, group_id: @customer.group_id, late: @customer.late, name: @customer.name, order: @customer.order, order_avg: @customer.order_avg, phone: @customer.phone, quanbuy: @customer.quanbuy, quanbuy_avg: @customer.quanbuy_avg, start_date: @customer.start_date }
    end

    assert_redirected_to customer_path(assigns(:customer))
  end

  test "should show customer" do
    get :show, id: @customer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @customer
    assert_response :success
  end

  test "should update customer" do
    put :update, id: @customer, customer: { address: @customer.address, area_id: @customer.area_id, buy: @customer.buy, buy_avg: @customer.buy_avg, cont: @customer.cont, contact: @customer.contact, credit_limit: @customer.credit_limit, customer_code: @customer.customer_code, email: @customer.email, fax: @customer.fax, group_id: @customer.group_id, late: @customer.late, name: @customer.name, order: @customer.order, order_avg: @customer.order_avg, phone: @customer.phone, quanbuy: @customer.quanbuy, quanbuy_avg: @customer.quanbuy_avg, start_date: @customer.start_date }
    assert_redirected_to customer_path(assigns(:customer))
  end

  test "should destroy customer" do
    assert_difference('Customer.count', -1) do
      delete :destroy, id: @customer
    end

    assert_redirected_to customers_path
  end
end
