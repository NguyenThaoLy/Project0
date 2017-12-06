require 'test_helper'

class InforsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @infor = infors(:one)
  end

  test "should get index" do
    get infors_url
    assert_response :success
  end

  test "should get new" do
    get new_infor_url
    assert_response :success
  end

  test "should create infor" do
    assert_difference('Infor.count') do
      post infors_url, params: { infor: { address: @infor.address, email: @infor.email, password: @infor.password, phone: @infor.phone, soID: @infor.soID, username: @infor.username } }
    end

    assert_redirected_to infor_url(Infor.last)
  end

  test "should show infor" do
    get infor_url(@infor)
    assert_response :success
  end

  test "should get edit" do
    get edit_infor_url(@infor)
    assert_response :success
  end

  test "should update infor" do
    patch infor_url(@infor), params: { infor: { address: @infor.address, email: @infor.email, password: @infor.password, phone: @infor.phone, soID: @infor.soID, username: @infor.username } }
    assert_redirected_to infor_url(@infor)
  end

  test "should destroy infor" do
    assert_difference('Infor.count', -1) do
      delete infor_url(@infor)
    end

    assert_redirected_to infors_url
  end
end
