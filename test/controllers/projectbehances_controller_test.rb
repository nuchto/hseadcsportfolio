require 'test_helper'

class ProjectbehancesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @projectbehance = projectbehances(:one)
  end

  test "should get index" do
    get projectbehances_url
    assert_response :success
  end

  test "should get new" do
    get new_projectbehance_url
    assert_response :success
  end

  test "should create projectbehance" do
    assert_difference('Projectbehance.count') do
      post projectbehances_url, params: { projectbehance: { group_id: @projectbehance.group_id, level: @projectbehance.level, name: @projectbehance.name } }
    end

    assert_redirected_to projectbehance_url(Projectbehance.last)
  end

  test "should show projectbehance" do
    get projectbehance_url(@projectbehance)
    assert_response :success
  end

  test "should get edit" do
    get edit_projectbehance_url(@projectbehance)
    assert_response :success
  end

  test "should update projectbehance" do
    patch projectbehance_url(@projectbehance), params: { projectbehance: { group_id: @projectbehance.group_id, level: @projectbehance.level, name: @projectbehance.name } }
    assert_redirected_to projectbehance_url(@projectbehance)
  end

  test "should destroy projectbehance" do
    assert_difference('Projectbehance.count', -1) do
      delete projectbehance_url(@projectbehance)
    end

    assert_redirected_to projectbehances_url
  end
end
