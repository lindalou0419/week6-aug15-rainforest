class SessionsController < ApplicationController
  def new
  end

  def create
    u = User.find_by(email: params[:session][:email])

    if u && u.authenticate(params[:session][:password])
      # put on the wristband with the magic hash
      session[:user_id] = u.id

      flash[:notice] = 'Access granted!'
      redirect_to root_url
    else
      flash[:notice] = 'Email or password invalid'
      render :new
    end
  end

  def destroy
    # cut the wristband
    session[:user_id] = nil

    # optional flash

    # redirect to home page
    redirect_to root_url
  end
end
