require 'test_helper'

class EventosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get eventos_index_url
    assert_response :success
  end

  test "should get new" do
    get eventos_new_url
    assert_response :success
  end

  test "should get create" do
    get eventos_create_url
    assert_response :success
  end

  test "should get delete" do
    get eventos_delete_url
    assert_response :success
  end

end
