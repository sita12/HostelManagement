class ManagesController < ApplicationController
    def index
        @manages = Manage.all
    end  

      def create    
      @manage = Manage.create(manage_params)
      if @manage.valid?
         flash[:success] = "Your manage has been posted!"
      else
         flash[:alert] = "Woops! Looks like there has been an error!"
      end
      redirect_to root_path
      end

	def edit 
		@manage = Manage.find(params[:id])
	end

  def update
    @manage = Manage.find(params[:id])
    if @manage.update(manage_params)
      flash[:success] = "The manage has been updated!"
      redirect_to root_path
    else
      flash[:alert] = "Woops! Looks like there has been an error!"
      redirect_to edit_manage_path(params[:id])
    end
  end

  def destroy
    @manage = Manage.find(params[:id])
    @manage.destroy
    flash[:success] = "The manage was successfully deleted!"
    redirect_to root_path
  end
	
	private 
	def manage_params
		params.require(:manage).permit(:name,:room,:location,:phone, :date)
	end    
end
