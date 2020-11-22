require 'test_helper'

class ValidationTestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @validation_test = validation_tests(:one)
  end

  test "should get index" do
    get validation_tests_url
    assert_response :success
  end

  test "should get new" do
    get new_validation_test_url
    assert_response :success
  end

  test "should create validation_test" do
    assert_difference('ValidationTest.count') do
      post validation_tests_url, params: { validation_test: { age: @validation_test.age, mailaddress: @validation_test.mailaddress, postNum: @validation_test.postNum, url: @validation_test.url, userName: @validation_test.userName } }
    end

    assert_redirected_to validation_test_url(ValidationTest.last)
  end

  test "should show validation_test" do
    get validation_test_url(@validation_test)
    assert_response :success
  end

  test "should get edit" do
    get edit_validation_test_url(@validation_test)
    assert_response :success
  end

  test "should update validation_test" do
    patch validation_test_url(@validation_test), params: { validation_test: { age: @validation_test.age, mailaddress: @validation_test.mailaddress, postNum: @validation_test.postNum, url: @validation_test.url, userName: @validation_test.userName } }
    assert_redirected_to validation_test_url(@validation_test)
  end

  test "should destroy validation_test" do
    assert_difference('ValidationTest.count', -1) do
      delete validation_test_url(@validation_test)
    end

    assert_redirected_to validation_tests_url
  end
end
