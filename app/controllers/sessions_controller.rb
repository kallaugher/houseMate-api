class SessionsController < ApplicationController
  skip_before_action :authenticate

  def create
    # we had to change the line below, as there was no id in the params
    user = User.find_by(email: params[:email])
    if user.authenticate(params[:password])
      jwt = Auth.issue({user: user.id})
      render json: {jwt: jwt}
    else
    end
  end

  private

  def auth_params
    params.require(:auth).permit(:email, :password)
  end

end
