class QuizzesController < ApplicationController
 skip_before_action :verify_authenticity_token, only: [:answer]
  before_action :set_quiz, only: [:answer]
  before_action :set_level
  # GET /quizzes
  # GET /quizzes.json
  def index
    @quiz = @level.quizzes.order('RANDOM()').first
  end


  def answer
    if @quiz.correct_answer?(quiz_params[:answer].downcase)
      session[:point] += @quiz.point
      flash[:msg] = 'success'
    else
      flash[:msg] = 'failed'
    end

    redirect_to level_quizzes_path(@level)
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quiz
      @quiz = Quiz.find(params[:quiz_id])
    end

    def set_level
      @level = Level.find(params[:level_id])
    end

    def quiz_params
      params.require(:quiz).permit(:answer)
    end
end
