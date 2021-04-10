require 'test_helper'

class CellosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cello = cellos(:one)
  end

  test "should get index" do
    get cellos_url
    assert_response :success
  end

  test "should get new" do
    get new_cello_url
    assert_response :success
  end

  test "should create cello" do
    assert_difference('Cello.count') do
      post cellos_url, params: { cello: { name: @cello.name, phone: @cello.phone } }
    end

    assert_redirected_to cello_url(Cello.last)
  end

  test "should show cello" do
    get cello_url(@cello)
    assert_response :success
  end

  test "should get edit" do
    get edit_cello_url(@cello)
    assert_response :success
  end

  test "should update cello" do
    patch cello_url(@cello), params: { cello: { name: @cello.name, phone: @cello.phone } }
    assert_redirected_to cello_url(@cello)
  end

  test "should destroy cello" do
    assert_difference('Cello.count', -1) do
      delete cello_url(@cello)
    end

    assert_redirected_to cellos_url
  end
end
