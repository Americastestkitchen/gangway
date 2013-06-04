require 'gangway/version'
require 'gangway/subscriber'
require 'gangway/session'

module Gangway
  def self.session(globals = {})
    Session.new(globals)
  end
end
