class Reply
  attr_reader :message

  def initialize(item)
    @item = item
    @message = build_message
  end

  private

  def build_message
    case @item
    when Worry
      Message.new(nil)
    when Advice
      Message.new(@item.in_reply_to ? @item.in_reply_to : @item.worry)
    end
  end
end
