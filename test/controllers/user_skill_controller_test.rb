require 'test_helper'

class UserSkillControllerTest < ActionDispatch::IntegrationTest
  test "should get user:Belongs_to" do
    get user_skill_user:Belongs_to_url
    assert_response :success
  end

  test "should get skill:Belongs_to" do
    get user_skill_skill:Belongs_to_url
    assert_response :success
  end

end
