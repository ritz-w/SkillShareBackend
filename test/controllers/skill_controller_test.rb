require 'test_helper'

class SkillControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get skill_index_url
    assert_response :success
  end

  test "should get update" do
    get skill_update_url
    assert_response :success
  end

end
