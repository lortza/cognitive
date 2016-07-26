class SessionsController < ApplicationController
  def new
  end #new

  def create
   if user = User.authenticate(params[:email], params[:password])
     session[:user_id] = user.id
     flash[:notice] = "Welcome back, #{user.name}!"
     redirect_to(session[:intended_url] || records_url)
     session[:intended_url] = nil
   else
    flash.now[:alert] = "Invalid email/password combination!"
    render :new
   end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: "You have been signed out."
  end #destroy


end
