require "application_system_test_case"

class QuizzesTest < ApplicationSystemTestCase
  setup do
    @quiz = quizzes(:one)
  end

  test "visiting the index" do
    visit quizzes_url
    assert_selector "h1", text: "Quizzes"
  end

  test "creating a Quiz" do
    visit quizzes_url
    click_on "New Quiz"

    fill_in "Answer", with: @quiz.answer
    fill_in "Cover", with: @quiz.cover
    fill_in "Hint", with: @quiz.hint
    fill_in "Hint images", with: @quiz.hint_images
    fill_in "Level", with: @quiz.level_id
    fill_in "Point", with: @quiz.point
    click_on "Create Quiz"

    assert_text "Quiz was successfully created"
    click_on "Back"
  end

  test "updating a Quiz" do
    visit quizzes_url
    click_on "Edit", match: :first

    fill_in "Answer", with: @quiz.answer
    fill_in "Cover", with: @quiz.cover
    fill_in "Hint", with: @quiz.hint
    fill_in "Hint images", with: @quiz.hint_images
    fill_in "Level", with: @quiz.level_id
    fill_in "Point", with: @quiz.point
    click_on "Update Quiz"

    assert_text "Quiz was successfully updated"
    click_on "Back"
  end

  test "destroying a Quiz" do
    visit quizzes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Quiz was successfully destroyed"
  end
end
