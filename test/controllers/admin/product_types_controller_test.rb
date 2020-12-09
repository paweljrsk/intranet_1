require 'test_helper'

class Admin::ProductTypesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_product_types_index_url
    assert_response :success
  end

  test "should get new" do
    get admin_product_types_new_url
    assert_response :success
  end

  test "should get edit" do
    get admin_product_types_edit_url
    assert_response :success
  end

end
