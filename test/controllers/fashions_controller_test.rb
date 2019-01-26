require 'test_helper'

class FashionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fashion = fashions(:one)
  end

  test "should get index" do
    get fashions_url
    assert_response :success
  end

  test "should get new" do
    get new_fashion_url
    assert_response :success
  end

  test "should create fashion" do
    assert_difference('Fashion.count') do
      post fashions_url, params: { fashion: { name: @fashion.name } }
    end

    assert_redirected_to fashion_url(Fashion.last)
  end

  test "should show fashion" do
    get fashion_url(@fashion)
    assert_response :success
  end

  test "should get edit" do
    get edit_fashion_url(@fashion)
    assert_response :success
  end

  test "should update fashion" do
    patch fashion_url(@fashion), params: { fashion: { name: @fashion.name } }
    assert_redirected_to fashion_url(@fashion)
  end

  test "should destroy fashion" do
    assert_difference('Fashion.count', -1) do
      delete fashion_url(@fashion)
    end

    assert_redirected_to fashions_url
  end
end
