require 'gangway/session'

module Gangway
  module Call
    include Session

    def call(method, params)
      res = session.call(method, message: {session_id: session_id}.merge(params))
      return Hash.from_xml(res.body.values.first[:out])
    end

    def session
      @session ||= new_session(:subscriber)
    end

    def session_id
      @last_update ||= Time.now
      if Time.now >= @last_update + 3600
        @last_update = Time.now
        @session_id = new_session_id
      else
        @session_id ||= new_session_id
      end
    end

    def new_session_id
      res = new_session(:session).call :login, message: {username: ENV['EWAY_USERNAME'], password: ENV['EWAY_PASSWORD']}
      res.body[:login_response][:out]
    end
  end
end
