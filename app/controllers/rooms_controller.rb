class RoomsController < ApplicationController

  def index
    @room = Room.all
    @q = Room.ransack(params[:q])
    @rooms = @q.result(distinct: true)
  end

  def new
    @room = Room.new
  end

  def show
    @room = Room.find(params[:id])
    @messages = @room.messages.order(id: "DESC")
  end

  def create
     @room = Room.new(room_params)
     if @room.save
      redirect_to @room
    else
      flash.now[:notice] = "入力が正しくありません"
      render "rooms/new"
    end
  end

  private
    def room_params
        params.require(:room).permit(:title , :detail, :category)
    end
end
