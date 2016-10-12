require 'test_helper'

class BeertypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @beertype = beertypes(:one)
  end

  test "should get index" do
    get beertypes_url
    assert_response :success
  end

  test "should get new" do
    get new_beertype_url
    assert_response :success
  end

  test "should create beertype" do
    assert_difference('Beertype.count') do
      post beertypes_url, params: { beertype: { name: @beertype.name } }
    end

    assert_redirected_to beertype_url(Beertype.last)
  end

  test "should show beertype" do
    get beertype_url(@beertype)
    assert_response :success
  end

  test "should get edit" do
    get edit_beertype_url(@beertype)
    assert_response :success
  end

  test "should update beertype" do
    patch beertype_url(@beertype), params: { beertype: { name: @beertype.name } }
    assert_redirected_to beertype_url(@beertype)
  end

  test "should destroy beertype" do
    assert_difference('Beertype.count', -1) do
      delete beertype_url(@beertype)
    end

    assert_redirected_to beertypes_url
  end
end
