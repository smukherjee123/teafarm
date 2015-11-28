require 'test_helper'

class IrrisetsControllerTest < ActionController::TestCase
  setup do
    @irriset = irrisets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:irrisets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create irriset" do
    assert_difference('Irriset.count') do
      post :create, irriset: { fuel: @irriset.fuel, fuelperhr: @irriset.fuelperhr, gpm: @irriset.gpm, location_id: @irriset.location_id, motordet: @irriset.motordet, motorhp: @irriset.motorhp, setname: @irriset.setname }
    end

    assert_redirected_to irriset_path(assigns(:irriset))
  end

  test "should show irriset" do
    get :show, id: @irriset
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @irriset
    assert_response :success
  end

  test "should update irriset" do
    patch :update, id: @irriset, irriset: { fuel: @irriset.fuel, fuelperhr: @irriset.fuelperhr, gpm: @irriset.gpm, location_id: @irriset.location_id, motordet: @irriset.motordet, motorhp: @irriset.motorhp, setname: @irriset.setname }
    assert_redirected_to irriset_path(assigns(:irriset))
  end

  test "should destroy irriset" do
    assert_difference('Irriset.count', -1) do
      delete :destroy, id: @irriset
    end

    assert_redirected_to irrisets_path
  end
end
