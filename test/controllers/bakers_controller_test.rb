require 'test_helper'

class BakersControllerTest < ActionController::TestCase
  setup do
    @baker = bakers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bakers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create baker" do
    assert_difference('Baker.count') do
      post :create, baker: { crypted_password: @baker.crypted_password, email: @baker.email, password_salt: @baker.password_salt, persistence_token: @baker.persistence_token, username: @baker.username }
    end

    assert_redirected_to baker_path(assigns(:baker))
  end

  test "should show baker" do
    get :show, id: @baker
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @baker
    assert_response :success
  end

  test "should update baker" do
    patch :update, id: @baker, baker: { crypted_password: @baker.crypted_password, email: @baker.email, password_salt: @baker.password_salt, persistence_token: @baker.persistence_token, username: @baker.username }
    assert_redirected_to baker_path(assigns(:baker))
  end

  test "should destroy baker" do
    assert_difference('Baker.count', -1) do
      delete :destroy, id: @baker
    end

    assert_redirected_to bakers_path
  end
end
