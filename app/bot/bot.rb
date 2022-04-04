
require 'facebook/messenger'
include Facebook::Messenger

def subscribe(access_token:, subscription_fields: [])



Facebook::Messenger::Bot.on :message do |message|
  message.reply(text: 'Hello, human!')
end