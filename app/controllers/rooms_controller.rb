class RoomsController < ApplicationController

  def index
    @rooms = Room.all.order(:id)
  end

  def new
    @room = Room.new
  end

  def show
    @room = Room.find(params[:id])
    @messages = @room.messages.order(:created_at)
  end

  def create
    @room = Room.new(room_params)
    @room.save
    redirect_to @room
  end

  private
    def room_params
        params.require(:room).permit(:title , :detail)
    end
end
