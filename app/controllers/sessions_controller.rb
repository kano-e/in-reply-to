class SessionsController < ApplicationController
  def create
    account = AccountService.authenticate(env['omniauth.auth'])
    sign_in(:user, account.user)
    redirect_to root_path
  end
end
