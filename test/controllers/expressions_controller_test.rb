require 'test_helper'

class ExpressionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @expression = expressions(:one)
  end

  test "should get index" do
    get expressions_url
    assert_response :success
  end

  test "should get new" do
    get new_expression_url
    assert_response :success
  end

  test "should create expression" do
    assert_difference('Expression.count') do
      post expressions_url, params: { expression: { audio_en: @expression.audio_en, audio_pl: @expression.audio_pl, english_sntnc: @expression.english_sntnc, image: @expression.image, lesson_id: @expression.lesson_id, polish_sntnc: @expression.polish_sntnc, premium: @expression.premium, title: @expression.title } }
    end

    assert_redirected_to expression_url(Expression.last)
  end

  test "should show expression" do
    get expression_url(@expression)
    assert_response :success
  end

  test "should get edit" do
    get edit_expression_url(@expression)
    assert_response :success
  end

  test "should update expression" do
    patch expression_url(@expression), params: { expression: { audio_en: @expression.audio_en, audio_pl: @expression.audio_pl, english_sntnc: @expression.english_sntnc, image: @expression.image, lesson_id: @expression.lesson_id, polish_sntnc: @expression.polish_sntnc, premium: @expression.premium, title: @expression.title } }
    assert_redirected_to expression_url(@expression)
  end

  test "should destroy expression" do
    assert_difference('Expression.count', -1) do
      delete expression_url(@expression)
    end

    assert_redirected_to expressions_url
  end
end
