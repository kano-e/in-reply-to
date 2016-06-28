class Message
  def initialize(item)
    @item = item
  end

  def detail
    @item ? @item.detail : 'What is worrying you?'
  end

  def reply
    case @item
    when Worry
      @item.advices.build
    when Advice
      @item.replies.build(worry: @item.worry)
    else
      Worry.new
    end
  end
end
