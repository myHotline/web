require 'test_helper'

class HotlinesControllerTest < ActionController::TestCase
  setup do
    @hotline = hotlines(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hotlines)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hotline" do
    assert_difference('Hotline.count') do
      post :create, hotline: { category: @hotline.category, description: @hotline.description, donate: @hotline.donate, hours: @hotline.hours, link: @hotline.link, name: @hotline.name, number: @hotline.number }
    end

    assert_redirected_to hotline_path(assigns(:hotline))
  end

  test "should show hotline" do
    get :show, id: @hotline
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hotline
    assert_response :success
  end

  test "should update hotline" do
    patch :update, id: @hotline, hotline: { category: @hotline.category, description: @hotline.description, donate: @hotline.donate, hours: @hotline.hours, link: @hotline.link, name: @hotline.name, number: @hotline.number }
    assert_redirected_to hotline_path(assigns(:hotline))
  end

  test "should destroy hotline" do
    assert_difference('Hotline.count', -1) do
      delete :destroy, id: @hotline
    end

    assert_redirected_to hotlines_path
  end
end
