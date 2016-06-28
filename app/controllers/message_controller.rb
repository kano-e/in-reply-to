class MessageController < ApplicationController
  def show
    item = nil

    if Worry.open.count > 5
      item = Worry.open.has_no_advices.order('RANDOM()').take
      item ||= Advice.open.has_no_replies.order('RANDOM()').take
    end

    @message = Message.new(item)
  end
end
