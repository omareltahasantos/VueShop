require 'test_helper'

class KeycapsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get keycaps_index_url
    assert_response :success
  end

  test "should get show" do
    get keycaps_show_url
    assert_response :success
  end

  test "should get create" do
    get keycaps_create_url
    assert_response :success
  end

  test "should get new" do
    get keycaps_new_url
    assert_response :success
  end

  test "should get update" do
    get keycaps_update_url
    assert_response :success
  end

  test "should get edit" do
    get keycaps_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get keycaps_destroy_url
    assert_response :success
  end

end
