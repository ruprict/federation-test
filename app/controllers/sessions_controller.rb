class SessionsController < ApplicationController
  def create
    user = User.from_omniauth(env["omniauth.auth"])
    session[:user_id] = user.id
    puts env["omniauth.auth"].extra
    puts "****"
    puts env["omniauth.auth"].extra.id_token
    #get_aws_creds(env["omniauth.auth"].extra.id_token)
    redirect_to root_path
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end

  private 

  def get_aws_creds
    
  end
end
