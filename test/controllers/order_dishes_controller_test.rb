require 'test_helper'

class OrderDishesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get order_dishes_create_url
    assert_response :success
  end

end
