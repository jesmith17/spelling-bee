require 'test_helper'

class SpellingWordsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @spelling_word = spelling_words(:one)
  end

  test "should get index" do
    get spelling_words_url
    assert_response :success
  end

  test "should get new" do
    get new_spelling_word_url
    assert_response :success
  end

  test "should create spelling_word" do
    assert_difference('SpellingWord.count') do
      post spelling_words_url, params: { spelling_word: { definition: @spelling_word.definition, spelling_list_id: @spelling_word.spelling_list_id, word: @spelling_word.word } }
    end

    assert_redirected_to spelling_word_url(SpellingWord.last)
  end

  test "should show spelling_word" do
    get spelling_word_url(@spelling_word)
    assert_response :success
  end

  test "should get edit" do
    get edit_spelling_word_url(@spelling_word)
    assert_response :success
  end

  test "should update spelling_word" do
    patch spelling_word_url(@spelling_word), params: { spelling_word: { definition: @spelling_word.definition, spelling_list_id: @spelling_word.spelling_list_id, word: @spelling_word.word } }
    assert_redirected_to spelling_word_url(@spelling_word)
  end

  test "should destroy spelling_word" do
    assert_difference('SpellingWord.count', -1) do
      delete spelling_word_url(@spelling_word)
    end

    assert_redirected_to spelling_words_url
  end
end
