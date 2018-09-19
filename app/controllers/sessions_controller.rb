class SessionsController < ApplicationController
  
  def new 
  end

  def show
  end  
  
  def create
     if params[:name] && !params[:name].empty?
      session[:name] = params[:name]
      redirect_to root_path
    else
      redirect_to '/login'
    end
  end
  
  def destroy
  session.delete :name
  
end
  
end