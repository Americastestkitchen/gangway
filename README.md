# Gangway

## Usage example

```` ruby
require 'gangway'

# add a user
Gangway::Subscriber.add({email: 'test@user.com',
                         subscriber_data: {first_name: 'Test', last_name: 'User'}, handler_id: 1})

# get subscriber data
Gangway::Subscriber.get({email: 'test@user.com'})

# get subscription status
Gangway::Subscriber.subscription_status({email: 'test@user.com'})

# change user's email
Gangway::Subscriber.change_email({old_email: 'old@user.com', new_email: 'new@user.com'})
````
