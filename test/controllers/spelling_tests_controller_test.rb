require 'test_helper'

class SpellingTestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @spelling_test = spelling_tests(:one)
  end

  test "should get index" do
    get spelling_tests_url
    assert_response :success
  end

  test "should get new" do
    get new_spelling_test_url
    assert_response :success
  end

  test "should create spelling_test" do
    assert_difference('SpellingTest.count') do
      post spelling_tests_url, params: { spelling_test: { name: @spelling_test.name, practice: @spelling_test.practice, teacher_id: @spelling_test.teacher_id, week_id: @spelling_test.week_id } }
    end

    assert_redirected_to spelling_test_url(SpellingTest.last)
  end

  test "should show spelling_test" do
    get spelling_test_url(@spelling_test)
    assert_response :success
  end

  test "should get edit" do
    get edit_spelling_test_url(@spelling_test)
    assert_response :success
  end

  test "should update spelling_test" do
    patch spelling_test_url(@spelling_test), params: { spelling_test: { name: @spelling_test.name, practice: @spelling_test.practice, teacher_id: @spelling_test.teacher_id, week_id: @spelling_test.week_id } }
    assert_redirected_to spelling_test_url(@spelling_test)
  end

  test "should destroy spelling_test" do
    assert_difference('SpellingTest.count', -1) do
      delete spelling_test_url(@spelling_test)
    end

    assert_redirected_to spelling_tests_url
  end
end
