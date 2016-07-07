class MessageController < ApplicationController
  def show
    items = [nil, nil]

    if Worry.open.count >= 3
      items += Worry.open.has_no_advices.not_mine(signed_in_user.try(:id)).order('RANDOM()').limit(3).to_a
      items += Advice.open.has_no_replies.not_mine(signed_in_user.try(:id)).order('RANDOM()').limit(5).to_a
    end

    @message = Message.new(items.shuffle.first)
  end
end
