require 'test_helper'

class InforUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @infor_user = infor_users(:one)
  end

  test "should get index" do
    get infor_users_url
    assert_response :success
  end

  test "should get new" do
    get new_infor_user_url
    assert_response :success
  end

  test "should create infor_user" do
    assert_difference('InforUser.count') do
      post infor_users_url, params: { infor_user: { address: @infor_user.address, email: @infor_user.email, password: @infor_user.password, phone: @infor_user.phone, soID: @infor_user.soID, username: @infor_user.username } }
    end

    assert_redirected_to infor_user_url(InforUser.last)
  end

  test "should show infor_user" do
    get infor_user_url(@infor_user)
    assert_response :success
  end

  test "should get edit" do
    get edit_infor_user_url(@infor_user)
    assert_response :success
  end

  test "should update infor_user" do
    patch infor_user_url(@infor_user), params: { infor_user: { address: @infor_user.address, email: @infor_user.email, password: @infor_user.password, phone: @infor_user.phone, soID: @infor_user.soID, username: @infor_user.username } }
    assert_redirected_to infor_user_url(@infor_user)
  end

  test "should destroy infor_user" do
    assert_difference('InforUser.count', -1) do
      delete infor_user_url(@infor_user)
    end

    assert_redirected_to infor_users_url
  end
end
