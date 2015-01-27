class SessionsController < ApplicationController


def create
  a = params[:username]
  puts a
  b = params[:password]
  puts b

  user = User.authenticate(params[:username], params[:password])
  if user
 #session[:user_id] = user.id
      redirect_to logged_in_url
  else
    redirect_to invalid_url
  end
end


end
