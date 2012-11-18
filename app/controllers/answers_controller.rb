class AnswersController < ApplicationController

	def create
		@poll = Poll.find(params[:poll_id])
		@answer = @poll.answers.build(params[:answer])
		if @answer.save
			render :notice => "Thank you for your answer!"
	end
end