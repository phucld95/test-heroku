require 'test_helper'

class OrderTablesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get order_tables_create_url
    assert_response :success
  end

  test "should get new" do
    get order_tables_new_url
    assert_response :success
  end

end
