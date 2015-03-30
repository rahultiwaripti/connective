require 'test_helper'

class PlansControllerTest < ActionController::TestCase
  setup do
    @plan = plans(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:plans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create plan" do
    assert_difference('Plan.count') do
      post :create, plan: { city: @plan.city, company: @plan.company, email: @plan.email, first_name: @plan.first_name, last_name: @plan.last_name, linkedin_profile_url: @plan.linkedin_profile_url, mobile_phone: @plan.mobile_phone, office_phone: @plan.office_phone, profile_picture: @plan.profile_picture, state: @plan.state, street: @plan.street, title: @plan.title, tokenurl: @plan.tokenurl, website: @plan.website, work_address: @plan.work_address, zip: @plan.zip }
    end

    assert_redirected_to plan_path(assigns(:plan))
  end

  test "should show plan" do
    get :show, id: @plan
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @plan
    assert_response :success
  end

  test "should update plan" do
    patch :update, id: @plan, plan: { city: @plan.city, company: @plan.company, email: @plan.email, first_name: @plan.first_name, last_name: @plan.last_name, linkedin_profile_url: @plan.linkedin_profile_url, mobile_phone: @plan.mobile_phone, office_phone: @plan.office_phone, profile_picture: @plan.profile_picture, state: @plan.state, street: @plan.street, title: @plan.title, tokenurl: @plan.tokenurl, website: @plan.website, work_address: @plan.work_address, zip: @plan.zip }
    assert_redirected_to plan_path(assigns(:plan))
  end

  test "should destroy plan" do
    assert_difference('Plan.count', -1) do
      delete :destroy, id: @plan
    end

    assert_redirected_to plans_path
  end
end
