class AnswersController < ApplicationController
	def create
		blog = Blog.find(params[:answer][:blog_id])
		if (blog.answer.create(answer_param) )
			flash[:success] = "Create answer success!"
			redirect_to :back
		else 
			flash[:error] = "Create answer error!"
		end
	end
	def index
		@answer = Answer.order(created_at: :desc).all
	end
	private 
	def answer_param
		params.require(:answer).permit(:blog_id, :email, :body)
	end
end
