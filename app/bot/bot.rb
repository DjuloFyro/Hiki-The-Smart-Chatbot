
require 'facebook/messenger'
include Facebook::Messenger

Subscriptions.subscribe(access_token: ENV["ACCESS_TOKEN"])

Facebook::Messenger::Bot.on :message do |message|
  message.reply(text: 'Hello, human!')
end