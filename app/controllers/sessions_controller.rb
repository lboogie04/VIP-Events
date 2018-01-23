class SessionsController < ApplicationController
 
 def new
 end
 
 def create
  user = User.find_by(name: params[:session][:name])
  if user 
   session[:user_id] = user.id
   flash[:info] = "Sign in successful"
   redirect_to root_url
  else 
   flash[:info] = "Something went wrong"
   render 'new'
  end 
 end
 
 def destroy
  session.delete(:user_id)
  @current_user = nil
  redirect_to root_url
 end
 
 
end
