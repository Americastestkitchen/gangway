module Gangway
  module Session
    private

    def new_session(globals={})
      Savon.client(wsdl: globals[:wsdl])
    end
  end
end
