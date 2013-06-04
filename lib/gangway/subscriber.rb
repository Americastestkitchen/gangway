require 'savon'

module Gangway
  class Subscriber
    extend Call

    def self.add(params)
      call(:add_subscriber)
    end

    def self.get(params)
      call(:get_subscriber)
    end

    def self.subscription_status(params)
      call(:get_subscription_status)
    end

    def self.change_email(params)
      call(:change_email)
    end
  end
end
