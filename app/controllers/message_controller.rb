class MessageController < ApplicationController
  def show
    item = nil

    if Worry.open.count > 5
      item = Worry.open.has_no_advices.take
      item ||= Advice.open.has_no_replies.take
    end

    @message = Message.new(item)
  end
end
