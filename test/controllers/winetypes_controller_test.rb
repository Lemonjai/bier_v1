require 'test_helper'

class WinetypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @winetype = winetypes(:one)
  end

  test "should get index" do
    get winetypes_url
    assert_response :success
  end

  test "should get new" do
    get new_winetype_url
    assert_response :success
  end

  test "should create winetype" do
    assert_difference('Winetype.count') do
      post winetypes_url, params: { winetype: { name: @winetype.name } }
    end

    assert_redirected_to winetype_url(Winetype.last)
  end

  test "should show winetype" do
    get winetype_url(@winetype)
    assert_response :success
  end

  test "should get edit" do
    get edit_winetype_url(@winetype)
    assert_response :success
  end

  test "should update winetype" do
    patch winetype_url(@winetype), params: { winetype: { name: @winetype.name } }
    assert_redirected_to winetype_url(@winetype)
  end

  test "should destroy winetype" do
    assert_difference('Winetype.count', -1) do
      delete winetype_url(@winetype)
    end

    assert_redirected_to winetypes_url
  end
end
