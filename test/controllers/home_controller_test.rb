require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get about" do
    get home_about_url
    assert_response :success
  end

  test "should get team" do
    get home_team_url
    assert_response :success
  end

  test "should get blog" do
    get home_blog_url
    assert_response :success
  end

end
