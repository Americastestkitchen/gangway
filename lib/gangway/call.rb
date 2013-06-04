require 'gangway/session'

module Gangway
  module Call
    include Session

    def call(method, params)
      session.call(method, message: {session_id: session_id}.merge(params))
    end

    def session
      @session ||= new_session(:subscriber)
    end

    def session_id
      @session_id ||= new_session_id
    end

    def new_session_id
      res = new_session(:session).call :login, message: {username: ENV[:eway_username], password: ENV[:eway_password]}
      res.body[:login_response][:out]
    end
  end
end
