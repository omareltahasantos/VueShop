require 'test_helper'

class MousesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get mouses_index_url
    assert_response :success
  end

  test "should get show" do
    get mouses_show_url
    assert_response :success
  end

  test "should get create" do
    get mouses_create_url
    assert_response :success
  end

  test "should get new" do
    get mouses_new_url
    assert_response :success
  end

  test "should get update" do
    get mouses_update_url
    assert_response :success
  end

  test "should get edit" do
    get mouses_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get mouses_destroy_url
    assert_response :success
  end

end
