require 'test_helper'

class FullProfilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @full_profile = full_profiles(:one)
  end

  test "should get index" do
    get full_profiles_url
    assert_response :success
  end

  test "should get new" do
    get new_full_profile_url
    assert_response :success
  end

  test "should create full_profile" do
    assert_difference('FullProfile.count') do
      post full_profiles_url, params: { full_profile: { can_lead_devotion: @full_profile.can_lead_devotion, church: @full_profile.church, church_phone: @full_profile.church_phone, commited_to_christ: @full_profile.commited_to_christ, describe: @full_profile.describe, description_of_you: @full_profile.description_of_you, how_long: @full_profile.how_long, pastors_name: @full_profile.pastors_name, preferred_age: @full_profile.preferred_age, strengths: @full_profile.strengths, user_id: @full_profile.user_id, weaknesses: @full_profile.weaknesses, where_when: @full_profile.where_when, worked_with_abused: @full_profile.worked_with_abused, worked_with_children: @full_profile.worked_with_children } }
    end

    assert_redirected_to full_profile_url(FullProfile.last)
  end

  test "should show full_profile" do
    get full_profile_url(@full_profile)
    assert_response :success
  end

  test "should get edit" do
    get edit_full_profile_url(@full_profile)
    assert_response :success
  end

  test "should update full_profile" do
    patch full_profile_url(@full_profile), params: { full_profile: { can_lead_devotion: @full_profile.can_lead_devotion, church: @full_profile.church, church_phone: @full_profile.church_phone, commited_to_christ: @full_profile.commited_to_christ, describe: @full_profile.describe, description_of_you: @full_profile.description_of_you, how_long: @full_profile.how_long, pastors_name: @full_profile.pastors_name, preferred_age: @full_profile.preferred_age, strengths: @full_profile.strengths, user_id: @full_profile.user_id, weaknesses: @full_profile.weaknesses, where_when: @full_profile.where_when, worked_with_abused: @full_profile.worked_with_abused, worked_with_children: @full_profile.worked_with_children } }
    assert_redirected_to full_profile_url(@full_profile)
  end

  test "should destroy full_profile" do
    assert_difference('FullProfile.count', -1) do
      delete full_profile_url(@full_profile)
    end

    assert_redirected_to full_profiles_url
  end
end
