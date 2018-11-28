require 'test_helper'

class PortraitsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @portrait = portraits(:one)
  end

  test "should get index" do
    get portraits_url
    assert_response :success
  end

  test "should get new" do
    get new_portrait_url
    assert_response :success
  end

  test "should create portrait" do
    assert_difference('Portrait.count') do
      post portraits_url, params: { portrait: { image: @portrait.image, level: @portrait.level, person_id: @portrait.person_id } }
    end

    assert_redirected_to portrait_url(Portrait.last)
  end

  test "should show portrait" do
    get portrait_url(@portrait)
    assert_response :success
  end

  test "should get edit" do
    get edit_portrait_url(@portrait)
    assert_response :success
  end

  test "should update portrait" do
    patch portrait_url(@portrait), params: { portrait: { image: @portrait.image, level: @portrait.level, person_id: @portrait.person_id } }
    assert_redirected_to portrait_url(@portrait)
  end

  test "should destroy portrait" do
    assert_difference('Portrait.count', -1) do
      delete portrait_url(@portrait)
    end

    assert_redirected_to portraits_url
  end
end
