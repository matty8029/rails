require "application_system_test_case"

class ValidationTestsTest < ApplicationSystemTestCase
  setup do
    @validation_test = validation_tests(:one)
  end

  test "visiting the index" do
    visit validation_tests_url
    assert_selector "h1", text: "Validation Tests"
  end

  test "creating a Validation test" do
    visit validation_tests_url
    click_on "New Validation Test"

    fill_in "Age", with: @validation_test.age
    fill_in "Mailaddress", with: @validation_test.mailaddress
    fill_in "Postnum", with: @validation_test.postNum
    fill_in "Url", with: @validation_test.url
    fill_in "Username", with: @validation_test.userName
    click_on "Create Validation test"

    assert_text "Validation test was successfully created"
    click_on "Back"
  end

  test "updating a Validation test" do
    visit validation_tests_url
    click_on "Edit", match: :first

    fill_in "Age", with: @validation_test.age
    fill_in "Mailaddress", with: @validation_test.mailaddress
    fill_in "Postnum", with: @validation_test.postNum
    fill_in "Url", with: @validation_test.url
    fill_in "Username", with: @validation_test.userName
    click_on "Update Validation test"

    assert_text "Validation test was successfully updated"
    click_on "Back"
  end

  test "destroying a Validation test" do
    visit validation_tests_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Validation test was successfully destroyed"
  end
end
