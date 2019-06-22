class MessagesController < ApplicationController
  before_action :require_user

  def create
    message = current_user.messages.build(message_params)
    if message.save
      ActionCable.server.broadcast "chatroom_channel",
                                    mod_message: message_render(message)
    end
  end

  def destroy
    messages = Message.all
    if messages.destroy_all
      flash[:success] = "The conversation has reset"
      redirect_to root_path
    else
      flash[:danger] = "Sorry we were not able to reset the conversation, please try again"
      redirect_to root_path
    end
  end

  private

  def message_params
    params.require(:message).permit(:body)
  end

  def message_render(message)
    render(partial: 'message', locals: {message: message})
  end

end
