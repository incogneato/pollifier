class PollsController < ApplicationController

	def index
		@poll = Poll.new
		@polls = Poll.all
	end

	def create
		@poll = Poll.new(params[:poll])
		if @poll.save
			redirect_to @poll, notice: 'Poll was successfully created.' 
		else
			flash[:error] = "Something went wrong!"
			render 'new'
		end
	end

	def edit
		@poll = Poll.find(params[:id])
	end

	def update
		@poll = Poll.find(params[:id])
		if @poll.update_attributes(params[:poll])
			redirect_to @poll, notice: 'Poll was successfully updated.' 
		else
			flash[:error] = "Something went wrong!"
			render :action => :edit
		end
	end

	def show
		@poll = Poll.find(params[:id])
		#@poll = Poll.includes(:answers).find_by_encrypted_link(params[:encrypted_link])
	end

	def destroy
		@poll = Poll.find(params[:id])
		@poll.destroy
		redirect_to :root, notice: 'Poll was successfully deleted.' 		
	end
end
