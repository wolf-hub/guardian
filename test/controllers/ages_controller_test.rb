require 'test_helper'

class AgesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get ages_new_url
    assert_response :success
  end

  test "should get create" do
    get ages_create_url
    assert_response :success
  end

  test "should get update" do
    get ages_update_url
    assert_response :success
  end

  test "should get edit" do
    get ages_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get ages_destroy_url
    assert_response :success
  end

  test "should get index" do
    get ages_index_url
    assert_response :success
  end

  test "should get show" do
    get ages_show_url
    assert_response :success
  end

end
