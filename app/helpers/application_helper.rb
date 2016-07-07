module ApplicationHelper
  def signed_in_user
    @signed_in_user ||= user_signed_in? ? User.find(current_user['id']) : nil
  end
end
