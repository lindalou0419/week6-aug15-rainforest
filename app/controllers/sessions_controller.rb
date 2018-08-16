class SessionsController < ApplicationController
  def new
  end

  def create
    u = User.find_by(email: params[:session][:email])

    if u && u.authenticate(params[:session][:password])
      flash[:notice] = 'Access granted!'
      redirect_to root_url
    else
      flash[:notice] = 'Email or password invalid'
      render :new
    end
  end

  def destory
  end
end
