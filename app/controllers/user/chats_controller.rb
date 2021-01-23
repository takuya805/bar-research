class User::ChatsController < ApplicationController
  def index
      @rooms = current_user.rooms
  end

  def show
    @user = User.find(params[:id])
    rooms = current_user.user_rooms.pluck(:room_id)
    user_rooms = UserRoom.find_by(user_id: @user, room_id: rooms)
    if user_rooms.nil?
      @room = Room.new
      @room.save
      UserRoom.create(user_id: @user.id, room_id: @room.id)
      UserRoom.create(user_id: current_user.id, room_id: @room.id)
    else
      @room = user_rooms.room
    end
    @chats = @room.chats
    @chat = Chat.new(room_id: @room.id)
  end

  def create
    @chat = current_user.chats.new(chat_params)
    @chat.save
  end

  def exit
    @room = Room.find(params[:id])
    @chats = @room.chats
    @chats.update_all(is_deleted: true)
    redirect_to chats_path
  end

  private
    def chat_params
      params.require(:chat).permit(:message, :room_id)
    end
end