require "test_helper"

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get pages_home_url
    assert_response :success
  end

  test "should get foods" do
    get pages_foods_url
    assert_response :success
  end

  test "should get recipes" do
    get pages_recipes_url
    assert_response :success
  end

  test "should get shopping-lists" do
    get pages_shopping-lists_url
    assert_response :success
  end
end
