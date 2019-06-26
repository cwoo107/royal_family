require "application_system_test_case"

class ReferencesTest < ApplicationSystemTestCase
  setup do
    @reference = references(:one)
  end

  test "visiting the index" do
    visit references_url
    assert_selector "h1", text: "References"
  end

  test "creating a Reference" do
    visit references_url
    click_on "New Reference"

    fill_in "College", with: @reference.college
    fill_in "Date1", with: @reference.date1
    fill_in "Date2", with: @reference.date2
    fill_in "High", with: @reference.high
    fill_in "Major", with: @reference.major
    fill_in "Ref1 addr", with: @reference.ref1_addr
    fill_in "Ref1 phone", with: @reference.ref1_phone
    fill_in "Ref2 addr", with: @reference.ref2_addr
    fill_in "Ref2 phone", with: @reference.ref2_phone
    fill_in "Ref3 addr", with: @reference.ref3_addr
    fill_in "Ref3 phone", with: @reference.ref3_phone
    fill_in "Reference1", with: @reference.reference1
    fill_in "Reference2", with: @reference.reference2
    fill_in "Reference3", with: @reference.reference3
    fill_in "School", with: @reference.school
    fill_in "User", with: @reference.user_id
    click_on "Create Reference"

    assert_text "Reference was successfully created"
    click_on "Back"
  end

  test "updating a Reference" do
    visit references_url
    click_on "Edit", match: :first

    fill_in "College", with: @reference.college
    fill_in "Date1", with: @reference.date1
    fill_in "Date2", with: @reference.date2
    fill_in "High", with: @reference.high
    fill_in "Major", with: @reference.major
    fill_in "Ref1 addr", with: @reference.ref1_addr
    fill_in "Ref1 phone", with: @reference.ref1_phone
    fill_in "Ref2 addr", with: @reference.ref2_addr
    fill_in "Ref2 phone", with: @reference.ref2_phone
    fill_in "Ref3 addr", with: @reference.ref3_addr
    fill_in "Ref3 phone", with: @reference.ref3_phone
    fill_in "Reference1", with: @reference.reference1
    fill_in "Reference2", with: @reference.reference2
    fill_in "Reference3", with: @reference.reference3
    fill_in "School", with: @reference.school
    fill_in "User", with: @reference.user_id
    click_on "Update Reference"

    assert_text "Reference was successfully updated"
    click_on "Back"
  end

  test "destroying a Reference" do
    visit references_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Reference was successfully destroyed"
  end
end
