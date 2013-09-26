require 'savon'

module Gangway
  module Session

    ENDPOINTS = {
      session: 'https://soap.ixs1.net/1/Session?wsdl',
      subscriber: 'https://soap.ixs1.net/1/Subscriber?wsdl'
    }

    private

    def new_session(wsdl)
      Savon.client(wsdl: ENDPOINTS[wsdl], ssl_verify_mode: :none)
    end
  end
end
