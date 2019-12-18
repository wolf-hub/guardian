require 'test_helper'

class SpousesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get spouses_new_url
    assert_response :success
  end

  test "should get create" do
    get spouses_create_url
    assert_response :success
  end

  test "should get update" do
    get spouses_update_url
    assert_response :success
  end

  test "should get edit" do
    get spouses_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get spouses_destroy_url
    assert_response :success
  end

  test "should get index" do
    get spouses_index_url
    assert_response :success
  end

  test "should get show" do
    get spouses_show_url
    assert_response :success
  end

end
