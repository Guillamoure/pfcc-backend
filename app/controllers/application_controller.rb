class ApplicationController < ActionController::API

  def issue_token(payload)
    JWT.encode(payload, 'secret', 'HS256')
  end

  def token
    request.headers['Authenticate']
  end

  def decode_token
    begin
      JWT.decode(token, 'secret', true, { algorithm: 'HS256' }).first
    rescue JWT::DecodeError
      return nil
    end
  end

  def id_from_token
    decoded = decode_token

    if decoded
      decoded["id"]
    end
  end

  def current_user
    @user ||= User.find_by(id: id_from_token)
  end


end
