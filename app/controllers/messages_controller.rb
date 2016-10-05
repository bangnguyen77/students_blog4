class MessagesController < ApplicationController

  def new
    @message = Message.new
  end

  def create

    @message = Message.new(message_params)
    if @message.save
      flash[:notice] = "Your message was sent"
      respond_to do |format|
        format.html { redirect_to post_path(@post) }
        format.js
      end
    else
      flash[:alert] = "Oops, something went wrong!"
      format.html { redirect_to post_path(@post) }
      format.js
    end
  end

  private

  def message_params
    params.require(:message).permit(:body, :to)
  end

end
