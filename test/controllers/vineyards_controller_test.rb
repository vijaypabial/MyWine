require 'test_helper'

class VineyardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vineyard = vineyards(:one)
  end

  test "should get index" do
    get vineyards_url
    assert_response :success
  end

  test "should get new" do
    get new_vineyard_url
    assert_response :success
  end

  test "should create vineyard" do
    assert_difference('Vineyard.count') do
      post vineyards_url, params: { vineyard: { about: @vineyard.about, main_image: @vineyard.main_image, title: @vineyard.title } }
    end

    assert_redirected_to vineyard_url(Vineyard.last)
  end

  test "should show vineyard" do
    get vineyard_url(@vineyard)
    assert_response :success
  end

  test "should get edit" do
    get edit_vineyard_url(@vineyard)
    assert_response :success
  end

  test "should update vineyard" do
    patch vineyard_url(@vineyard), params: { vineyard: { about: @vineyard.about, main_image: @vineyard.main_image, title: @vineyard.title } }
    assert_redirected_to vineyard_url(@vineyard)
  end

  test "should destroy vineyard" do
    assert_difference('Vineyard.count', -1) do
      delete vineyard_url(@vineyard)
    end

    assert_redirected_to vineyards_url
  end
end
