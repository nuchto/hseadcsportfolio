require 'test_helper'

class ProjectsitesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @projectsite = projectsites(:one)
  end

  test "should get index" do
    get projectsites_url
    assert_response :success
  end

  test "should get new" do
    get new_projectsite_url
    assert_response :success
  end

  test "should create projectsite" do
    assert_difference('Projectsite.count') do
      post projectsites_url, params: { projectsite: { group_id: @projectsite.group_id, level: @projectsite.level, name: @projectsite.name } }
    end

    assert_redirected_to projectsite_url(Projectsite.last)
  end

  test "should show projectsite" do
    get projectsite_url(@projectsite)
    assert_response :success
  end

  test "should get edit" do
    get edit_projectsite_url(@projectsite)
    assert_response :success
  end

  test "should update projectsite" do
    patch projectsite_url(@projectsite), params: { projectsite: { group_id: @projectsite.group_id, level: @projectsite.level, name: @projectsite.name } }
    assert_redirected_to projectsite_url(@projectsite)
  end

  test "should destroy projectsite" do
    assert_difference('Projectsite.count', -1) do
      delete projectsite_url(@projectsite)
    end

    assert_redirected_to projectsites_url
  end
end
