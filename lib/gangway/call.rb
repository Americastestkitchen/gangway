module Gangway
  module Call
    include Session

    def call(method, params)
      session.call(method, session_id)
    end

    def session
      @session ||= new_session
    end

    def session_id
      @session_id ||= session.call :login, message: {username: username, password: password}
    end
  end
end
