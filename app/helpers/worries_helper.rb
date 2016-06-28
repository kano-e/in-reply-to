module WorriesHelper
  def sort_advices(worry)
    worry.advices.to_a.each_with_object({}) do |advice, h|
      h[advice.in_reply_to_id] ||= []
      h[advice.in_reply_to_id] << advice
    end
  end
end
