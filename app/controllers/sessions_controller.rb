class SessionsController < ApplicationController
  def new
  end
<<<<<<< HEAD

  def create
    if params[:name] && !params[:name].empty?
      session[:name] = params[:name]
      redirect_to '/'
    else 
      redirect_to(controller: 'sessions', action: 'new')
    end 
  end 

  def destroy 
    session.delete :name
    redirect_to(controller: 'application', action: 'hello')
  end 
=======
  
  def create
    if params[:username]
      session[:name] = params[:username]
      redirect_to '/'
    else
      redirect_to '/new'
    end
  end
  
  def destroy
    if session[:name]
      session.delete :name
    end
  end
  
>>>>>>> 8cddf54e7c1567005258cec32cf5fefb7ea77b09
end
