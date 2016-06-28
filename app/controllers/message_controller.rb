class MessageController < ApplicationController
  def show
    item = Worry.has_no_advices.take
    item ||= Advice.has_no_replies.take
    @message = Message.new(item)
  end
end
