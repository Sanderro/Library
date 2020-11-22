require 'test_helper'

class BorrowsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get borrows_index_url
    assert_response :success
  end

  test "should get show" do
    get borrows_show_url
    assert_response :success
  end

  test "should get new" do
    get borrows_new_url
    assert_response :success
  end

  test "should get edit" do
    get borrows_edit_url
    assert_response :success
  end

end
