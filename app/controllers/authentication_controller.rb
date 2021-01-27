class AuthenticationController < ApplicationController
  def login
    user = User.find_by(cpf: params[:user][:cpf])
    user = user&.authenticate(params[:user][:password])
    if user
      token = JsonWebToken.encode(user_id: user.id)
      render json: {token: token}
    
    else
      render json: {message: "CPF ou senha incorreta"}, status: 401
    end
  end
end
