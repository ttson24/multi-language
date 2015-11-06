class AdminController < ApplicationController
  
   
   def home
  	@blog=Blog.order(created_at: :desc).all 
  	#logger.info("+++++++++++++++++++++++++++++++++++++++++++hello from class method")
  end

  def about
  end

  def create
  	if (Blog.create(blog_params)) 
        flash[:success] = "Create question success!"
        redirect_to :root
      else
        flash[:error] = "Create question error!"
     end
  end
  def show
  	@blog = Blog.find(params[:id])
    @answer = @blog.answer.order(created_at: :desc) 

  end

  private 
  def blog_params
  	params.require(:blog).permit(:email, :body)  	
  end
end
