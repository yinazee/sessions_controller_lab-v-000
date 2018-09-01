class SessionsController < ApplicationController
  def new
  end

  def create
    return redirect_to login_path if params[:name].blank?
    session[:username] = params[:username]
    redirect_to '/'
  end
end
