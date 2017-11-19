class IdeasController < ApplicationController
    def index3
    @ideas = Idea.all
  end

  def create    
      @idea = Idea.create(idea_params)
      if @idea.valid?
         flash[:success] = "Successfully created!"
      else
         flash[:alert] = "Woops! Looks like there has been an error!"
      end
      redirect_to index3_path
      end

	def edit 
		@idea = Idea.find(params[:id])
	end

  def update
    @idea = Idea.find(params[:id])
    if @idea.update(idea_params)
      flash[:success] = "Successfully updated!"
      redirect_to index3_path
    else
      flash[:alert] = "Woops! Looks like there has been an error!"
      redirect_to edit_idea_path(params[:id])
    end
  end

  def destroy
    @idea = Idea.find(params[:id])
    @idea.destroy
    flash[:success] = "The idea was successfully deleted!"
    redirect_to index3_path
  end
	
	private 
	def idea_params
		params.require(:idea).permit(:description,:name)
	end  
end
