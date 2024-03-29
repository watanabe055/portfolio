class RoomsController < ApplicationController

  def index
    @q = Room.ransack(params[:q])
    @rooms = @q.result(distinct: true).order(id: "DESC").page(params[:page]).per(10)
  end

  def topic
    @random = Room.order("RAND()").limit(5)
  end

  def new
    @room = Room.new
  end

  def confirm
    @room = Room.new(room_params)
    render :new unless @room.valid?
  end

  def search
    @q = Room.ransack(params[:q])
    @rooms = @q.result(distinct: true).order(id: "DESC")
    @count = @rooms.count
  end

  def show
    @room = Room.find(params[:id])
    @messages = @room.messages.order(id: "DESC")
  end

  def create
     @room = Room.new(room_params)
     if params[:back]
       render :new
       return
     end

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
