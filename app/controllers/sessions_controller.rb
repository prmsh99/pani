class SessionsController < ApplicationController
    def new
  end


  def create
    user = User.find_by(email: params[:session][:email].downcase)

      if user && user.authenticate(params[:session][:password])
        sign_in user
        flash[:notice] = "You have successfully ."
        redirect_to user, notice: "You have successfully ."
      else

        flash[:notice] = 'Invalid email/password combination'
        render 'new'
      end
  end


 def destroy
    sign_out
    redirect_to root_url
  end

end
