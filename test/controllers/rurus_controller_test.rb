require 'test_helper'

class RurusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ruru = rurus(:one)
  end

  test "should get index" do
    get rurus_url
    assert_response :success
  end

  test "should get new" do
    get new_ruru_url
    assert_response :success
  end

  test "should create ruru" do
    assert_difference('Ruru.count') do
      post rurus_url, params: { ruru: { address: @ruru.address, email: @ruru.email, password: @ruru.password, phone: @ruru.phone, username: @ruru.username } }
    end

    assert_redirected_to ruru_url(Ruru.last)
  end

  test "should show ruru" do
    get ruru_url(@ruru)
    assert_response :success
  end

  test "should get edit" do
    get edit_ruru_url(@ruru)
    assert_response :success
  end

  test "should update ruru" do
    patch ruru_url(@ruru), params: { ruru: { address: @ruru.address, email: @ruru.email, password: @ruru.password, phone: @ruru.phone, username: @ruru.username } }
    assert_redirected_to ruru_url(@ruru)
  end

  test "should destroy ruru" do
    assert_difference('Ruru.count', -1) do
      delete ruru_url(@ruru)
    end

    assert_redirected_to rurus_url
  end
end
