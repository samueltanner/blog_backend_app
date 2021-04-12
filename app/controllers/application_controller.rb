class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception, if: -> { request.format.html? }

  def current_user
    if request.headers["Authorization"].present?
      token = request.headers["Authorization"].split(" ").last
      begin
        decoded_token = JWT.decode(
          token,
          "random",
          true,
          { algorithm: "HS256" }
        )
        User.find_by(id: decoded_token[0]["user"])
      rescue JWT::ExpiredSignature
        nil
      end
    end
  end

  helper_method :current_user

  def authenticate_user
    unless current_user
      render json: {}, status: :unauthorized
    end
  end
end
