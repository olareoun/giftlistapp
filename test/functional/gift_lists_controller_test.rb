require 'test_helper'

class GiftListsControllerTest < ActionController::TestCase
  setup do
    @gift_list = gift_lists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gift_lists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gift_list" do
    assert_difference('GiftList.count') do
      post :create, gift_list: { description: @gift_list.description, title: @gift_list.title }
    end

    assert_redirected_to gift_list_path(assigns(:gift_list))
  end

  test "should show gift_list" do
    get :show, id: @gift_list
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gift_list
    assert_response :success
  end

  test "should update gift_list" do
    put :update, id: @gift_list, gift_list: { description: @gift_list.description, title: @gift_list.title }
    assert_redirected_to gift_list_path(assigns(:gift_list))
  end

  test "should destroy gift_list" do
    assert_difference('GiftList.count', -1) do
      delete :destroy, id: @gift_list
    end

    assert_redirected_to gift_lists_path
  end
end
