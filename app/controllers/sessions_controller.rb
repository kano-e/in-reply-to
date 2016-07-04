class SessionsController < ApplicationController
  def create
    account = AccountService.authenticate(env['omniauth.auth'])
    render json: account.errors
  end
end
