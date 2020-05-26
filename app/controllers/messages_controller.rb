class MessagesController < ApplicationController
  def create
    @chatroom = Chatroom.find params[:chatroom_id]
    @user = current_user
    @message = Message.new(strong_params)
    @message.user = @user
    @message.chatroom = @chatroom

    if @message.save
      redirect_to chatroom_path(@chatroom)
    else
      render 'chatrooms/show'
    end
  end

  private

  def strong_params
    params.require(:message).permit(:content)
  end
end
