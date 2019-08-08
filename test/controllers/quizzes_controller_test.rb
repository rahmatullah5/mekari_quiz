require 'test_helper'

class QuizzesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @quiz = quizzes(:one)
  end

  test "should get index" do
    get quizzes_url
    assert_response :success
  end

  test "should get new" do
    get new_quiz_url
    assert_response :success
  end

  test "should create quiz" do
    assert_difference('Quiz.count') do
      post quizzes_url, params: { quiz: { answer: @quiz.answer, cover: @quiz.cover, hint: @quiz.hint, hint_images: @quiz.hint_images, level_id: @quiz.level_id, point: @quiz.point } }
    end

    assert_redirected_to quiz_url(Quiz.last)
  end

  test "should show quiz" do
    get quiz_url(@quiz)
    assert_response :success
  end

  test "should get edit" do
    get edit_quiz_url(@quiz)
    assert_response :success
  end

  test "should update quiz" do
    patch quiz_url(@quiz), params: { quiz: { answer: @quiz.answer, cover: @quiz.cover, hint: @quiz.hint, hint_images: @quiz.hint_images, level_id: @quiz.level_id, point: @quiz.point } }
    assert_redirected_to quiz_url(@quiz)
  end

  test "should destroy quiz" do
    assert_difference('Quiz.count', -1) do
      delete quiz_url(@quiz)
    end

    assert_redirected_to quizzes_url
  end
end
