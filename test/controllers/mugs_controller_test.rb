require 'test_helper'

class MugsControllerTest < ActionDispatch::IntegrationTest

  test "should get new" do
    get mugs_new_url
    assert_response :success
  end

  test "should get create" do
    get mugs_create_url
    assert_response :success
  end

  test "should get show" do
    get mugs_show_url
    assert_response :success
  end

  test "should get index" do
    get mugs_index_url
    assert_response :success
  end
end
