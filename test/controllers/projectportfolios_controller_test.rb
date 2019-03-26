require 'test_helper'

class ProjectportfoliosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @projectportfolio = projectportfolios(:one)
  end

  test "should get index" do
    get projectportfolios_url
    assert_response :success
  end

  test "should get new" do
    get new_projectportfolio_url
    assert_response :success
  end

  test "should create projectportfolio" do
    assert_difference('Projectportfolio.count') do
      post projectportfolios_url, params: { projectportfolio: { group_id: @projectportfolio.group_id, level: @projectportfolio.level, name: @projectportfolio.name } }
    end

    assert_redirected_to projectportfolio_url(Projectportfolio.last)
  end

  test "should show projectportfolio" do
    get projectportfolio_url(@projectportfolio)
    assert_response :success
  end

  test "should get edit" do
    get edit_projectportfolio_url(@projectportfolio)
    assert_response :success
  end

  test "should update projectportfolio" do
    patch projectportfolio_url(@projectportfolio), params: { projectportfolio: { group_id: @projectportfolio.group_id, level: @projectportfolio.level, name: @projectportfolio.name } }
    assert_redirected_to projectportfolio_url(@projectportfolio)
  end

  test "should destroy projectportfolio" do
    assert_difference('Projectportfolio.count', -1) do
      delete projectportfolio_url(@projectportfolio)
    end

    assert_redirected_to projectportfolios_url
  end
end
