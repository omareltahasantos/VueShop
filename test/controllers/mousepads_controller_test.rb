require 'test_helper'

class MousepadsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get mousepads_index_url
    assert_response :success
  end

  test "should get show" do
    get mousepads_show_url
    assert_response :success
  end

  test "should get create" do
    get mousepads_create_url
    assert_response :success
  end

  test "should get new" do
    get mousepads_new_url
    assert_response :success
  end

  test "should get update" do
    get mousepads_update_url
    assert_response :success
  end

  test "should get edit" do
    get mousepads_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get mousepads_destroy_url
    assert_response :success
  end

end
