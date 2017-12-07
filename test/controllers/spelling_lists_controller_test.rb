require 'test_helper'

class SpellingListsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @spelling_list = spelling_lists(:one)
  end

  test "should get index" do
    get spelling_lists_url
    assert_response :success
  end

  test "should get new" do
    get new_spelling_list_url
    assert_response :success
  end

  test "should create spelling_list" do
    assert_difference('SpellingList.count') do
      post spelling_lists_url, params: { spelling_list: {  } }
    end

    assert_redirected_to spelling_list_url(SpellingList.last)
  end

  test "should show spelling_list" do
    get spelling_list_url(@spelling_list)
    assert_response :success
  end

  test "should get edit" do
    get edit_spelling_list_url(@spelling_list)
    assert_response :success
  end

  test "should update spelling_list" do
    patch spelling_list_url(@spelling_list), params: { spelling_list: {  } }
    assert_redirected_to spelling_list_url(@spelling_list)
  end

  test "should destroy spelling_list" do
    assert_difference('SpellingList.count', -1) do
      delete spelling_list_url(@spelling_list)
    end

    assert_redirected_to spelling_lists_url
  end
end
