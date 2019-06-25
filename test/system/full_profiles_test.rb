require "application_system_test_case"

class FullProfilesTest < ApplicationSystemTestCase
  setup do
    @full_profile = full_profiles(:one)
  end

  test "visiting the index" do
    visit full_profiles_url
    assert_selector "h1", text: "Full Profiles"
  end

  test "creating a Full profile" do
    visit full_profiles_url
    click_on "New Full Profile"

    check "Can lead devotion" if @full_profile.can_lead_devotion
    fill_in "Church", with: @full_profile.church
    fill_in "Church phone", with: @full_profile.church_phone
    check "Commited to christ" if @full_profile.commited_to_christ
    fill_in "Describe", with: @full_profile.describe
    fill_in "Description of you", with: @full_profile.description_of_you
    fill_in "How long", with: @full_profile.how_long
    fill_in "Pastors name", with: @full_profile.pastors_name
    fill_in "Preferred age", with: @full_profile.preferred_age
    fill_in "Strengths", with: @full_profile.strengths
    fill_in "User", with: @full_profile.user_id
    fill_in "Weaknesses", with: @full_profile.weaknesses
    fill_in "Where when", with: @full_profile.where_when
    check "Worked with abused" if @full_profile.worked_with_abused
    check "Worked with children" if @full_profile.worked_with_children
    click_on "Create Full profile"

    assert_text "Full profile was successfully created"
    click_on "Back"
  end

  test "updating a Full profile" do
    visit full_profiles_url
    click_on "Edit", match: :first

    check "Can lead devotion" if @full_profile.can_lead_devotion
    fill_in "Church", with: @full_profile.church
    fill_in "Church phone", with: @full_profile.church_phone
    check "Commited to christ" if @full_profile.commited_to_christ
    fill_in "Describe", with: @full_profile.describe
    fill_in "Description of you", with: @full_profile.description_of_you
    fill_in "How long", with: @full_profile.how_long
    fill_in "Pastors name", with: @full_profile.pastors_name
    fill_in "Preferred age", with: @full_profile.preferred_age
    fill_in "Strengths", with: @full_profile.strengths
    fill_in "User", with: @full_profile.user_id
    fill_in "Weaknesses", with: @full_profile.weaknesses
    fill_in "Where when", with: @full_profile.where_when
    check "Worked with abused" if @full_profile.worked_with_abused
    check "Worked with children" if @full_profile.worked_with_children
    click_on "Update Full profile"

    assert_text "Full profile was successfully updated"
    click_on "Back"
  end

  test "destroying a Full profile" do
    visit full_profiles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Full profile was successfully destroyed"
  end
end
