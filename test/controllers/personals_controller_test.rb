require 'test_helper'

class PersonalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @personal = personals(:one)
  end

  test "should get index" do
    get personals_url
    assert_response :success
  end

  test "should get new" do
    get new_personal_url
    assert_response :success
  end

  test "should create personal" do
    assert_difference('Personal.count') do
      post personals_url, params: { personal: { birthdate: @personal.birthdate, clarify: @personal.clarify, cpr: @personal.cpr, describe_work_with_abused: @personal.describe_work_with_abused, discuss_abuse: @personal.discuss_abuse, emer_phone: @personal.emer_phone, emergency_contact: @personal.emergency_contact, employer: @personal.employer, emt: @personal.emt, first_aid: @personal.first_aid, have_worked_with_abused: @personal.have_worked_with_abused, life_guard: @personal.life_guard, married: @personal.married, months_in_state: @personal.months_in_state, nurse: @personal.nurse, occupation: @personal.occupation, relationship: @personal.relationship, sex: @personal.sex, shirt_size: @personal.shirt_size, user_id: @personal.user_id, was_victim: @personal.was_victim, why_you_want_to_counsel: @personal.why_you_want_to_counsel, years_in_state: @personal.years_in_state } }
    end

    assert_redirected_to personal_url(Personal.last)
  end

  test "should show personal" do
    get personal_url(@personal)
    assert_response :success
  end

  test "should get edit" do
    get edit_personal_url(@personal)
    assert_response :success
  end

  test "should update personal" do
    patch personal_url(@personal), params: { personal: { birthdate: @personal.birthdate, clarify: @personal.clarify, cpr: @personal.cpr, describe_work_with_abused: @personal.describe_work_with_abused, discuss_abuse: @personal.discuss_abuse, emer_phone: @personal.emer_phone, emergency_contact: @personal.emergency_contact, employer: @personal.employer, emt: @personal.emt, first_aid: @personal.first_aid, have_worked_with_abused: @personal.have_worked_with_abused, life_guard: @personal.life_guard, married: @personal.married, months_in_state: @personal.months_in_state, nurse: @personal.nurse, occupation: @personal.occupation, relationship: @personal.relationship, sex: @personal.sex, shirt_size: @personal.shirt_size, user_id: @personal.user_id, was_victim: @personal.was_victim, why_you_want_to_counsel: @personal.why_you_want_to_counsel, years_in_state: @personal.years_in_state } }
    assert_redirected_to personal_url(@personal)
  end

  test "should destroy personal" do
    assert_difference('Personal.count', -1) do
      delete personal_url(@personal)
    end

    assert_redirected_to personals_url
  end
end
