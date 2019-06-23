require "application_system_test_case"

class PersonalsTest < ApplicationSystemTestCase
  setup do
    @personal = personals(:one)
  end

  test "visiting the index" do
    visit personals_url
    assert_selector "h1", text: "Personals"
  end

  test "creating a Personal" do
    visit personals_url
    click_on "New Personal"

    fill_in "Birthdate", with: @personal.birthdate
    fill_in "Clarify", with: @personal.clarify
    check "Cpr" if @personal.cpr
    fill_in "Describe work with abused", with: @personal.describe_work_with_abused
    check "Discuss abuse" if @personal.discuss_abuse
    fill_in "Emer phone", with: @personal.emer_phone
    fill_in "Emergency contact", with: @personal.emergency_contact
    fill_in "Employer", with: @personal.employer
    check "Emt" if @personal.emt
    check "First aid" if @personal.first_aid
    check "Have worked with abused" if @personal.have_worked_with_abused
    check "Life guard" if @personal.life_guard
    check "Married" if @personal.married
    fill_in "Months in state", with: @personal.months_in_state
    check "Nurse" if @personal.nurse
    fill_in "Occupation", with: @personal.occupation
    fill_in "Relationship", with: @personal.relationship
    fill_in "Sex", with: @personal.sex
    fill_in "Shirt size", with: @personal.shirt_size
    fill_in "User", with: @personal.user_id
    check "Was victim" if @personal.was_victim
    fill_in "Why you want to counsel", with: @personal.why_you_want_to_counsel
    fill_in "Years in state", with: @personal.years_in_state
    click_on "Create Personal"

    assert_text "Personal was successfully created"
    click_on "Back"
  end

  test "updating a Personal" do
    visit personals_url
    click_on "Edit", match: :first

    fill_in "Birthdate", with: @personal.birthdate
    fill_in "Clarify", with: @personal.clarify
    check "Cpr" if @personal.cpr
    fill_in "Describe work with abused", with: @personal.describe_work_with_abused
    check "Discuss abuse" if @personal.discuss_abuse
    fill_in "Emer phone", with: @personal.emer_phone
    fill_in "Emergency contact", with: @personal.emergency_contact
    fill_in "Employer", with: @personal.employer
    check "Emt" if @personal.emt
    check "First aid" if @personal.first_aid
    check "Have worked with abused" if @personal.have_worked_with_abused
    check "Life guard" if @personal.life_guard
    check "Married" if @personal.married
    fill_in "Months in state", with: @personal.months_in_state
    check "Nurse" if @personal.nurse
    fill_in "Occupation", with: @personal.occupation
    fill_in "Relationship", with: @personal.relationship
    fill_in "Sex", with: @personal.sex
    fill_in "Shirt size", with: @personal.shirt_size
    fill_in "User", with: @personal.user_id
    check "Was victim" if @personal.was_victim
    fill_in "Why you want to counsel", with: @personal.why_you_want_to_counsel
    fill_in "Years in state", with: @personal.years_in_state
    click_on "Update Personal"

    assert_text "Personal was successfully updated"
    click_on "Back"
  end

  test "destroying a Personal" do
    visit personals_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Personal was successfully destroyed"
  end
end
