module Gangway
  class Subscriber
    extend Call

    def self.add(params)
      call(:add_subscriber, params)
    end

    def self.get(params)
      call(:get_subscriber, params)
    end

    def self.subscription_status(params)
      call(:get_subscription_status, params)
    end

    def self.change_email(params)
      call(:change_email, params)
    end
  end
end
