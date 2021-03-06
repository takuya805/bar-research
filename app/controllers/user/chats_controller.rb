class User::ChatsController < ApplicationController
  before_action :authenticate_user!
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

    @chats = @room.chats.reject do |chat| # rejectでchat_deleteが作成されてないchatを選択（偽であるものを集めて返す）
      chat.chat_deletes.find_by(user: current_user)
    end
    @chat = Chat.new(room_id: @room.id)
  end

  def create
    @chat = current_user.chats.new(chat_params)
    @chat.save
  end

  def exit
    @room = Room.find(params[:id])
    @chats = @room.chats
    @chats.each do |chat|
      chat.chat_deletes.find_or_create_by(user: current_user) # each文の中で作成されてないchatだけを選択して作成する
    end
    redirect_to chats_path, notice: "トーク履歴を削除しました"
  end

  def destroy
    chat = Chat.find(params[:id])
    chat.user_id = current_user.id
    chat.destroy
    redirect_to request.referer, notice: "メッセージの送信を取り消しました"
  end

  private

  def chat_params
    params.require(:chat).permit(:message, :room_id)
  end
end
