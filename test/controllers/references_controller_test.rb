require 'test_helper'

class ReferencesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @reference = references(:one)
  end

  test "should get index" do
    get references_url
    assert_response :success
  end

  test "should get new" do
    get new_reference_url
    assert_response :success
  end

  test "should create reference" do
    assert_difference('Reference.count') do
      post references_url, params: { reference: { college: @reference.college, date1: @reference.date1, date2: @reference.date2, high: @reference.high, major: @reference.major, ref1_addr: @reference.ref1_addr, ref1_phone: @reference.ref1_phone, ref2_addr: @reference.ref2_addr, ref2_phone: @reference.ref2_phone, ref3_addr: @reference.ref3_addr, ref3_phone: @reference.ref3_phone, reference1: @reference.reference1, reference2: @reference.reference2, reference3: @reference.reference3, school: @reference.school, user_id: @reference.user_id } }
    end

    assert_redirected_to reference_url(Reference.last)
  end

  test "should show reference" do
    get reference_url(@reference)
    assert_response :success
  end

  test "should get edit" do
    get edit_reference_url(@reference)
    assert_response :success
  end

  test "should update reference" do
    patch reference_url(@reference), params: { reference: { college: @reference.college, date1: @reference.date1, date2: @reference.date2, high: @reference.high, major: @reference.major, ref1_addr: @reference.ref1_addr, ref1_phone: @reference.ref1_phone, ref2_addr: @reference.ref2_addr, ref2_phone: @reference.ref2_phone, ref3_addr: @reference.ref3_addr, ref3_phone: @reference.ref3_phone, reference1: @reference.reference1, reference2: @reference.reference2, reference3: @reference.reference3, school: @reference.school, user_id: @reference.user_id } }
    assert_redirected_to reference_url(@reference)
  end

  test "should destroy reference" do
    assert_difference('Reference.count', -1) do
      delete reference_url(@reference)
    end

    assert_redirected_to references_url
  end
end
