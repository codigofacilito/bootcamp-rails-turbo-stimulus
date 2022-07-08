require "application_system_test_case"

class PhoneNumbersTest < ApplicationSystemTestCase
  setup do
    @phone_number = phone_numbers(:one)
  end

  test "visiting the index" do
    visit phone_numbers_url
    assert_selector "h1", text: "Phone numbers"
  end

  test "should create phone number" do
    visit phone_numbers_url
    click_on "New phone number"

    fill_in "Contact", with: @phone_number.contact_id
    fill_in "Number", with: @phone_number.number
    click_on "Create Phone number"

    assert_text "Phone number was successfully created"
    click_on "Back"
  end

  test "should update Phone number" do
    visit phone_number_url(@phone_number)
    click_on "Edit this phone number", match: :first

    fill_in "Contact", with: @phone_number.contact_id
    fill_in "Number", with: @phone_number.number
    click_on "Update Phone number"

    assert_text "Phone number was successfully updated"
    click_on "Back"
  end

  test "should destroy Phone number" do
    visit phone_number_url(@phone_number)
    click_on "Destroy this phone number", match: :first

    assert_text "Phone number was successfully destroyed"
  end
end
