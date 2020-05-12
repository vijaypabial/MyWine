require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get pages_home_url
    assert_response :success
  end

  test "should get vineyards" do
    get pages_vineyards_url
    assert_response :success
  end

  test "should get wines" do
    get pages_wines_url
    assert_response :success
  end

  test "should get my_cart" do
    get pages_my_cart_url
    assert_response :success
  end

  test "should get contact" do
    get pages_contact_url
    assert_response :success
  end

end
