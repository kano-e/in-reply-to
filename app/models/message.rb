class Message
  def initialize(item)
    @item = item
  end

  def detail
    @item ? @item.detail : I18n.t('what_is_worring_you')
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
