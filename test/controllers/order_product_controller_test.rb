require 'test_helper'

class OrderProductControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get order_product_create_url
    assert_response :success
  end

  test "should get update" do
    get order_product_update_url
    assert_response :success
  end

  test "should get destroy" do
    get order_product_destroy_url
    assert_response :success
  end

end
