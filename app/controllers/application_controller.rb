class ApplicationController < ActionController::API
  # before_action :authorized
  # commment out to temporarily disable auth

  def issue_token(payload)
    JWT.encode(payload, 'ja2siDc3kJ')
  end 

  def auth_header
    request.headers['Authorization']
  end 

  def decoded_token
    if auth_header
      token = auth_header
      begin 
        JWT.decode(token, 'ja2siDc3kJ', true, algorithm: 'HS256')
      rescue JWT::DecodeError
        nil 
      end 
    end 
  end 

  def current_user 
    if decoded_token
      username = decoded_token[0]['username']
      @user = User.find_by(username: username)
    else
      nil
    end
  end 

  def logged_in?
    !!current_user
  end

  def authorized
    if !logged_in?
      render json: { message: 'Please log in' }, status: :unauthorized unless logged_in?
    end
  end
end
