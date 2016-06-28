class MessageController < ApplicationController
  def show
    item = Worry.open.has_no_advices.take
    item ||= Advice.open.has_no_replies.take
    @message = Message.new(item)
  end
end
