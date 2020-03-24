class QuestionsController < ApplicationController
  def index
    @questions = Question.all.order(updated_at: :desc)
    @question = Question.new
  end
end