require 'test_helper'

class DlyirrigationsControllerTest < ActionController::TestCase
  setup do
    @dlyirrigation = dlyirrigations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dlyirrigations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dlyirrigation" do
    assert_difference('Dlyirrigation.count') do
      post :create, dlyirrigation: { arearun: @dlyirrigation.arearun, date: @dlyirrigation.date, irricost: @dlyirrigation.irricost, irriset: @dlyirrigation.irriset, rainfall: @dlyirrigation.rainfall, remarks: @dlyirrigation.remarks, runhr: @dlyirrigation.runhr, section: @dlyirrigation.section }
    end

    assert_redirected_to dlyirrigation_path(assigns(:dlyirrigation))
  end

  test "should show dlyirrigation" do
    get :show, id: @dlyirrigation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dlyirrigation
    assert_response :success
  end

  test "should update dlyirrigation" do
    patch :update, id: @dlyirrigation, dlyirrigation: { arearun: @dlyirrigation.arearun, date: @dlyirrigation.date, irricost: @dlyirrigation.irricost, irriset: @dlyirrigation.irriset, rainfall: @dlyirrigation.rainfall, remarks: @dlyirrigation.remarks, runhr: @dlyirrigation.runhr, section: @dlyirrigation.section }
    assert_redirected_to dlyirrigation_path(assigns(:dlyirrigation))
  end

  test "should destroy dlyirrigation" do
    assert_difference('Dlyirrigation.count', -1) do
      delete :destroy, id: @dlyirrigation
    end

    assert_redirected_to dlyirrigations_path
  end
end
