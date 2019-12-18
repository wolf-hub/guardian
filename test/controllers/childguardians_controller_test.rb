require 'test_helper'

class ChildguardiansControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get childguardians_new_url
    assert_response :success
  end

  test "should get create" do
    get childguardians_create_url
    assert_response :success
  end

  test "should get update" do
    get childguardians_update_url
    assert_response :success
  end

  test "should get edit" do
    get childguardians_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get childguardians_destroy_url
    assert_response :success
  end

  test "should get index" do
    get childguardians_index_url
    assert_response :success
  end

  test "should get show" do
    get childguardians_show_url
    assert_response :success
  end

end
