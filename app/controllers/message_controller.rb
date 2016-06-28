class MessageController < ApplicationController
  def show
    item = Worry.take
    @message = Message.new(item)
  end
end
