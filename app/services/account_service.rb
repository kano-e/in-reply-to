module AccountService
  module_function

  def authenticate(auth_hash)
    info = auth_info(auth_hash)
    account = Account.where(provider: info[:provider], uid: info[:uid])
    account.first_or_create do |i|
      i.credentials = info[:credentials]
    end
  end

  def auth_info(auth_hash)
    {
      provider: auth_hash['provider'],
      uid: auth_hash['uid'],
      credentials: auth_hash['credentials'],
    }
  end
end
