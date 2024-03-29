class SolutionsController < ApplicationController

  def create
    @question = Question.find(params[:question_id])
    @solution = @question.solutions.build(solution_params)
    if @solution.save
      redirect_to question_path(@question)
    else
      @solutions = Solution.all
      render template: "questions/show"
    end
  end

  private

  def solution_params
    params.require(:solution).permit(:detail)
  end
end