class RoomsController < ApplicationController
   
    def index2
        @rooms = Room.all
    end  

    

      def create    
      @room = Room.create(room_params)
      if @room.valid?
         flash[:success] = "Successfully Created!"
      else
         flash[:alert] = "Woops! Looks like there has been an error!"
      end
      redirect_to index2_path
      end

	def edit 
		@room = Room.find(params[:id])
	end

  def update
    @room = Room.find(params[:id])
    if @room.update(room_params)
      flash[:success] = "Successfully updated!"
      redirect_to index2_path
    else
      flash[:alert] = "Woops! Looks like there has been an error!"
      redirect_to edit_room_path(params[:id])
    end
  end

  def destroy
    @room = Room.find(params[:id])
    @room.destroy
    flash[:success] = " Successfully deleted!"
    redirect_to index2_path
  end
	
	private 
	def room_params
		params.require(:room).permit(:symbol,:number,:price,:sitter)
	end    
end
